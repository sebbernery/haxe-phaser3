package phaser.tweens;

@:native("Phaser.Tweens.Timeline")
extern class Timeline extends phaser.events.EventEmitter {
    public function new(manager:phaser.tweens.TweenManager);
    public var manager:phaser.tweens.TweenManager;
    public var isTimeline:Bool;
    public var data:Array<Dynamic>;
    public var totalData:Float;
    public var useFrames:Bool;
    public var timeScale:Float;
    public var loop:Float;
    public var loopDelay:Float;
    public var loopCounter:Float;
    public var completeDelay:Float;
    public var countdown:Float;
    public var state:Int;
    public var paused:Bool;
    public var elapsed:Float;
    public var totalElapsed:Float;
    public var duration:Float;
    public var progress:Float;
    public var totalDuration:Float;
    public var totalProgress:Float;
    public function setTimeScale(value:Float):phaser.tweens.Timeline;
    public function getTimeScale():Float;
    public function isPlaying():Bool;
    public function add(config:Dynamic):phaser.tweens.Timeline;
    public function queue(tween:phaser.tweens.Tween):phaser.tweens.Timeline;
    public function hasOffset(tween:phaser.tweens.Tween):Bool;
    public function isOffsetAbsolute(value:Float):Bool;
    public function isOffsetRelative(value:String):Bool;
    public function getRelativeOffset(value:String, base:Float):Float;
    public function calcDuration():Void;
    public function init():Bool;
    public function resetTweens(resetFromLoop:Bool):Void;
    public function setCallback(type:String, callback:Dynamic, ?params:Array<Dynamic>, ?scope:Dynamic):phaser.tweens.Timeline;
    public function makeActive(tween:phaser.tweens.Tween):phaser.tweens.TweenManager;
    public function play():Void;
    public function nextState():Void;
    public function update(timestamp:Float, delta:Float):Bool;
    public function stop():Void;
    public function pause():phaser.tweens.Timeline;
    public function resume():phaser.tweens.Timeline;
    public function hasTarget(target:Dynamic):Bool;
}
