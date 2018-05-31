package phaser.physics.matter.components;

@:native("Phaser.Physics.Matter.Components.Collision")
extern class Collision {
    public function new();
    public function setCollisionCategory(value:Float):phaser.gameobjects.GameObject;
    public function setCollisionGroup(value:Float):phaser.gameobjects.GameObject;
    public function setCollidesWith(categories:Dynamic):phaser.gameobjects.GameObject;
}
