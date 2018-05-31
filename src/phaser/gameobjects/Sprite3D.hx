package phaser.gameobjects;

@:native("Phaser.GameObjects.Sprite3D")
extern class Sprite3D extends phaser.gameobjects.GameObject {
    public function new(scene:phaser.Scene, x:Float, y:Float, z:Float, texture:String, ?frame:Dynamic);
    public var gameObject:phaser.gameobjects.GameObject;
    public var position:phaser.math.Vector4;
    public var size:phaser.math.Vector2;
    public var scale:phaser.math.Vector2;
    public var adjustScaleX:Bool;
    public var adjustScaleY:Bool;
    public var visible:Bool;
    public var x:Float;
    public var y:Float;
    public var z:Float;
    public function project(camera:phaser.cameras.sprite3d.Camera):Void;
    public function setVisible(value:Bool):phaser.gameobjects.Sprite3D;
}
