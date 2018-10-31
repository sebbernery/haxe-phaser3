package phaser.physics.impact.components;

@:native("Phaser.Physics.Impact.Components.Velocity")
extern class Velocity {
    public function new();
    public function setVelocityX(x:Float):Dynamic;
    public function setVelocityY(y:Float):Dynamic;
    public function setVelocity(x:Float, ?y:Float):Dynamic;
    public function setMaxVelocity(x:Float, ?y:Float):Dynamic;
}
