package phaser.scenes;

@:native("Phaser.Scenes.ScenePlugin")
extern class ScenePlugin {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public var settings:phaser.scenes.settings.Object;
    public var key:String;
    public var manager:phaser.scenes.SceneManager;
    public var transitionProgress:Float;
    public function start(?key:String, ?data:Dynamic):phaser.scenes.ScenePlugin;
    public function restart(?data:Dynamic):phaser.scenes.ScenePlugin;
    public function transition(config:phaser.scenes.sceneplugin.SceneTransitionConfig):Bool;
    public function add(key:String, sceneConfig:Dynamic, autoStart:Bool):phaser.scenes.ScenePlugin;
    public function launch(key:String, ?data:Dynamic):phaser.scenes.ScenePlugin;
    public function run(key:String, ?data:Dynamic):phaser.scenes.ScenePlugin;
    public function pause(?key:String, ?data:Dynamic):phaser.scenes.ScenePlugin;
    public function resume(?key:String, ?data:Dynamic):phaser.scenes.ScenePlugin;
    public function sleep(?key:String, ?data:Dynamic):phaser.scenes.ScenePlugin;
    public function wake(?key:String, ?data:Dynamic):phaser.scenes.ScenePlugin;
    @:native('switch') public function switch_(key:String):phaser.scenes.ScenePlugin;
    public function stop(key:String):phaser.scenes.ScenePlugin;
    public function setActive(value:Bool, ?key:String, ?data:Dynamic):phaser.scenes.ScenePlugin;
    public function setVisible(value:Bool, ?key:String):phaser.scenes.ScenePlugin;
    public function isSleeping(key:String):Bool;
    public function isActive(key:String):Bool;
    public function isVisible(key:String):Bool;
    public function swapPosition(keyA:String, ?keyB:String):phaser.scenes.ScenePlugin;
    public function moveAbove(keyA:String, ?keyB:String):phaser.scenes.ScenePlugin;
    public function moveBelow(keyA:String, ?keyB:String):phaser.scenes.ScenePlugin;
    public function remove(key:Dynamic):phaser.scenes.SceneManager;
    public function moveUp(key:String):phaser.scenes.ScenePlugin;
    public function moveDown(key:String):phaser.scenes.ScenePlugin;
    public function bringToTop(key:String):phaser.scenes.ScenePlugin;
    public function sendToBack(key:String):phaser.scenes.ScenePlugin;
    public function get(key:String):phaser.Scene;
    public function getIndex(?key:Dynamic):Int;
}
