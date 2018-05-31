package phaser.physics.impact.components;

@:native("Phaser.Physics.Impact.Components.BodyScale")
extern class BodyScale {
    public function new();
    public function setBodySize(width:Float, ?height:Float):phaser.gameobjects.GameObject;
    public function setBodyScale(scaleX:Float, ?scaleY:Float):phaser.gameobjects.GameObject;
}
