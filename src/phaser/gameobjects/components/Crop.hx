package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.Crop")
extern class Crop {
    public function new();
    public var texture:Dynamic;
    public var frame:phaser.textures.Frame;
    public var isCropped:Bool;
    public function setCrop(?x:Dynamic, ?y:Float, ?width:Float, ?height:Float):Dynamic;
}
