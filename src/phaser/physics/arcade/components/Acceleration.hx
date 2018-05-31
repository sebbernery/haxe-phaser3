package phaser.physics.arcade.components;

@:native("Phaser.Physics.Arcade.Components.Acceleration")
extern class Acceleration {
    public function new();
    public function setAcceleration(x:Float, ?y:Float):Dynamic;
    public function setAccelerationX(value:Float):Dynamic;
    public function setAccelerationY(value:Float):Dynamic;
}
