package phaser.physics.impact.components;

@:native("Phaser.Physics.Impact.Components.SetGameObject")
extern class SetGameObject {
    public function new();
    public function setGameObject(gameObject:phaser.gameobjects.GameObject, ?sync:Bool):phaser.gameobjects.GameObject;
    public function syncGameObject():phaser.gameobjects.GameObject;
}
