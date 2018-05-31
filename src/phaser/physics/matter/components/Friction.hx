package phaser.physics.matter.components;

@:native("Phaser.Physics.Matter.Components.Friction")
extern class Friction {
    public function new();
    public function setFriction(value:Float, ?air:Float, ?fstatic:Float):phaser.gameobjects.GameObject;
    public function setFrictionAir(value:Float):phaser.gameobjects.GameObject;
    public function setFrictionStatic(value:Float):phaser.gameobjects.GameObject;
}
