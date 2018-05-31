package phaser.physics.impact.components;

@:native("Phaser.Physics.Impact.Components.CheckAgainst")
extern class CheckAgainst {
    public function new();
    public var checkAgainst:Float;
    public function setAvsB():phaser.gameobjects.GameObject;
    public function setBvsA():phaser.gameobjects.GameObject;
    public function setCheckAgainstNone():phaser.gameobjects.GameObject;
    public function setCheckAgainstA():phaser.gameobjects.GameObject;
    public function setCheckAgainstB():phaser.gameobjects.GameObject;
}
