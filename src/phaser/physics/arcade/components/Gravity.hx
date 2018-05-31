package phaser.physics.arcade.components;

@:native("Phaser.Physics.Arcade.Components.Gravity")
extern class Gravity {
    public function new();
    public function setGravity(x:Float, ?y:Float):Dynamic;
    public function setGravityX(x:Float):Dynamic;
    public function setGravityY(y:Float):Dynamic;
}
