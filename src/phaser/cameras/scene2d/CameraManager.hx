package phaser.cameras.scene2d;

@:native("Phaser.Cameras.Scene2D.CameraManager")
extern class CameraManager {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public var currentCameraId:Float;
    public var cameras:Array<phaser.cameras.scene2d.Camera>;
    public var cameraPool:Array<phaser.cameras.scene2d.Camera>;
    public var main:phaser.cameras.scene2d.Camera;
    public var baseScale:Float;
    public function add(?x:Float, ?y:Float, ?width:Float, ?height:Float, ?makeMain:Bool, ?name:String):phaser.cameras.scene2d.Camera;
    public function addExisting(camera:phaser.cameras.scene2d.Camera):phaser.cameras.scene2d.Camera;
    public function fromJSON(config:Dynamic):phaser.cameras.scene2d.CameraManager;
    public function getCamera(name:String):phaser.cameras.scene2d.Camera;
    public function getCameraBelowPointer(pointer:phaser.input.Pointer):phaser.cameras.scene2d.Camera;
    public function remove(camera:phaser.cameras.scene2d.Camera):Void;
    public function render(renderer:Dynamic, children:Array<phaser.gameobjects.GameObject>, interpolation:Float):Void;
    public function resetAll():phaser.cameras.scene2d.Camera;
    public function update(timestep:Float, delta:Float):Void;
    public function resize(width:Float, height:Float):Void;
}
