package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.Tint")
extern class Tint {
    public function new();
    public var tintTopLeft:Int;
    public var tintTopRight:Int;
    public var tintBottomLeft:Int;
    public var tintBottomRight:Int;
    public var tint:Int;
    public function clearTint():Dynamic;
    public function setTint(?topLeft:Int, ?topRight:Int, ?bottomLeft:Int, ?bottomRight:Int):Dynamic;
}
