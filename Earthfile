VERSION 0.6
ARG UBUNTU_RELEASE=bionic
FROM mcr.microsoft.com/vscode/devcontainers/base:0-$UBUNTU_RELEASE
ARG DEVCONTAINER_IMAGE_NAME_DEFAULT=ghcr.io/andyli/jqueryexternforhaxe_devcontainer

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

ARG WORKDIR=/workspace
RUN mkdir -m 777 "$WORKDIR"
WORKDIR "$WORKDIR"

ARG HAXE_VERSION=4.2

ARG --required TARGETARCH

ghcr-login:
    LOCALLY
    RUN echo "$GITHUB_CR_PAT" | docker login ghcr.io -u "$GITHUB_USERNAME" --password-stdin

devcontainer-library-scripts:
    RUN curl -fsSLO https://raw.githubusercontent.com/microsoft/vscode-dev-containers/main/script-library/common-debian.sh
    RUN curl -fsSLO https://raw.githubusercontent.com/microsoft/vscode-dev-containers/main/script-library/docker-debian.sh
    SAVE ARTIFACT --keep-ts *.sh AS LOCAL .devcontainer/library-scripts/

# Usage:
# COPY +earthly/earthly /usr/local/bin/
# RUN earthly bootstrap --no-buildkit --with-autocomplete
earthly:
    RUN curl -fsSL https://github.com/earthly/earthly/releases/download/v0.6.4/earthly-linux-${TARGETARCH} -o /usr/local/bin/earthly \
        && chmod +x /usr/local/bin/earthly
    SAVE ARTIFACT /usr/local/bin/earthly

haxelibs:
    FROM haxe:$HAXE_VERSION
    WORKDIR "$WORKDIR"
    RUN haxelib newrepo
    RUN haxelib install hxnodejs
    RUN haxelib install phantomjs
    RUN haxelib install utest 1.8.1
    RUN haxelib install mcli
    RUN haxelib dev jQueryExtern .
    SAVE ARTIFACT .haxelib

