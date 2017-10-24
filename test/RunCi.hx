import Sys.*;
import sys.io.*;

class RunCi {
	static function cmd(p:String, args:Array<String>):Void {
		println('cmd: $p, args: $args');
		var proc = new Process(p, args);

		var out = proc.stdout.readAll().toString();
		if (out.length > 0)
			println(out);

		var err = proc.stderr.readAll().toString();
		if (err.length > 0)
			println(err);

		var exitCode = proc.exitCode();
		println('cmd exited with $exitCode');
		if (exitCode != 0) {
			exit(1);
		}
	}
	static function main() {
		var args = [
			"-js", "test/bin/Test.js",
			"-main", "Test",
			"-cp", "test",
			"-lib", "utest",
			"-D", "travis"
		];

		var pack = "js.jquery";

		for (plugins in [
			[],
			["-D", "test_plugin", "--macro", "js.jquery.Config.addPlugin('DummyPlugin')", "--macro", "js.jquery.Config.addPlugin('DummyPlugin2')"]
		])
		for (setNative in [
			[],
			["--macro", pack + ".Config.setNative('jQuery')"]
		])
		for (setAllowDeprecated in [
			[],
			["--macro", pack + ".Config.setAllowDeprecated(true)"]
		])
		for (unflatten in [[], ["-D", "js-unflatten"]])
		{
			var args = args
				.concat(plugins)
				.concat(setNative)
				.concat(setAllowDeprecated)
				.concat(unflatten);
			cmd("haxe", args);
			cmd("phantomjs", ["test/bin/PhantomRunner.js"]);
      
			args.concat(["-lib", "hxnodejs"]);
      
			cmd("haxe", args);
		}
	}
}