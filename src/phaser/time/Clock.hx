package phaser.time;

@:native("Phaser.Time.Clock")
extern class Clock {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public var now:Float;
    public var timeScale:Float;
    public var paused:Bool;
    public function addEvent(config:TimerEventConfig):phaser.time.TimerEvent;
    public function delayedCall(delay:Float, callback:Dynamic, args:Array<Dynamic>, callbackScope:Dynamic):phaser.time.TimerEvent;
    public function clearPendingEvents():phaser.time.Clock;
    public function removeAllEvents():phaser.time.Clock;
    public function preUpdate(time:Float, delta:Float):Void;
    public function update(time:Float, delta:Float):Void;
}
