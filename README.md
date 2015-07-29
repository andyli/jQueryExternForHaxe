# NOTICE

This version of jQuery extern requires Haxe 3.3+. Users of Haxe 3.2.0- should checkout [jQueryExtern 2.0.4](https://github.com/andyli/jQueryExternForHaxe/tree/2.0.4).

------------------------

# jQueryExtern [![Build Status](https://travis-ci.org/andyli/jQueryExternForHaxe.svg?branch=master)](https://travis-ci.org/andyli/jQueryExternForHaxe)

jQueryExtern unleash the full power of [jQuery](http://jquery.com/) in [Haxe](http://haxe.org/). Currently supports jQuery version up to *1.11.3* / *2.1.4*.

The jQuery extern in Haxe std lib (the **old std extern**, in Haxe 3.2 and earlier) is incomplete and outdated (1.6.4). Haxe 3.3 will introduce a [new set of extern files](https://github.com/HaxeFoundation/haxe/issues/4377) (the **new std extern**), which is complete and updated to 1.11.3 / 2.1.4. Both the old and the new std externs provide a simple standard way of using jQuery, without any additional dependency. This library, jQueryExtern, is a drop-in replacement of the std extern. It utilizes build macros to provide advanced control over the extern for all the special needs.

jQueryExtern allows us to:
 * use a jQuery version other than the one supported in Haxe std lib (see [Version Selection](#version-selection))
 * change how jQuery is referenced in output (see [Changing Native Reference](#changing-native-reference))
 * create jQuery plugin externs (see [Plugin System](#plugin-system))

## Download and Install

Install via [haxelib](http://haxe.org/doc/haxelib/using_haxelib):
```
haxelib install jQueryExtern
```

Then add `-lib jQueryExtern` in our hxml.

## Usages

### Version Selection

By default, jQueryExtern provides API same as the one supported by the std extern. It means that using jQueryExtern will not change the default jQuery version. The default jQuery is *1.6.4* in Haxe 3.2 and earlier. Since Haxe 3.3, the default version is set in compiler define `jquery-ver`. You may check the value of `jquery-ver` using [`haxe.macro.Compiler.getDefine`](http://api.haxe.org/haxe/macro/Compiler.html#getDefine). The version is encoded as an interger. e.g. 1.11.3 is encoded as 11103.

jQueryExtern allows changing the supported jQuery version using `js.jquery.haxe.Config.setVersion`. It can be called in a hxml file like this:
```
--macro js.jquery.haxe.Config.setVersion('1.8.3')
```
The function will also set `jquery-ver` to the corresponding integer value automatically.

### Changing Native Reference

jQuery in the JS output is referred as `$`, which is an alise of `jQuery`. Some JS libs, eg. [PrototypeJS](http://prototypejs.org/) also use the `$` variable, so we may want to refer jQuery by its original name instead.

To do so, add the following compiler option:
```
--macro js.jquery.haxe.Config.setNative('jQuery')
```
Under the surface, it changes the metadata on the JQuery classes from `@:native("$")` to `@:native("jQuery")`.

### Plugin System

jQueryExtern introduces the `js.jquery.haxe.Plugin` class to ease the process of writing jQuery plugin extern. It is macro-based, responsible for injecting additional fields to the `JQuery` extern class.

To write a jQuery plugin extern, create an extern class that implements `js.jquery.haxe.Plugin`, and start writing the members **as if writing directly inside the `JQuery` extern class**. e.g.:

```haxe
package jPlugin;
extern class JQueryPlugIn implements js.jquery.haxe.Plugin {
    public function myMethod(arg:Dynamic):js.jquery.JQuery;
    static public function myStaticMethod(arg:Dynamic):Void;
}
```

To use it, add the following compiler option:
```
--macro js.jquery.haxe.Config.addPlugin('jPlugin.JQueryPlugIn')
```

## License

jQueryExtern is released in the public domain. NO WARRANTY EXPRESSED OR IMPLIED. USE AT YOUR OWN RISK.

jQuery's license can be found at http://jquery.org/license.
