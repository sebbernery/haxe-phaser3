package phaser.physics.matter.components;

@:native("Phaser.Physics.Matter.Components.Transform")
extern class Transform {
    public function new();
    public var x:Float;
    public var y:Float;
    public var scaleX:Float;
    public var scaleY:Float;
    public var angle:Float;
    public var rotation:Float;
    public function setPosition(?x:Float, ?y:Float):Void;
    public function setRotation(?radians:Float):phaser.gameobjects.GameObject;
    public function setFixedRotation():phaser.gameobjects.GameObject;
    public function setAngle(?degrees:Float):phaser.gameobjects.GameObject;
    public function setScale(?x:Float, ?y:Float, ?point:phaser.math.Vector2):phaser.gameobjects.GameObject;
}
