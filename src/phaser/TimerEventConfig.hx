package phaser;

typedef TimerEventConfig = {
    @:optional var delay:Float;
    @:optional var repeat:Float;
    @:optional var loop:Bool;
    @:optional var callback:Dynamic;
    @:optional var callbackScope:Dynamic;
    @:optional var args:Array<Dynamic>;
    @:optional var timeScale:Float;
    @:optional var startAt:Float;
    @:optional var paused:Bool;
};
