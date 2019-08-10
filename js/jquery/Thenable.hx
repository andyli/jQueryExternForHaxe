package js.jquery;

#if (haxe_ver >= 4)
typedef Thenable<T> = js.lib.Promise.Thenable<T>;
#else
typedef Thenable<T> = js.Promise.Thenable<T>;
#end