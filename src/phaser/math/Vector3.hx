package phaser.math;

@:native("Phaser.Math.Vector3")
extern class Vector3 {
    public function new(?x:Float, ?y:Float, ?z:Float);
    public var x:Float;
    public var y:Float;
    public var z:Float;
    public function up():phaser.math.Vector3;
    public function clone():phaser.math.Vector3;
    public function crossVectors(a:phaser.math.Vector3, b:phaser.math.Vector3):phaser.math.Vector3;
    public function equals(v:phaser.math.Vector3):Bool;
    public function copy(src:Dynamic):phaser.math.Vector3;
    public function set(x:Dynamic, ?y:Float, ?z:Float):phaser.math.Vector3;
    public function add(v:Dynamic):phaser.math.Vector3;
    public function subtract(v:Dynamic):phaser.math.Vector3;
    public function multiply(v:Dynamic):phaser.math.Vector3;
    public function scale(scale:Float):phaser.math.Vector3;
    public function divide(v:Dynamic):phaser.math.Vector3;
    public function negate():phaser.math.Vector3;
    public function distance(v:Dynamic):Float;
    public function distanceSq(v:Dynamic):Float;
    public function length():Float;
    public function lengthSq():Float;
    public function normalize():phaser.math.Vector3;
    public function dot(v:phaser.math.Vector3):Float;
    public function cross(v:phaser.math.Vector3):phaser.math.Vector3;
    public function lerp(v:phaser.math.Vector3, ?t:Float):phaser.math.Vector3;
    public function transformMat3(mat:phaser.math.Matrix3):phaser.math.Vector3;
    public function transformMat4(mat:phaser.math.Matrix4):phaser.math.Vector3;
    public function transformCoordinates(mat:phaser.math.Matrix4):phaser.math.Vector3;
    public function transformQuat(q:phaser.math.Quaternion):phaser.math.Vector3;
    public function project(mat:phaser.math.Matrix4):phaser.math.Vector3;
    public function unproject(viewport:phaser.math.Vector4, invProjectionView:phaser.math.Matrix4):phaser.math.Vector3;
    public function reset():phaser.math.Vector3;
}
