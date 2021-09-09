#!/bin/bash
file="jQueryExtern-$(jq -r '.version' haxelib.json).zip"
zip -FSr "$file" js haxelib.json extraParams.hxml README.md
