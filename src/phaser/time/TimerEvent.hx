package phaser.time;

@:native("Phaser.Time.TimerEvent")
extern class TimerEvent {
    public function new(config:TimerEventConfig);
    public var delay:Float;
    public var repeat:Float;
    public var repeatCount:Float;
    public var loop:Bool;
    public var callback:Dynamic;
    public var callbackScope:Dynamic;
    public var args:Array<Dynamic>;
    public var timeScale:Float;
    public var startAt:Float;
    public var elapsed:Float;
    public var paused:Bool;
    public var hasDispatched:Bool;
    public function reset(config:TimerEventConfig):phaser.time.TimerEvent;
    public function getProgress():Float;
    public function getOverallProgress():Float;
    public function getRepeatCount():Float;
    public function getElapsed():Float;
    public function getElapsedSeconds():Float;
    public function remove(dispatchCallback:Dynamic):Void;
    public function destroy():Void;
}
