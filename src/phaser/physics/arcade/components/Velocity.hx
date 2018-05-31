package phaser.physics.arcade.components;

@:native("Phaser.Physics.Arcade.Components.Velocity")
extern class Velocity {
    public function new();
    public function setVelocity(x:Float, ?y:Float):Dynamic;
    public function setVelocityX(x:Float):Dynamic;
    public function setVelocityY(y:Float):Dynamic;
    public function setMaxVelocity(x:Float, ?y:Float):Dynamic;
}
