package phaser.scenes;

@:native("Phaser.Scenes.SceneManager")
extern class SceneManager {
    public function new(game:phaser.Game, sceneConfig:Dynamic);
    public var game:phaser.Game;
    public var keys:Dynamic;
    public var scenes:Array<Dynamic>;
    public var isProcessing:Bool;
    public var isBooted:Bool;
    public function processQueue():Void;
    public function add(key:String, sceneConfig:Dynamic, ?autoStart:Bool, ?data:Dynamic):phaser.Scene;
    public function remove(scene:Dynamic):phaser.scenes.SceneManager;
    public function update(time:Float, delta:Float):Void;
    public function resize(width:Float, height:Float):Void;
    public function render(renderer:Dynamic):Void;
    public function getScene(key:Dynamic):phaser.Scene;
    public function isActive(key:String):Bool;
    public function isVisible(key:String):Bool;
    public function isSleeping(key:String):Bool;
    public function pause(key:String):phaser.scenes.SceneManager;
    public function resume(key:String):phaser.scenes.SceneManager;
    public function sleep(key:String):phaser.scenes.SceneManager;
    public function wake(key:String):phaser.scenes.SceneManager;
    public function run(key:String, ?data:Dynamic):phaser.scenes.SceneManager;
    public function start(key:String, ?data:Dynamic):phaser.scenes.SceneManager;
    public function stop(key:String):phaser.scenes.SceneManager;
    @:native('switch') public function switch_(from:String, to:String):phaser.scenes.SceneManager;
    public function getAt(index:Int):phaser.Scene;
    public function getIndex(key:Dynamic):Int;
    public function bringToTop(key:Dynamic):phaser.scenes.SceneManager;
    public function sendToBack(key:Dynamic):phaser.scenes.SceneManager;
    public function moveDown(key:Dynamic):phaser.scenes.SceneManager;
    public function moveUp(key:Dynamic):phaser.scenes.SceneManager;
    public function moveAbove(keyA:Dynamic, keyB:Dynamic):phaser.scenes.SceneManager;
    public function moveBelow(keyA:Dynamic, keyB:Dynamic):phaser.scenes.SceneManager;
    public function swapPosition(keyA:Dynamic, keyB:Dynamic):phaser.scenes.SceneManager;
    public function dump():Void;
    public function destroy():Void;
}
