package phaser.physics.impact.components;

@:native("Phaser.Physics.Impact.Components.Acceleration")
extern class Acceleration {
    public function new();
    public function setAccelerationX(x:Float):phaser.gameobjects.GameObject;
    public function setAccelerationY(y:Float):phaser.gameobjects.GameObject;
    public function setAcceleration(x:Float, y:Float):phaser.gameobjects.GameObject;
}
