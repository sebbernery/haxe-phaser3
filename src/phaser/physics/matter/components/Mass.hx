package phaser.physics.matter.components;

@:native("Phaser.Physics.Matter.Components.Mass")
extern class Mass {
    public function new();
    public function setMass(value:Float):phaser.gameobjects.GameObject;
    public function setDensity(value:Float):phaser.gameobjects.GameObject;
}
