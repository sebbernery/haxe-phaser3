package phaser.physics.matter.components;

@:native("Phaser.Physics.Matter.Components.Gravity")
extern class Gravity {
    public function new();
    public function setIgnoreGravity(value:Bool):phaser.gameobjects.GameObject;
}
