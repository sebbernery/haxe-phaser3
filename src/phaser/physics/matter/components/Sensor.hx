package phaser.physics.matter.components;

@:native("Phaser.Physics.Matter.Components.Sensor")
extern class Sensor {
    public function new();
    public function setSensor(value:Bool):phaser.gameobjects.GameObject;
    public function isSensor():Bool;
}
