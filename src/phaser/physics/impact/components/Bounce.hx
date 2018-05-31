package phaser.physics.impact.components;

@:native("Phaser.Physics.Impact.Components.Bounce")
extern class Bounce {
    public function new();
    public var bounce:Float;
    public function setBounce(value:Float):phaser.gameobjects.GameObject;
    public function setMinBounceVelocity(value:Float):phaser.gameobjects.GameObject;
}
