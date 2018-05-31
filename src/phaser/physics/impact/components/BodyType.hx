package phaser.physics.impact.components;

@:native("Phaser.Physics.Impact.Components.BodyType")
extern class BodyType {
    public function new();
    public function getBodyType():Float;
    public function setTypeNone():phaser.gameobjects.GameObject;
    public function setTypeA():phaser.gameobjects.GameObject;
    public function setTypeB():phaser.gameobjects.GameObject;
}
