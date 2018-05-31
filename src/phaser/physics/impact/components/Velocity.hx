package phaser.physics.impact.components;

@:native("Phaser.Physics.Impact.Components.Velocity")
extern class Velocity {
    public function new();
    public function setVelocityX(x:Float):phaser.gameobjects.GameObject;
    public function setVelocityY(y:Float):phaser.gameobjects.GameObject;
    public function setVelocity(x:Float, ?y:Float):phaser.gameobjects.GameObject;
    public function setMaxVelocity(x:Float, ?y:Float):phaser.gameobjects.GameObject;
}
