package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.Flip")
extern class Flip {
    public function new();
    public var flipX:Bool;
    public var flipY:Bool;
    public function toggleFlipX():Dynamic;
    public function toggleFlipY():Dynamic;
    public function setFlipX(value:Bool):Dynamic;
    public function setFlipY(value:Bool):Dynamic;
    public function setFlip(x:Bool, y:Bool):Dynamic;
    public function resetFlip():Dynamic;
}
