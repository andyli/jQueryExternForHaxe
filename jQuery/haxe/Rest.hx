package jQuery.haxe;

#if (haxe_ver >= 3.2)
typedef Rest<T> = haxe.extern.Rest<T>;
#else
//It is not accurate but let it be...
typedef Rest<T> = T;
#end
