package phaser.boot;

@:native("Phaser.Boot.TimeStep")
extern class TimeStep {
    public function new(game:phaser.Game, config:FPSConfig);
    public var game:phaser.Game;
    public var raf:phaser.dom.RequestAnimationFrame;
    public var started:Bool;
    public var running:Bool;
    public var minFps:Int;
    public var targetFps:Int;
    public var actualFps:Int;
    public var nextFpsUpdate:Int;
    public var framesThisSecond:Int;
    public var callback:TimeStepCallback;
    public var forceSetTimeOut:Bool;
    public var time:Int;
    public var startTime:Int;
    public var lastTime:Int;
    public var frame:Int;
    public var inFocus:Bool;
    public var delta:Int;
    public var deltaIndex:Int;
    public var deltaHistory:Array<Dynamic>;
    public var deltaSmoothingMax:Int;
    public var panicMax:Int;
    public var rawDelta:Float;
    public function blur():Void;
    public function focus():Void;
    public function pause():Void;
    public function resume():Void;
    public function resetDelta():Void;
    public function start(callback:TimeStepCallback):Void;
    public function step(time:Int):Void;
    public function tick():Void;
    public function sleep():Void;
    public function wake(?seamless:Bool):Void;
    public function stop():phaser.boot.TimeStep;
    public function destroy():Void;
}
