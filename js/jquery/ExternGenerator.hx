package js.jquery;

import sys.*;
import sys.io.*;
import haxe.xml.*;
import haxe.macro.*;
import haxe.macro.Expr;
import mcli.*;
import haxe.ds.*;
using haxe.macro.ComplexTypeTools;
using StringTools;
using Lambda;
using Reflect;

@:noPackageRestrict
typedef FuncConfig = { ?doc:String, ?added:String, ?deprecated:String, ?removed:String }

#if (haxe_ver >= 4)
typedef Fast = haxe.xml.Access
#end

/**
	Generates extern classes.
*/
@:noPackageRestrict
class ExternGenerator #if (mcli && !macro) extends CommandLine #end {
	/**
		Haxe keywords. Used to rename api function/variables names.
	**/
	static var keywords(default, null) = ["function", "true", "false", "if", "else", "switch", "class", "interface"];

	/**
		The package that stores the output classes.
	*/
	public var pack(default, null):String = "jQuery";

	/**
		The path to api.xml.
		You can get the latest one from https://api.jquery.com/resources/api.xml.
	*/
	public var apiXml(default, null):String = "api.xml";

	/**
		The output folder.
	*/
	public var outputFolder(default, null):String = ".";

	/**
		The value of @:native.
	*/
	public var native(default, null):String = "$";

	/**
		Whether allow the use of build macros for advanced config.
	*/
	public var noBuild(default, null):Bool = false;

	/**
		Use `js.html.Element` or `js.html.Node` as type param constraint.
	*/
	public var useElement(default, null):Bool = false;

	/**
		Use `haxe.extern.EitherType`.
	*/
	public var useHaxeEither(default, null):Bool = false;

	/**
		Use `haxe.extern.Rest`.
	*/
	public var useHaxeRest(default, null):Bool = false;

	/**
		Put all fields, including the static ones, into a single JQuery class.
	*/
	public var noSeperatedStatic(default, null):Bool = false;

	/**
		Rename field names that are shared between static/instance.
	*/
	public var noRenameStaticField(default, null):Bool = false;

	/**
		Add haxe iterator.
	*/
	public var addHaxeIterator(default, null):Bool = false;

	/**
		https://api.jquery.com/category/events/event-object/
		https://github.com/jquery/jquery/blob/master/src/event.js
		https://github.com/jquery/api.jquery.com/blob/master/categories.xml#L146
	*/
	var coreEventFields(default, never):Array<{
		name:String,
		type:ComplexType,
		kind:haxe.macro.Type.FieldKind,
		doc:Null<String>,
	}> = []
		.concat(getFields("js.html.Event"))
		.concat(getFields("js.html.UIEvent"))
		.concat(getFields("js.html.KeyboardEvent"))
		.concat(getFields("js.html.MouseEvent"))
	;
	var copiedEventFields(default, never):Array<String> = "altKey, bubbles, button, buttons, cancelable, char, charCode, clientX, clientY, ctrlKey, currentTarget, data, detail, eventPhase, key, keyCode, metaKey, offsetX, offsetY, originalTarget, pageX, pageY, relatedTarget, screenX, screenY, shiftKey, target, toElement, view, which".split(", ");

	var api:Fast;

	function eitherTypes(e:ComplexType):Map<String,ComplexType> {
		var ePath = if (useHaxeEither) {
			{
				pack: ["haxe", "extern"],
				name: "EitherType"
			};
		} else {
			{
				pack: pack.split(".").concat(["haxe"]),
				name: "Either"
			};
		}
		return switch (e) {
			case TPath(tp) if (tp.pack.join(".") == ePath.pack.join(".") && tp.name == ePath.name):
				var m = new Map<String,ComplexType>();
				for (p in tp.params) switch (p) {
					case TPType(t):
						var ts = eitherTypes(t);
						for (k in ts.keys())
							m[k] = ts[k];
					case _: throw "should be TPType";
				};
				m;
			case _: [e.toString() => e];
		}
	}

	function either(types:Array<ComplexType>):ComplexType {
		var typeMap = types.map(eitherTypes).fold(function(m:Map<String,ComplexType>, all:Map<String,ComplexType>) {
			for (k in m.keys())
				all[k] = m[k];
			return all;
		}, new Map());
		if (typeMap.exists("Dynamic"))
			typeMap = ["Dynamic" => macro:Dynamic];
		types = [for (t in typeMap) t];
		types.sort(compareComplexType);

		function _either(types:Array<ComplexType>):ComplexType {
			return switch (types.length) {
				case 0: 
					throw types;
				case 1: 
					types[0];
				case len:
					if (useHaxeEither) {
						TPath({
							pack: ["haxe", "extern"],
							name: "EitherType",
							params: [TPType(types[0]), TPType(either(types.slice(1)))]
						});
					} else {
						TPath({
							pack: pack.split(".").concat(["haxe"]),
							name: "Either",
							params: [TPType(types[0]), TPType(either(types.slice(1)))]
						});
					}
			}
		}
		return _either(types);
	}

	function jqType(name:String, ?params:Array<TypeParam>):ComplexType {
		return TPath({
	 		pack: pack.split("."),
			name: name,
			params: params
		});
	}

	function rest(type:ComplexType):ComplexType {
		return if (useHaxeRest)
			TPath({
		 		pack: ["haxe", "extern"],
				name: "Rest",
				params: [TPType(type)]
			});
		else
			TPath({
		 		pack: pack.split(".").concat(["haxe"]),
				name: "Rest",
				params: [TPType(type)]
			});
	}

	var element(get, never):ComplexType;
	function get_element():ComplexType {
		return if (useElement) {
			macro:js.html.Element;
		} else {
			macro:js.html.Node;
		}
	}

	function toFunctionComplexType(tag:Fast):ComplexType {
		var args = [for (a in tag.nodes.argument) either(toComplexType(a.att.type, a))];
		var rets = if (tag.hasNode.resolve("return")) {
			var retNode = tag.node.resolve("return");
			if (retNode.has.type)
				toComplexType(retNode.att.type)
			else if (retNode.hasNode.type)
				[
					for (c in retNode.nodes.type.fold(
						function(t, map:Map<ComplexType,Bool>) {
							for (c in toComplexType(t.att.name))
								map[c] = true;
							return map;
						},
						new Map<ComplexType,Bool>()
					).keys())
						c
				];
			else
				throw "no type for return?";
		} else null;

		var ct = if (rets == null && args.length == 0)
			macro:haxe.Constraints.Function
		else {
			TFunction(
				args, 
				either(rets == null ? [macro:Void] : rets)
			);
		}

		switch (ct) {
			case TFunction(args, ret):
				var lastArg = args[args.length-1];
				switch (lastArg) {
					case null:
						//pass
				 	case TPath({
				 		pack: p,
				 		name: "Rest",
				 		params: [restType]
				 	}) if (p.join(".") == '${pack}.haxe'):
				 		ct = either([
				 			TFunction(args.slice(0, args.length-1), ret),
				 			ct,
				 		]);
				 	case _:
				 		//pass
				}
			case macro:haxe.Constraints.Function:
				//pass
			case _:
				throw "unknown function type";
		}

		if (tag.att.name.toLowerCase().endsWith("callbacks")){
			ct = either([ct, macro:Array<$ct>]);
		}

		return ct;
	}

	/**
		Find the entry node, recurse to the parent.
	*/
	static function getEntryName(tag:Xml):String {
		return switch (tag.nodeName) {
			case "entry": tag.get("name");
			case _: getEntryName(tag.parent);
		}
	}
	
	/**
		Maps a type in api.xml to one or more Haxe ComplexType.
		tag is the xml node where the type is listed.
	**/
	function toComplexType(type:String, ?tag:Fast, ?inRest = false):Array<ComplexType> {
		var tagName = tag == null ? "" : tag.att.name;
		var entryName = tag == null ? "" : getEntryName(tag.x);
		if (type != null) type = type.trim();

		if (!inRest && tag != null && tag.has.rest && tag.att.rest == "true") {
			return toComplexType(type, tag, true)
				.map(rest);
		}
		
		var simple = type == null ? [macro:Dynamic] : switch(type) {
			case "jQueryStatic":
				[jqType("JQueryStatic")];
			case "jQuery", "jQuery object":
				[jqType("JQuery")];
			case "event", "Event":
				[jqType("Event")];
			case "callbacks", "Callbacks":
				[jqType("Callbacks")];
			case "Promise":
				[jqType("Promise")];
			case "Thenable":
				[macro:js.jquery.Thenable<Dynamic>];
			case "jqXHR":
				[jqType("JqXHR")];
			case "Selector", "selector":
				[macro:String];
			case "htmlString", "HTML":
				[macro:String];
			case "document", "XMLDocument":
				[macro:js.html.Document];
			case "Element":
				[element];
			/*case "Elements":
				[macro:Array<$element>];*/

			case "Error":
				[macro:js.jquery.Error];
			
			case "Boolean", "boolean":
				[macro:Bool];
			case "Number":
				[macro:Float];
			case "Integer":
				[macro:Int];
			case "String" | "Text":
				[macro:String];
			case "Anything":
				[macro:Dynamic];
			case ("Object" | "PlainObject") if (!["offset", "position"].has(entryName) && !["jQuery object"].has(tagName)):
				[macro:Dynamic]; //should be {}, but jQuery doc uses "Object" for "Anything" :(
			case "ArrayLikeObject":
				[macro:Array<Dynamic>, macro:js.html.NodeList];
			case "undefined", "": 
				[macro:Void];

			case "Function":
				[toFunctionComplexType(tag)];

			case "Null":
				[];
			
			case _ if (type.indexOf(",") >= 0):
				//older version of api.xml sometimes use , to list multiple types...
				trace(type);
				type.split(",")
					.map(toComplexType.bind(_, tag))
					.fold(function(ts,all:Array<ComplexType>) return all.concat(ts), []);
				
			default:
				null;
		}
		
		return simple != null ? simple : switch ([entryName, tagName, type]) {
			case ["jQuery.globalEval", "doc", "Document"]:
				[macro:js.html.Document];
			case ["jQuery.each", "array", "Array"]:
				[macro:Array<Dynamic>];
			case ["jQuery.parseHTML", "jQuery.parseHTML", "Array"]:
				[macro:Array<$element>];
			case ["jQuery.parseJSON", "jQuery.parseJSON", "Array"]:
				[macro:Array<Dynamic>];
			case ["add", "elements", "Elements"]:
				[element, macro:js.html.NodeList];
			case ["addClass" | "removeClass" | "toggleClass", "classNames", "Array"]:
				[macro:Array<String>];
			case ["appendTo" | "insertBefore" | "replaceAll" | "prependTo" | "insertAfter", "target", "Array"]:
				[macro:Array<$element>];
			case ["css", "propertyNames", "Array"]:
				[macro:Array<String>];
			case ["jQuery.queue", "jQuery.queue" | "newQueue", "Array"]:
				[macro:Array<Void->Void>];
			case ["queue", "queue" | "newQueue", "Array"]:
				[macro:Array<Void->Void>];
			case ["serializeArray", "serializeArray", "Array"]:
				[macro:Array<Dynamic>];
			case ["triggerHandler", "extraParameters", "Array"]:
				[macro:Array<Dynamic>];
			case ["replaceWith", "newContent", "Array"]:
				[macro:Array<$element>];
			case ["pushStack", "elements", "Array"]:
				[macro:Array<$element>, macro:js.html.NodeList];
			case ["pushStack", "arguments", "Array"]:
				[macro:Array<Dynamic>];
			case ["not", "selector", "Array"]:
				[macro:Array<$element>];
			case ["val", "value", "Array"]:
				[macro:Array<String>];
			case ["val", "val", "Array"]:
				[macro:Array<Dynamic>];
			case ["closest", "selectors", "Array"]:
				[macro:String, macro:Array<String>, jqType("JQuery")];
			case ["closest", "closest", "Array"]:
				[macro:Array<Dynamic>];
			case ["jQuery", "elementArray", "Array"]:
				[macro:js.html.NodeList, macro:Array<$element>];
			case ["jQuery", "ownerDocument", "Document"]:
				[macro:js.html.Document];
			case ["toArray", "toArray", "Array"]:
				[macro:Array<$element>];
			case ["jQuery.inArray", "array", "Array"]:
				[macro:Array<Dynamic>];
			case ["jQuery.makeArray", "jQuery.makeArray", "Array"]:
				[macro:Array<Dynamic>];
			case ["jQuery.map", "jQuery.map", "Array"]:
				[macro:Array<Dynamic>];
			case ["jQuery.map", "array", "Array"]:
				[macro:Array<Dynamic>];
			case ["jQuery.map", "arrayOrObject", "Array"]:
				[macro:Array<Dynamic>, macro:{}];
			case ["jQuery.grep", _, "Array"]:
				[macro:Array<Dynamic>];
			case ["jQuery.merge", _, "Array"]:
				[macro:Array<Dynamic>];
			case ["trigger", "extraParameters", "Array"]:
				[macro:Array<Dynamic>];
			case ["removeData", "list", "Array"]:
				[macro:Array<String>];
			case ["jQuery.param", "obj", "Array"]:
				[macro:Array<Dynamic>];
			
			case ["callbacks.add"|"callbacks.remove", "callbacks", "Array"]:
				[];
			
			case [_, "content", "Array"]:
				var jq = jqType("JQuery");
				[macro:Array<$element>, macro:js.html.NodeList, macro:Array<String>, macro:Array<$jq>];
			
			case [_, "jQuery object", _]:
				[jqType("JQuery")];
			
			case ["offset" | "position", _, "Object" | "PlainObject"]:
				[macro:{top:Float, left:Float}];
			
			case [
				_, 
				"doneCallbacks" | "failCallbacks" | "progressCallbacks" | "alwaysCallbacks", 
				"Array"
			]:
				[macro:Array<Dynamic>];
					
			case [
				"deferred.resolveWith" | "deferred.rejectWith" | "deferred.notifyWith",
				"args",
				"Array"
			]:
				[macro:Array<Dynamic>];
					
			case ["jQuery.unique" | "jQuery.uniqueSort", _, "Array"]:
				[macro:Array<$element>];
			
			case ["get", "get", "Array"]:
				[macro:Array<$element>];

			case [_, "deferreds", "Deferred"|"deferred"]:
				[rest(jqType("Deferred"))];

			case [_, _, "Deferred"|"deferred"]:
				[jqType("Deferred")];
					
			default:
				trace('["${entryName}", "${tagName}", "${type}"]');
				[macro:Dynamic];
		}
	}
	
	/**
		Compare function for Array.sort().
		Stricter ComplexType will come first (returns -ve); more dynamic one will come last (returns +ve).
	**/
	static public function compareComplexType(a:ComplexType, b:ComplexType):Int {
		return
			switch ([a, b]) {
				case [macro:Dynamic, macro:Dynamic]:
					0;
				case [macro:Dynamic, TPath({pack:[], name:"Dynamic", params:_})]:
					1;
				case [TPath({pack:[], name:"Dynamic", params:_}), macro:Dynamic]:
					-1;
				case [TPath({pack:[], name:"Dynamic", params:[TPType(paramA)]}), TPath({pack:[], name:"Dynamic", params:[TPType(paramB)]})]:
					compareComplexType(paramA, paramB);
				
				case [TPath({pack:[], name:"Dynamic", params:_}), _]:
					1;
				case [_, TPath({pack:[], name:"Dynamic", params:_})]:
					-1;
				
				case [TPath({name:"Either", params:_}), _]:
					1;
				case [_, TPath({name:"Either", params:_})]:
					-1;
				
				case [macro:Float, macro:Int]:
					1;
				case [macro:Int, macro:Float]:
					-1;
				
				case [TPath(tpA), TPath(tpB)] if (tpA.name == tpB.name && tpA.pack.join(".") == tpB.pack.join(".")):
					var pdiff = tpA.params.length - tpB.params.length;
					if (pdiff != 0) {
						pdiff;
					} else {
						Reflect.compare(tpA.name, tpB.name);
					}
				
				case [_, TPath(_)]:
					1;
				case [TPath(_), _]:
					-1;
				
				case [TAnonymous(fieldsA), TAnonymous(fieldsB)]:
					fieldsB.length - fieldsA.length;
				case [TExtend(_, fieldsA), TExtend(_, fieldsB)]:
					fieldsB.length - fieldsA.length;
				
				case _:
					0;
			}
	}
	
	/**
		Compare function for Array.sort().
		Function with stricter arguments will come first (returns -ve); more dynamic one will come last (returns +ve).
	**/
	static public function compareFunctions(a:Function, b:Function):Int {
		if (a.args.length != b.args.length) {
			return a.args.length - b.args.length;
		} else {
			for (i in 0...a.args.length) {
				var aArg = a.args[i], bArg = b.args[i];
				switch([aArg, bArg]) {
					case [{opt:true}, {opt:false}]:
						return 1;
					case [{opt:false}, {opt:true}]:
						return -1;
					case _:
						var v = compareComplexType(aArg.type, bArg.type);
						if (v != 0)
							return v;
				}
			}
			return 0;
		}
	}
	
	macro static public function funcSig(e:Expr):ExprOf<Function> {
		switch(e.expr) {
			case EFunction(_, f):
				return macro {
					params: $v{f.params},
					args: $v{[for (a in f.args) {opt: a.opt, name: a.name, type: a.type, value: a.value}]},
					ret: $v{f.ret},
					expr: null
				};
			default: 
				return throw "Input is not EFunction.";
		}
	}

	static public function infoFromName(field:String):{
		owner:String,
		field:String,
		sub:Array<String>,
		isStatic:Bool
	} {
		if (field == "jQuery") {
			return {
				owner: "jQuery",
				field: "new",
				sub: [],
				isStatic: false
			}
		}
		var names = field.split(".");
		var isJQueryStatic = names[0] == "jQuery";
		if (isJQueryStatic) {
			names.shift();
		}
		if (isJQueryStatic || names.length == 1) {
			return {
				owner: "jQuery",
				field: names[0],
				sub: names.slice(1),
				isStatic: isJQueryStatic
			}
		} else {
			var owner = names.shift();
			return {
				owner: owner,
				field: names[0],
				sub: names.slice(1),
				isStatic: false
			}
		}
	}
	
	function generate():Array<TypeDefinition> {
		var out = [];
		
		
		/*
			build a Map that is className => { statics: memberName => Array<entry>, instances: memberName => Array<entry> }
		*/
		
		var classEntryMap = new Map<String, { statics:Map<String,Array<Fast>>, instances:Map<String,Array<Fast>> }>();
		for (entry in api.node.entries.nodes.entry) {
			var info = infoFromName(entry.att.name);
			var name = info.field;
			
			switch (entry.att.type) {
				case "method", "property":
					//ok
				case "selector":
					continue;
				default: 
					throw "unknown entry type: " + entry.att.type;
					continue;
			}
			
			var entryMaps = classEntryMap.get(info.owner);
			if (entryMaps == null) {
				entryMaps = { statics: new Map(), instances: new Map() }
				classEntryMap.set(info.owner, entryMaps);
			}
			
			var entryMap = info.isStatic ? entryMaps.statics : entryMaps.instances;
			
			if (entryMap.exists(name))
				entryMap.get(name).push(entry);
			else
				entryMap.set(name, [entry]);
		}
		
		/*
			put JQuery static fields into JQueryStatic
		*/
		
		var jQuery = classEntryMap.get("jQuery");
		var jQueryStatic = if (noSeperatedStatic) {
			jQuery;
		} else {
			classEntryMap["jQueryStatic"] = {
				statics: jQuery.statics,
				instances: new Map()
			};
			jQuery.statics = new Map();
			classEntryMap["jQueryStatic"];
		}
		
		/*
			start creating each class
		*/
		
		for (clsName in classEntryMap.keys()) {
			var entryMaps = classEntryMap.get(clsName);
			var type = {
				var types = toComplexType(clsName);
				types.length == 1 ? types[0] : throw clsName; //ensure it is mapped to a single haxe class
			}
		
			var fields:Array<Field> = [];

			// copy constructor function to its own class as "new"
			if (!entryMaps.instances.exists("new")) {
				var ctrName = clsName.charAt(0).toUpperCase() + clsName.substring(1);
				if (jQueryStatic.statics.exists(ctrName)) {
					entryMaps.instances.set("new", jQueryStatic.statics.get(ctrName));
				}
			}
			
			for (isStatic in [true, false]) {
				var entryMap = isStatic ? entryMaps.statics : entryMaps.instances;
				var memNames = [for (n in entryMap.keys()) n];
				memNames.sort(Reflect.compare);
				for (memName in memNames) {
					var mem = entryMap.get(memName);

					var field:Field = {
						name: memName,
						doc: "",
						access: isStatic ? [AStatic, APublic] : [APublic],
						kind: null,
						pos: null,
						meta: []
					};
					
					//in case there is a name collision in static field and instance field
					if (!noRenameStaticField && isStatic && entryMaps.instances.exists(field.name)) {
						var nativeName = field.name;
						field.name = nativeName + "Static";
						field.meta.push({
							name: ":native",
							params: [{expr: EConst(CString(nativeName)), pos:null}],
							pos: null
						});
					}

					switch(memName) {
						case "catch":
							field.name = "_catch";
							field.meta.push({
								name:":native",
								params:[{ expr:EConst(CString("catch")), pos: null }],
								pos: null
							});
						default: //pass
					}

					switch (memName) {
						case "fn":
							field.kind = FVar(macro:Dynamic, null);
							field.doc = "An alias to `jQuery.prototype`.";
							fields.push(field);
						case "fx":
							var _fields = [];
							for (entry in mem) {
								var types = toComplexType(entry.att.resolve("return"), entry);
								var field = Reflect.copy(field);
								field.name = entry.att.name.split(".")[2];
								field.kind = FVar(either(types), null);
								field.access = [];
								field.meta = [];
								field.doc = entry.node.desc.innerHTML.trim();
								
								var sig = entry.node.signature;
								var added = sig.hasNode.added ? sig.node.added.innerHTML : entry.has.added ? entry.att.added : null;
								var deprecated = sig.hasNode.deprecated ? sig.node.deprecated.innerHTML : entry.has.deprecated ? entry.att.deprecated : null;
								var removed = sig.hasNode.removed ? sig.node.removed.innerHTML : entry.has.removed ? entry.att.removed : null;
								
								if (noBuild) {
									if (deprecated != null) {
										field.meta.push({
											name:":deprecated",
											params:[{ expr:EConst(CString('Deprecated since jQuery $deprecated')), pos: null }],
											pos: null
										});
									}
									_fields.push(field);
								} else {
									var jQueryVersionFields = [];
									if (added != null) {
										jQueryVersionFields.push({ 
											field: "added", 
											expr : { expr: EConst(CString(added)), pos:null } 
										});
									}
									if (deprecated != null) {
										jQueryVersionFields.push({ 
											field: "deprecated", 
											expr : { expr: EConst(CString(deprecated)), pos:null } 
										});
									}
									if (removed != null) {
										jQueryVersionFields.push({ 
											field: "removed", 
											expr : { expr: EConst(CString(removed)), pos:null } 
										});
									}
									
									if (jQueryVersionFields.length > 0) {
										field.meta.push({
											name:":jQueryVersion",
											params:[{ expr:EObjectDecl(jQueryVersionFields), pos: null }],
											pos: null
										});
									}

									_fields.push(field);
								}
							}
							field.kind = FVar(TAnonymous(_fields), null);
							fields.push(field);
							
						default:
							var type = mem[0].att.type;
							switch (type) {
								case "method":
									//ensure all are methods
									if (!mem.foreach(function(m) return m.att.type == "method")){
										throw memName + "is of types: " + [for (m in mem) m.att.type].join(", ");
									}
									
									var functions:Array<{
										func: Function,
										config: FuncConfig
									}> = [];
									
									for (entry in mem) {
										for (sig in entry.nodes.signature) {
											var args:Array<FunctionArg> = [for (arg in sig.nodes.argument)
												{
													name: {
														var id = ~/(?:_*[a-z][_a-zA-Z0-9]*|_+[0-9][_a-zA-Z0-9]*|_*[A-Z][_a-zA-Z0-9]*|_+|\$[_a-zA-Z0-9]+)/;
														id.match(arg.att.name);
														var name = id.matched(0);
														if (keywords.indexOf(name) != -1)
															"_" + name;
														else
															name;
													},
													opt: arg.has.optional && switch (arg.att.optional) {
														case "true": true;
														case "false": false;
														case unknown: throw unknown;
													},
													type: either(
														arg.has.type ?
															toComplexType(arg.att.type, arg)
														:
															arg.hasNode.type ?
																arg.nodes.type.fold(function(t, a:Array<ComplexType>) return a.concat(toComplexType(t.att.name, arg)), [])
															:
																toComplexType(null, arg)
													)
												}
											];

											functions.push({ func:{
												args: args,
												ret: switch(memName) {
													case "new":
														macro:Void;
													default:
														var types = if (entry.has.resolve("return")) {
															toComplexType(entry.att.resolve("return"), entry);
														} else {
															[for (r in entry.nodes.resolve("return")) r.att.type]
																.fold(
																	function(t:String, ts:Array<ComplexType>) return ts.concat(toComplexType(t, entry)), 
																	[]
																);
														};

														var et = either(types);
														Lambda.count(eitherTypes(et)) > 1 ? macro:Dynamic: et;
												},
												expr: null,
												params: []
											}, config:{
												added: sig.hasNode.added ? sig.node.added.innerHTML : entry.has.added ? entry.att.added : null,
												deprecated: sig.hasNode.deprecated ? sig.node.deprecated.innerHTML : entry.has.deprecated ? entry.att.deprecated : null,
												removed: sig.hasNode.removed ? sig.node.removed.innerHTML : entry.has.removed ? entry.att.removed : null,
												doc: entry.hasNode.desc ? entry.node.desc.innerHTML.trim() : ""
											}});
										}
									}
									
									//sort
									functions.sort(function(f0,f1) return compareFunctions(f0.func, f1.func));

									if (memName == "new") {
										field.meta.push({
											name:":selfCall",
											params:[],
											pos: null
										});
									}

									if (memName == "readyException") {
										field.access.push(ADynamic);
									}
									
									if (noBuild) {
										if (functions.length == 0)
											continue;

										var deprecateds = [
											for (f in functions)
											if (f.config.deprecated != null)
											f.config.deprecated
										];
										if (deprecateds.length > 0) {
											if (functions.length == 1) {
												var deprecated = deprecateds[0];
												field.meta.push({
													name:":deprecated",
													params:[{ expr:EConst(CString('Deprecated since jQuery $deprecated')), pos: null }],
													pos: null
												});
											} else if (functions.length == deprecateds.length) {
												if (deprecateds.foreach(function(d) return d == deprecateds[0])) {
													var deprecated = deprecateds[0];
													field.meta.push({
														name:":deprecated",
														params:[{ expr:EConst(CString('Deprecated since jQuery $deprecated')), pos: null }],
														pos: null
													});
												} else {
													field.meta.push({
														name:":deprecated",
														params:[],
														pos: null
													});
												}
											}
										}

										var doc = [
											for (f in functions)
											if (f.config.doc != "")
											f.config.doc => f.config.doc
										];

										var func = functions.shift();
										field.kind = FFun(func.func);
										
										for (func in functions) {
											func.func.expr = macro {};
											field.meta.push({
												name: ":overload",
												params: [{ expr: EFunction(null, func.func), pos: null }],
												pos: null
											});
										}
										field.doc = [for (d in doc) d].join("\nOR\n");

										fields.push(field);
									} else {
										//create Field for individual signature
										//the Config build macro will put them back to @:overload metas

										if (functions.length > 1) {
											field.meta.push({
												name:":overload",
												params:[],
												pos: null
											});
										}

										for (f in functions) {
											var clonedField = field.copy();
											clonedField.kind = FFun(f.func);
											clonedField.doc = f.config.doc;
											clonedField.meta = field.meta.copy();
											
											var jQueryVersionFields = [];
											if (f.config.added != null) {
												jQueryVersionFields.push({ 
													field: "added", 
													expr : { expr: EConst(CString(f.config.added)), pos:null } 
												});
											}
											if (f.config.deprecated != null) {
												jQueryVersionFields.push({ 
													field: "deprecated", 
													expr : { expr: EConst(CString(f.config.deprecated)), pos:null } 
												});
											}
											if (f.config.removed != null) {
												jQueryVersionFields.push({ 
													field: "removed", 
													expr : { expr: EConst(CString(f.config.removed)), pos:null } 
												});
											}
											if (jQueryVersionFields.length > 0) {
												clonedField.meta.push({
													name:":jQueryVersion",
													params:[{ expr:EObjectDecl(jQueryVersionFields), pos: null }],
													pos: null
												});
											}
											fields.push(clonedField);
										}
									}
								case "property":
									if (mem.length == 1 || memName == "browser") {
										var entry = if (mem.length == 1) {
											mem[0];
										} else if (memName == "browser") {
											mem.find(function(e) return e.att.name.endsWith(".browser"));
										} else {
											throw mem;
										}
										var types = toComplexType(entry.att.resolve("return"), entry);
										field.kind = switch (memName) {
											case "length": FProp("default", "null", either(types), null);
											case _: FVar(either(types), null);
										}
										field.doc = entry.node.desc.innerHTML.trim();
									
										var sig = entry.node.signature;
										var added = sig.hasNode.added ? sig.node.added.innerHTML : entry.has.added ? entry.att.added : null;
										var deprecated = sig.hasNode.deprecated ? sig.node.deprecated.innerHTML : entry.has.deprecated ? entry.att.deprecated : null;
										var removed = sig.hasNode.removed ? sig.node.removed.innerHTML : entry.has.removed ? entry.att.removed : null;
										
										if (noBuild) {
											if (deprecated != null) {
												field.meta.push({
													name:":deprecated",
													params:[{ expr:EConst(CString('Deprecated since jQuery $deprecated')), pos: null }],
													pos: null
												});
											}
											fields.push(field);
										} else {
											var jQueryVersionFields = [];
											if (added != null) {
												jQueryVersionFields.push({ 
													field: "added", 
													expr : { expr: EConst(CString(added)), pos:null } 
												});
											}
											if (deprecated != null) {
												jQueryVersionFields.push({ 
													field: "deprecated", 
													expr : { expr: EConst(CString(deprecated)), pos:null } 
												});
											}
											if (removed != null) {
												jQueryVersionFields.push({ 
													field: "removed", 
													expr : { expr: EConst(CString(removed)), pos:null } 
												});
											}
											if (jQueryVersionFields.length > 0) {
												field.meta.push({
													name:":jQueryVersion",
													params:[{ expr:EObjectDecl(jQueryVersionFields), pos: null }],
													pos: null
												});
											}
											fields.push(field);
										}
									} else {
										throw mem;
									}
									
								default: 
									throw "unknown entry type: " + type;
							}
					}
				}
			}
			
			switch (type) {
				case TPath(tp):
					var td:TypeDefinition = {
						pack : tp.pack,
						name : tp.name,
						pos : null,
						meta : [],
						params : [],
						isExtern : true,
						kind : TDClass(),
						fields : fields
					};
					
					switch(tp.name) {
						case "JQuery":
							td.kind = TDClass(null, [{
								pack: [],
								name: "ArrayAccess",
								params: [TPType(element)]
							}]);
							
							if (!noSeperatedStatic)
								fields.push({
									name: "_static",
									doc: "Compile-time short cut to JQueryStatic.",
									access: [AInline, AStatic, APublic],
									kind: FVar(null, macro $p{pack.split(".").concat(["JQueryStatic"])}),
									pos: null,
									meta: []
								});

							if (addHaxeIterator) {
								{
									var JqIterator = jqType("JqIterator");
									var JqIteratorTPath = switch (JqIterator) {
										case TPath(tp): tp;
										case _: throw JqIterator;
									}
									var iteratorMethodBody = macro return new $JqIteratorTPath(this);
									fields.push({
										name: "iterator",
										doc: "Haxe iterator.",
										access: [AInline, APublic],
										kind: FFun({
											params: null,
											args: [],
											ret: JqIterator,
											expr: iteratorMethodBody,
										}),
										meta: [{
											name: ":runtime",
											pos: null
										}],
										pos: null
									});
								}
								{
									var JqIterator = jqType("JqEltsIterator");
									var JqIteratorTPath = switch (JqIterator) {
										case TPath(tp): tp;
										case _: throw JqIterator;
									}
									var iteratorMethodBody = macro return new $JqIteratorTPath(this);
									fields.push({
										name: "elements",
										doc: "Haxe iterator.",
										access: [AInline, APublic],
										kind: FFun({
											params: null,
											args: [],
											ret: JqIterator,
											expr: iteratorMethodBody,
										}),
										meta: [{
											name: ":runtime",
											pos: null
										}],
										pos: null
									});
								}
							}
						case "Event":
							td.kind = TDClass({
								pack: ["js", "html"],
								name: "Event",
								params: []
							});

							for (field in copiedEventFields) {
								if (td.fields.exists(function(f) return f.name == field))
									continue;

								switch (field) {
									case "char":
										td.fields.push({
											access: [APublic],
											kind: FVar(macro:Int),
											name: field,
											pos: null
										});
									case "data":
										td.fields.push({
											access: [APublic],
											kind: FVar(macro:Dynamic),
											name: field,
											pos: null
										});
									case "offsetX", "offsetY":
										td.fields.push({
											access: [APublic],
											kind: FVar(macro:Int),
											name: field,
											pos: null
										});
									case "toElement":
										td.fields.push({
											access: [APublic],
											kind: FVar(macro:js.html.Element),
											name: field,
											pos: null
										});
									case _:
										var fInfo = coreEventFields.find(function(f) return f.name == field);
										if (fInfo == null) {
											trace(field);
											continue;
										}
										td.fields.push({
											doc: fInfo.doc,
											access: [APublic],
											kind: switch (fInfo.kind) {
												case FVar(read, write): FVar(fInfo.type);
												case FMethod(k): throw "should be FVar";
											},
											name: field,
											pos: null
										});
								}
							}
							var evtFields:Array<Dynamic> = getFields("js.html.Event");
							td.fields = td.fields.filter(function(field) return !evtFields.exists(function(f) return f.name == field.name));

							// add getThis() helper method
							// See the comment section of https://github.com/HaxeFoundation/haxe/commit/e3a022dd4bae85f8456cf3f1683fefd2e0b5d22d
							{
								var jq = jqType("JQuery");
								var JqTPath = switch (jq) {
									case TPath(tp): tp;
									case v: throw v;
								}
								td.fields.push({
									name: "getThis",
									doc: "A convenient method of getting `$(this)`, which is typically the same as `$(evt.currentTarget)`.\n"
									+ "For detail, refer to https://api.jquery.com/event.currenttarget/.",
									access: [AInline, APublic],
									kind: FFun({
										params: null,
										args: [],
										ret: jq,
										expr: macro return new $JqTPath(js.Lib.nativeThis),
									}),
									meta: [],
									pos: null
								});
							}
						default:
							//pass
					}
					
					out.push(td);
				default: //TODO
					trace(type);
			}
			
		}


		var deferred = out.find(function(t) return t.name == "Deferred");
		var promiseFields = [
			for (field in deferred.fields)
			// https://api.jquery.com/Types/#Promise
			if ([
				"then",
				"done",
				"fail",
				"always",
				"pipe",
				"progress",
				"state",
				"isResolved",
				"isRejected"
			].indexOf(field.name) >= 0)
			field
		];
		{
			var td:TypeDefinition = {
				pack : this.pack.split("."),
				name : "JqXHR",
				pos : null,
				meta : [],
				params : [],
				isExtern : true,
				kind : TDClass({
					pack: ["js", "html"],
					name: "XMLHttpRequest",
					params: []
				}),
				fields : promiseFields
			};
			out.push(td);
		}
		{
			var td:TypeDefinition = {
				pack : this.pack.split("."),
				name : "Promise",
				pos : null,
				meta : [],
				params : [],
				isExtern : !noBuild,
				kind : if (noBuild) {
					TDStructure;
				} else {
					TDClass();
				},
				fields : promiseFields
			};
			out.push(td);
		}

		for (td in out) {
			if (!noBuild) {
				td.meta.push({
					name: ":build",
					params: [macro $p{pack.split(".").concat(["Config", "build"])}()],
					pos: null
				});
			}

			if (noBuild) {
				var native = switch (td.name) {
					case "JQuery" | "JQueryStatic":
						native;
					case name:
						native + "." + name;
				}
				td.meta.push({
					name: ":native",
					params: [{ expr:EConst(CString(native)), pos: null }],
					pos: null
				});
			}
		}
		
		return out;
	}

	macro static function getFields(type:String) {
		switch (haxe.macro.Context.getType(type)) {
			case TInst(t, _):
				var fields = [
					for (f in t.get().fields.get())
					{
						type: switch (Context.toComplexType(f.type)) {
							case TPath(tp) if (tp.name == "StdTypes"):
								TPath({
									pack: tp.pack,
									name: tp.sub
								});
							case ct: ct;
						},
						name: f.name,
						kind: f.kind,
						doc: f.doc
					}
				];
				return macro $v{fields};
			case _:
				throw type;
		}
	}
	
	#if (mcli && !macro)
	public function runDefault():Void {
		Sys.println('Generating jQuery core extern from "${apiXml}".');
		api = new Fast(Xml.parse(File.getContent(apiXml))).node.api;

		if (!FileSystem.exists(outputFolder))
			FileSystem.createDirectory(outputFolder);
		Sys.setCwd(outputFolder);

		var tds = generate();

		var printer = new Printer();
		for (td in tds) {
			var clsStr = "/* This file is generated, do not edit! Visit https://api.jquery.com/ for API documentation. */\n" + printer.printTypeDefinition(td);
			var packDir = td.pack.join("/");
			FileSystem.createDirectory(packDir);
			File.saveContent(packDir + "/" + td.name + ".hx", clsStr);
		}
		Sys.println("Done.");
	}

	/**
		Print help message.
	*/
	public function help():Void {
		Sys.println(showUsage());
		Sys.exit(0);
	}

	static function main():Void {
		new Dispatch(Sys.args()).dispatch(new ExternGenerator());
	}
	#end
}