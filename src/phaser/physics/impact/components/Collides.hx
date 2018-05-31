package phaser.physics.impact.components;

@:native("Phaser.Physics.Impact.Components.Collides")
extern class Collides {
    public function new();
    public var collides:Float;
    public function setCollideCallback(callback:CollideCallback, scope:Dynamic):phaser.gameobjects.GameObject;
    public function setCollidesNever():phaser.gameobjects.GameObject;
    public function setLiteCollision():phaser.gameobjects.GameObject;
    public function setPassiveCollision():phaser.gameobjects.GameObject;
    public function setActiveCollision():phaser.gameobjects.GameObject;
    public function setFixedCollision():phaser.gameobjects.GameObject;
}
