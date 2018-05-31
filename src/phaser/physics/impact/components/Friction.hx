package phaser.physics.impact.components;

@:native("Phaser.Physics.Impact.Components.Friction")
extern class Friction {
    public function new();
    public function setFrictionX(x:Float):phaser.gameobjects.GameObject;
    public function setFrictionY(y:Float):phaser.gameobjects.GameObject;
    public function setFriction(x:Float, y:Float):phaser.gameobjects.GameObject;
}
