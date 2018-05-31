package phaser.physics.matter.components;

@:native("Phaser.Physics.Matter.Components.Force")
extern class Force {
    public function new();
    public function applyForce(force:phaser.math.Vector2):phaser.gameobjects.GameObject;
    public function applyForceFrom(position:phaser.math.Vector2, force:phaser.math.Vector2):phaser.gameobjects.GameObject;
    public function thrust(speed:Float):phaser.gameobjects.GameObject;
    public function thrustLeft(speed:Float):phaser.gameobjects.GameObject;
    public function thrustRight(speed:Float):phaser.gameobjects.GameObject;
    public function thrustBack(speed:Float):phaser.gameobjects.GameObject;
}
