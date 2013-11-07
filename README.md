# jQueryExtern [![Build Status](https://travis-ci.org/andyli/jQueryExternForHaxe.png?branch=master)](https://travis-ci.org/andyli/jQueryExternForHaxe)

[jQuery](http://jquery.com/) extern for [Haxe](http://haxe.org/).

Currently supports jQuery version up to *1.10.2* / *2.0.3*. Requires Haxe 3.0+.

You may check my [blog](http://blog.onthewings.net/) for updates.

## Download and Install

Install via [haxelib](http://haxe.org/doc/haxelib/using_haxelib):
`haxelib install jQueryExtern`

Then put `-lib jQueryExtern` into your hxml.

##Usage

Typically:
```haxe
import jQuery.*;
 
class Main {
	static public function main():Void {
		new JQuery(function():Void { //when document is ready
			//your magic
		});
	}
}
```
It is same as how you use jQuery in JS. But instead of `$`, you refer jQuery as `JQuery`.

eg. Hiding all *li* object:
```
new JQuery("li").hide(); //same as $("li").hide() in JS
```

Static methods of jQuery can be accessed from `JQuery._static`.

eg. A ajax example:
```
JQuery._static.get("ajax/test.html", function(data) {
	js.Lib.alert(data);
});
```
Remember **jQueryExtern** is simply an extern, you have to link jQuery in your html file.

eg. In your `<head>`:
```html
<!-- jQuery from Google CDN -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<!-- Your haxe compiled script: -->
<script type="text/javascript" src="Main.js"></script>
```

## *js.JQuery* in haxe std lib VS *jQueryExtern*

<table>
	<tr>
		<td></td>
		<th scope="col">js.JQuery</th>
		<th scope="col">jQueryExtern</th>
	</tr>
	<tr>
		<th scope="row">import statement</th>
		<td>"import js.JQuery;"</td>
		<td>"import jQuery.*;"</td>
	</tr>
	<tr>
		<th scope="row">jQuery API version</th>
		<td>partial 1.6.4</td>
		<td>complete 1.10.2 / 2.0.3</td>
	</tr>
	<tr>
		<th scope="row">refer jQuery in output as</th>
		<td>"js.JQuery"</td>
		<td>"$" (or "jQuery" if <i>--macro jQuery.haxe.Config.setNative('jQuery')</i>)</td>
	</tr>
	<tr>
		<th scope="row">include jQuery in output</th>
		<td>no (can be opt-in by -D embed-js)</td>
		<td>no, <a href="http://stackoverflow.com/questions/2180391/why-should-i-use-googles-cdn-for-jquery" target="_blank">use CDN instead</a></td>
	</tr>
</table>

## License

jQueryExtern is released in the public domain. NO WARRANTY EXPRESSED OR IMPLIED. USE AT YOUR OWN RISK.

jQuery's license can be found at http://jquery.org/license.
