package phaser.physics.matter.components;

@:native("Phaser.Physics.Matter.Components.Sleep")
extern class Sleep {
    public function new();
    public function setSleepThreshold(?value:Float):phaser.gameobjects.GameObject;
    public function setSleepEvents(start:Bool, end:Bool):phaser.gameobjects.GameObject;
    public function setSleepStartEvent(value:Bool):phaser.gameobjects.GameObject;
    public function setSleepEndEvent(value:Bool):phaser.gameobjects.GameObject;
}
