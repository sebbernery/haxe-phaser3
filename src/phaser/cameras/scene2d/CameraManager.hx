package phaser.cameras.scene2d;

@:native("Phaser.Cameras.Scene2D.CameraManager")
extern class CameraManager {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public var roundPixels:Bool;
    public var cameras:Array<phaser.cameras.scene2d.Camera>;
    public var main:phaser.cameras.scene2d.Camera;
    public var baseScale:Float;
    public function add(?x:Int, ?y:Int, ?width:Int, ?height:Int, ?makeMain:Bool, ?name:String):phaser.cameras.scene2d.Camera;
    public function addExisting(camera:phaser.cameras.scene2d.Camera, ?makeMain:Bool):phaser.cameras.scene2d.Camera;
    public function getTotal(?isVisible:Bool):Int;
    public function fromJSON(config:Dynamic):phaser.cameras.scene2d.CameraManager;
    public function getCamera(name:String):phaser.cameras.scene2d.Camera;
    public function getCamerasBelowPointer(pointer:phaser.input.Pointer):Array<phaser.cameras.scene2d.Camera>;
    public function remove(camera:Dynamic, ?runDestroy:Bool):Int;
    public function render(renderer:Dynamic, children:Array<phaser.gameobjects.GameObject>, interpolation:Float):Void;
    public function resetAll():phaser.cameras.scene2d.Camera;
    public function update(timestep:Float, delta:Float):Void;
    public function resize(width:Float, height:Float):Void;
}
