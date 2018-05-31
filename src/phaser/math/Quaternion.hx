package phaser.math;

@:native("Phaser.Math.Quaternion")
extern class Quaternion {
    public function new(?x:Float, ?y:Float, ?z:Float, ?w:Float);
    public var x:Float;
    public var y:Float;
    public var z:Float;
    public var w:Float;
    public function copy(src:Dynamic):phaser.math.Quaternion;
    public function set(?x:Dynamic, ?y:Float, ?z:Float, ?w:Float):phaser.math.Quaternion;
    public function add(v:Dynamic):phaser.math.Quaternion;
    public function subtract(v:Dynamic):phaser.math.Quaternion;
    public function scale(scale:Float):phaser.math.Quaternion;
    public function length():Float;
    public function lengthSq():Float;
    public function normalize():phaser.math.Quaternion;
    public function dot(v:Dynamic):Float;
    public function lerp(v:Dynamic, ?t:Float):phaser.math.Quaternion;
    public function rotationTo(a:phaser.math.Vector3, b:phaser.math.Vector3):phaser.math.Quaternion;
    public function setAxes(view:phaser.math.Vector3, right:phaser.math.Vector3, up:phaser.math.Vector3):phaser.math.Quaternion;
    public function identity():phaser.math.Quaternion;
    public function setAxisAngle(axis:phaser.math.Vector3, rad:Float):phaser.math.Quaternion;
    public function multiply(b:Dynamic):phaser.math.Quaternion;
    public function slerp(b:Dynamic, t:Float):phaser.math.Quaternion;
    public function invert():phaser.math.Quaternion;
    public function conjugate():phaser.math.Quaternion;
    public function rotateX(rad:Float):phaser.math.Quaternion;
    public function rotateY(rad:Float):phaser.math.Quaternion;
    public function rotateZ(rad:Float):phaser.math.Quaternion;
    public function calculateW():phaser.math.Quaternion;
    public function fromMat3(mat:phaser.math.Matrix3):phaser.math.Quaternion;
}
