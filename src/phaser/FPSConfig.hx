package phaser;

typedef FPSConfig = {
    @:optional var min:Int;
    @:optional var target:Int;
    @:optional var forceSetTimeOut:Bool;
    @:optional var deltaHistory:Int;
    @:optional var panicMax:Int;
};
