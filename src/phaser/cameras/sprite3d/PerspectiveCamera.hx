package phaser.cameras.sprite3d;

@:native("Phaser.Cameras.Sprite3D.PerspectiveCamera")
extern class PerspectiveCamera extends phaser.cameras.sprite3d.Camera {
    public function new(scene:phaser.Scene, ?fieldOfView:Int, ?viewportWidth:Int, ?viewportHeight:Int);
    public var viewportWidth:Int;
    public var viewportHeight:Int;
    public var fieldOfView:Int;
    public function setFOV(value:Float):phaser.cameras.sprite3d.PerspectiveCamera;
}
