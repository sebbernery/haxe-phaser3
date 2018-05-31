package phaser.physics.arcade.components;

@:native("Phaser.Physics.Arcade.Components.Friction")
extern class Friction {
    public function new();
    public function setFriction(x:Float, ?y:Float):Dynamic;
    public function setFrictionX(x:Float):Dynamic;
    public function setFrictionY(y:Float):Dynamic;
}
