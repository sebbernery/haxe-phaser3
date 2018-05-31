package phaser.cameras.sprite3d;

@:native("Phaser.Cameras.Sprite3D.CameraManager")
extern class CameraManager {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public var cameras:Array<phaser.cameras.sprite3d.Camera>;
    public function add(?fieldOfView:Float, ?width:Float, ?height:Float):phaser.cameras.sprite3d.PerspectiveCamera;
    public function addOrthographicCamera(width:Float, height:Float):phaser.cameras.sprite3d.OrthographicCamera;
    public function addPerspectiveCamera(?fieldOfView:Float, ?width:Float, ?height:Float):phaser.cameras.sprite3d.PerspectiveCamera;
    public function getCamera(name:String):phaser.cameras.sprite3d.OrthographicCamera;
    public function removeCamera(camera:Dynamic):Void;
    public function removeAll():phaser.cameras.sprite3d.OrthographicCamera;
    public function update(timestep:Float, delta:Float):Void;
}
