package phaser.cameras.sprite3d;

@:native("Phaser.Cameras.Sprite3D.OrthographicCamera")
extern class OrthographicCamera extends phaser.cameras.sprite3d.Camera {
    public function new(scene:phaser.Scene, ?viewportWidth:Int, ?viewportHeight:Int);
    public var viewportWidth:Int;
    public var viewportHeight:Int;
    public var near:Float;
    public var zoom:Float;
    public function setToOrtho(yDown:Float, ?viewportWidth:Float, ?viewportHeight:Float):phaser.cameras.sprite3d.OrthographicCamera;
}
