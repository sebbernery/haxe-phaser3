package phaser.physics.arcade.components;

@:native("Phaser.Physics.Arcade.Components.Size")
extern class Size {
    public function new();
    public function setOffset(x:Float, ?y:Float):Dynamic;
    public function setSize(width:Float, height:Float, ?center:Bool):Dynamic;
    public function setCircle(radius:Float, ?offsetX:Float, ?offsetY:Float):Dynamic;
}
