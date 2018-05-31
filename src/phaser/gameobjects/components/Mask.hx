package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.Mask")
extern class Mask {
    public function new();
    public var mask:Dynamic;
    public function setMask(mask:Dynamic):Dynamic;
    public function clearMask(?destroyMask:Bool):Dynamic;
    public function createBitmapMask(?renderable:phaser.gameobjects.GameObject):phaser.display.masks.BitmapMask;
    public function createGeometryMask(?graphics:phaser.gameobjects.Graphics):phaser.display.masks.GeometryMask;
}
