package phaser.cameras.sprite3d;

@:native("Phaser.Cameras.Sprite3D.Camera")
extern class Camera {
    public function new(scene:phaser.Scene);
    public var x:Float;
    public var y:Float;
    public var z:Float;
    public function setPosition(x:Float, y:Float, z:Float):phaser.cameras.sprite3d.Camera;
    public function setScene(scene:phaser.Scene):phaser.cameras.sprite3d.Camera;
    public function setPixelScale(value:Float):phaser.cameras.sprite3d.Camera;
    public function add(sprite3D:phaser.gameobjects.Sprite3D):phaser.gameobjects.Sprite3D;
    public function remove(child:phaser.gameobjects.GameObject):phaser.cameras.sprite3d.Camera;
    public function clear():phaser.cameras.sprite3d.Camera;
    public function getChildren():Array<Dynamic>;
    public function create(x:Float, y:Float, z:Float, key:String, frame:Dynamic, ?visible:Bool):phaser.gameobjects.Sprite3D;
    public function createMultiple(quantity:Float, key:String, frame:Dynamic, ?visible:Bool):Array<phaser.gameobjects.Sprite3D>;
    public function createRect(size:Dynamic, spacing:Dynamic, key:String, ?frame:Dynamic):Array<phaser.gameobjects.Sprite3D>;
    public function randomSphere(?radius:Float, ?sprites:Array<phaser.gameobjects.Sprite3D>):phaser.cameras.sprite3d.Camera;
    public function randomCube(?scale:Float, ?sprites:Array<phaser.gameobjects.Sprite3D>):phaser.cameras.sprite3d.Camera;
    public function translateChildren(vec3:phaser.math.Vector3, sprites:Array<phaser.gameobjects.Sprite3D>):phaser.cameras.sprite3d.Camera;
    public function transformChildren(mat4:phaser.math.Matrix4, sprites:Array<phaser.gameobjects.Sprite3D>):phaser.cameras.sprite3d.Camera;
    public function setViewport(width:Float, height:Float):phaser.cameras.sprite3d.Camera;
    public function translate(x:Dynamic, ?y:Float, ?z:Float):phaser.cameras.sprite3d.Camera;
    public function lookAt(x:Dynamic, ?y:Float, ?z:Float):phaser.cameras.sprite3d.Camera;
    public function rotate(radians:Float, axis:phaser.math.Vector3):phaser.cameras.sprite3d.Camera;
    public function rotateAround(point:phaser.math.Vector3, radians:Float, axis:phaser.math.Vector3):phaser.cameras.sprite3d.Camera;
    public function project(vec:phaser.math.Vector3, out:phaser.math.Vector4):phaser.math.Vector4;
    public function unproject(vec:phaser.math.Vector4, out:phaser.math.Vector3):phaser.math.Vector3;
    public function getPickRay(x:Float, ?y:Float):RayDef;
    public function updateChildren():phaser.cameras.sprite3d.Camera;
    public function update():phaser.cameras.sprite3d.Camera;
    public function updateBillboardMatrix():Void;
    public function getPointSize(vec:phaser.math.Vector2, size:phaser.math.Vector2, out:phaser.math.Vector2):phaser.math.Vector2;
    public function destroy():Void;
    public function setX(value:Float):phaser.cameras.sprite3d.Camera;
    public function setY(value:Float):phaser.cameras.sprite3d.Camera;
    public function setZ(value:Float):phaser.cameras.sprite3d.Camera;
}
