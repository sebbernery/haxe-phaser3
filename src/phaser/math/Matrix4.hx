package phaser.math;

@:native("Phaser.Math.Matrix4")
extern class Matrix4 {
    public function new(?m:phaser.math.Matrix4);
    public var val:js.html.Float32Array;
    public function clone():phaser.math.Matrix4;
    public function set(src:phaser.math.Matrix4):phaser.math.Matrix4;
    public function copy(src:phaser.math.Matrix4):phaser.math.Matrix4;
    public function fromArray(a:Array<Dynamic>):phaser.math.Matrix4;
    public function zero():phaser.math.Matrix4;
    public function xyz(x:Float, y:Float, z:Float):phaser.math.Matrix4;
    public function scaling(x:Float, y:Float, z:Float):phaser.math.Matrix4;
    public function identity():phaser.math.Matrix4;
    public function transpose():phaser.math.Matrix4;
    public function invert():phaser.math.Matrix4;
    public function adjoint():phaser.math.Matrix4;
    public function determinant():Float;
    public function multiply(src:phaser.math.Matrix4):phaser.math.Matrix4;
    public function multiplyLocal(src:phaser.math.Matrix4):phaser.math.Matrix4;
    public function translate(v:Dynamic):phaser.math.Matrix4;
    public function scale(v:Dynamic):phaser.math.Matrix4;
    public function makeRotationAxis(axis:Dynamic, angle:Float):phaser.math.Matrix4;
    public function rotate(rad:Float, axis:phaser.math.Vector3):phaser.math.Matrix4;
    public function rotateX(rad:Float):phaser.math.Matrix4;
    public function rotateY(rad:Float):phaser.math.Matrix4;
    public function rotateZ(rad:Float):phaser.math.Matrix4;
    public function fromRotationTranslation(q:phaser.math.Quaternion, v:phaser.math.Vector3):phaser.math.Matrix4;
    public function fromQuat(q:phaser.math.Quaternion):phaser.math.Matrix4;
    public function frustum(left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float):phaser.math.Matrix4;
    public function perspective(fovy:Float, aspect:Float, near:Float, far:Float):phaser.math.Matrix4;
    public function perspectiveLH(width:Float, height:Float, near:Float, far:Float):phaser.math.Matrix4;
    public function ortho(left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float):phaser.math.Matrix4;
    public function lookAt(eye:phaser.math.Vector3, center:phaser.math.Vector3, up:phaser.math.Vector3):phaser.math.Matrix4;
    public function yawPitchRoll(yaw:Float, pitch:Float, roll:Float):phaser.math.Matrix4;
    public function setWorldMatrix(rotation:phaser.math.Vector3, position:phaser.math.Vector3, scale:phaser.math.Vector3, ?viewMatrix:phaser.math.Matrix4, ?projectionMatrix:phaser.math.Matrix4):phaser.math.Matrix4;
}
