package phaser.physics.impact.components;

@:native("Phaser.Physics.Impact.Components.Gravity")
extern class Gravity {
    public function new();
    public var gravity:Float;
    public function setGravity(value:Float):phaser.gameobjects.GameObject;
}
