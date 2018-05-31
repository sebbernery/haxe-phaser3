package phaser.math;

@:native("Phaser.Math.Matrix3")
extern class Matrix3 {
    public function new(?m:phaser.math.Matrix3);
    public var val:js.html.Float32Array;
    public function clone():phaser.math.Matrix3;
    public function set(src:phaser.math.Matrix3):phaser.math.Matrix3;
    public function copy(src:phaser.math.Matrix3):phaser.math.Matrix3;
    public function fromMat4(m:phaser.math.Matrix4):phaser.math.Matrix3;
    public function fromArray(a:Array<Dynamic>):phaser.math.Matrix3;
    public function identity():phaser.math.Matrix3;
    public function transpose():phaser.math.Matrix3;
    public function invert():phaser.math.Matrix3;
    public function adjoint():phaser.math.Matrix3;
    public function determinant():Float;
    public function multiply(src:phaser.math.Matrix3):phaser.math.Matrix3;
    public function translate(v:Dynamic):phaser.math.Matrix3;
    public function rotate(rad:Float):phaser.math.Matrix3;
    public function scale(v:Dynamic):phaser.math.Matrix3;
    public function fromQuat(q:phaser.math.Quaternion):phaser.math.Matrix3;
    public function normalFromMat4(m:phaser.math.Matrix4):phaser.math.Matrix3;
}
