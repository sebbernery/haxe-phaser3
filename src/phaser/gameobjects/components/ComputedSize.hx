package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.ComputedSize")
extern class ComputedSize {
    public function new();
    public var width:Float;
    public var height:Float;
    public var displayWidth:Float;
    public var displayHeight:Float;
    public function setSize(width:Float, height:Float):Dynamic;
    public function setDisplaySize(width:Float, height:Float):Dynamic;
}
