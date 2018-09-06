package phaser.gameobjects;

@:native("Phaser.GameObjects.LightsManager")
extern class LightsManager {
    public function new();
    public var lightPool:Array<phaser.gameobjects.Light>;
    public var lights:Array<phaser.gameobjects.Light>;
    public var culledLights:Array<phaser.gameobjects.Light>;
    public var ambientColor:Dynamic;
    public var active:Bool;
    public function enable():phaser.gameobjects.LightsManager;
    public function disable():phaser.gameobjects.LightsManager;
    public function cull(camera:phaser.cameras.scene2d.Camera):Array<phaser.gameobjects.Light>;
    public function forEachLight(callback:LightForEach):phaser.gameobjects.LightsManager;
    public function setAmbientColor(rgb:Float):phaser.gameobjects.LightsManager;
    public function getMaxVisibleLights():Int;
    public function getLightCount():Int;
    public function addLight(?x:Float, ?y:Float, ?radius:Float, ?rgb:Float, ?intensity:Float):phaser.gameobjects.Light;
    public function removeLight(light:phaser.gameobjects.Light):phaser.gameobjects.LightsManager;
    public function shutdown():Void;
    public function destroy():Void;
}
