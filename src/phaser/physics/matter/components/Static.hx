package phaser.physics.matter.components;

@:native("Phaser.Physics.Matter.Components.Static")
extern class Static {
    public function new();
    public function setStatic(value:Bool):phaser.gameobjects.GameObject;
    public function isStatic():Bool;
}
