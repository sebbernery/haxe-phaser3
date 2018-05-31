package phaser.physics.impact.components;

@:native("Phaser.Physics.Impact.Components.Offset")
extern class Offset {
    public function new();
    public function setOffset(x:Float, y:Float, ?width:Float, ?height:Float):phaser.gameobjects.GameObject;
}
