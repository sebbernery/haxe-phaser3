package phaser.physics.impact.components;

@:native("Phaser.Physics.Impact.Components.BodyScale")
extern class BodyScale {
    public function new();
    public function setBodySize(width:Float, ?height:Float):Dynamic;
    public function setBodyScale(scaleX:Float, ?scaleY:Float):Dynamic;
}
