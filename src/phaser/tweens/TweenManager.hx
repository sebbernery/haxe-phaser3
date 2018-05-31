package phaser.tweens;

@:native("Phaser.Tweens.TweenManager")
extern class TweenManager {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public var timeScale:Float;
    public function createTimeline(config:Dynamic):phaser.tweens.Timeline;
    public function timeline(config:Dynamic):phaser.tweens.Timeline;
    public function create(config:Dynamic):phaser.tweens.Tween;
    public function add(config:Dynamic):phaser.tweens.Tween;
    public function existing(tween:phaser.tweens.Tween):phaser.tweens.TweenManager;
    public function addCounter(config:Dynamic):phaser.tweens.Tween;
    public function preUpdate():Void;
    public function update(timestamp:Float, delta:Float):Void;
    public function makeActive(tween:phaser.tweens.Tween):phaser.tweens.TweenManager;
    public function each(callback:Dynamic, ?scope:Dynamic, ?args:Dynamic):Void;
    public function getAllTweens():Array<phaser.tweens.Tween>;
    public function getGlobalTimeScale():Float;
    public function getTweensOf(target:Dynamic):Array<phaser.tweens.Tween>;
    public function isTweening(target:Dynamic):Bool;
    public function killAll():phaser.tweens.TweenManager;
    public function killTweensOf(target:Dynamic):phaser.tweens.TweenManager;
    public function pauseAll():phaser.tweens.TweenManager;
    public function resumeAll():phaser.tweens.TweenManager;
    public function setGlobalTimeScale(value:Float):phaser.tweens.TweenManager;
    public function shutdown():Void;
    public function destroy():Void;
}
