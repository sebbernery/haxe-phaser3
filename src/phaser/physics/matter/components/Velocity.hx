package phaser.physics.matter.components;

@:native("Phaser.Physics.Matter.Components.Velocity")
extern class Velocity {
    public function new();
    public function setAngularVelocity(value:Float):phaser.gameobjects.GameObject;
    public function setVelocityX(x:Float):phaser.gameobjects.GameObject;
    public function setVelocityY(y:Float):phaser.gameobjects.GameObject;
    public function setVelocity(x:Float, ?y:Float):phaser.gameobjects.GameObject;
}