devcontainer:
    # Avoid warnings by switching to noninteractive
    ENV DEBIAN_FRONTEND=noninteractive

    ARG INSTALL_ZSH="false"
    ARG UPGRADE_PACKAGES="true"
    ARG ENABLE_NONROOT_DOCKER="true"
    ARG USE_MOBY="false"
    COPY .devcontainer/library-scripts/common-debian.sh .devcontainer/library-scripts/docker-debian.sh /tmp/library-scripts/
    RUN apt-get update \
        && /bin/bash /tmp/library-scripts/common-debian.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" "true" "true" \
        && /bin/bash /tmp/library-scripts/docker-debian.sh "${ENABLE_NONROOT_DOCKER}" "/var/run/docker-host.sock" "/var/run/docker.sock" "${USERNAME}" "${USE_MOBY}" \
        # Clean up
        && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts/

    # Setting the ENTRYPOINT to docker-init.sh will configure non-root access 
    # to the Docker socket. The script will also execute CMD as needed.
    ENTRYPOINT [ "/usr/local/share/docker-init.sh" ]
    CMD [ "sleep", "infinity" ]

    # Configure apt and install packages
    RUN apt-get update \
        && apt-get install -qqy --no-install-recommends apt-utils dialog 2>&1 \
        && apt-get install -qqy --no-install-recommends \
            iproute2 \
            procps \
            sudo \
            bash-completion \
            build-essential \
            cmake \
            curl \
            wget \
            software-properties-common \
            direnv \
            tzdata \
            # install docker engine for using `WITH DOCKER`
            docker-ce \
        # install haxe
        && add-apt-repository ppa:haxe/haxe$HAXE_VERSION \
        && apt-get install -qqy --no-install-recommends neko neko-dev haxe=1:$HAXE_VERSION.* \
        # install a recent git
        && add-apt-repository ppa:git-core/ppa \
        && apt-get install -qqy --no-install-recommends git \
        #
        # Clean up
        && apt-get autoremove -y \
        && apt-get clean -y \
        && rm -rf /var/lib/apt/lists/*

    # Switch back to dialog for any ad-hoc use of apt-get
    ENV DEBIAN_FRONTEND=

    # Install earthly
    COPY +earthly/earthly /usr/local/bin/
    RUN earthly bootstrap --no-buildkit --with-autocomplete

    USER $USERNAME

    # Config direnv
    COPY --chown=$USER_UID:$USER_GID .devcontainer/direnv.toml /home/$USERNAME/.config/direnv/config.toml

    # install haxelibs
    COPY --chown=$USER_UID:$USER_GID +haxelibs/.haxelib .haxelib
    VOLUME "$WORKDIR/.haxelib"

    # Config bash
    RUN echo 'eval "$(direnv hook bash)"' >> ~/.bashrc

    USER root

    ARG GIT_SHA
    ENV GIT_SHA="$GIT_SHA"
    ARG IMAGE_NAME="$DEVCONTAINER_IMAGE_NAME_DEFAULT"
    ARG IMAGE_TAG="master"
    ARG IMAGE_CACHE="$IMAGE_NAME:$IMAGE_TAG"
    SAVE IMAGE --cache-from="$IMAGE_CACHE" --push "$IMAGE_NAME:$IMAGE_TAG"

api-xml:
    RUN curl -fsSLO https://api.jquery.com/resources/api.xml
    SAVE ARTIFACT --keep-ts api.xml AS LOCAL ./api.xml

extern-generator:
    FROM haxe:3.4

    # install haxelibs
    COPY --chown=$USER_UID:$USER_GID +haxelibs/.haxelib .haxelib
    VOLUME "$WORKDIR/.haxelib"

    # copy sources
    COPY js js
    COPY generate.hxml .

    RUN haxe generate.hxml
    SAVE ARTIFACT ExternGenerator.n

generate-extern:
    FROM +devcontainer
    COPY +extern-generator/ExternGenerator.n ExternGenerator.n
    COPY api.xml .
    RUN neko ExternGenerator.n --api-xml api.xml --output-folder out --pack js.jquery --native '$' --use-element --use-haxe-either --use-haxe-rest --no-seperated-static --no-rename-static-field --add-haxe-iterator
    SAVE ARTIFACT --keep-ts out/js/jquery/*.hx AS LOCAL ./js/jquery/

node-modules:
    FROM node:16
    WORKDIR "$WORKDIR"
    COPY package.json package-lock.json .
    RUN npm i
    SAVE ARTIFACT node_modules

test-runner:
    ARG HAXE_VERSION=4.2
    FROM haxe:$HAXE_VERSION
    WORKDIR "$WORKDIR"
    COPY --chown=$USER_UID:$USER_GID +haxelibs/.haxelib .haxelib
    COPY js js
    COPY test test
    COPY test.hxml extraParams.hxml .
    RUN haxe test.hxml -lib hxnodejs
    SAVE ARTIFACT test/bin/Test.js

test:
    FROM node:16
    WORKDIR "$WORKDIR"
    ARG HAXE_VERSION=4.2
    COPY +node-modules/node_modules node_modules
    COPY test/bin/test.html test/bin/test.html
    COPY --build-arg HAXE_VERSION="$HAXE_VERSION" +test-runner/Test.js test/bin/Test.js
    RUN node test/bin/Test.js

test-all:
    BUILD +test \
        --HAXE_VERSION=4.2 \
        --HAXE_VERSION=4.1 \
        --HAXE_VERSION=4.0 \
        --HAXE_VERSION=3.4

package:
    COPY js js
    COPY haxelib.json extraParams.hxml README.md .
    RUN zip -FSr "jQueryExtern-$(jq -r '.version' haxelib.json).zip" js haxelib.json extraParams.hxml README.md
    SAVE ARTIFACT --keep-ts "jQueryExtern-*.zip" AS LOCAL .
