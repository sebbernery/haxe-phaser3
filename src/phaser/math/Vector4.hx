package phaser.math;

@:native("Phaser.Math.Vector4")
extern class Vector4 {
    public function new(?x:Float, ?y:Float, ?z:Float, ?w:Float);
    public var x:Float;
    public var y:Float;
    public var z:Float;
    public var w:Float;
    public function clone():phaser.math.Vector4;
    public function copy(src:phaser.math.Vector4):phaser.math.Vector4;
    public function equals(v:phaser.math.Vector4):Bool;
    public function set(x:Dynamic, y:Float, z:Float, w:Float):phaser.math.Vector4;
    public function add(v:Dynamic):phaser.math.Vector4;
    public function subtract(v:Dynamic):phaser.math.Vector4;
    public function scale(scale:Float):phaser.math.Vector4;
    public function length():Float;
    public function lengthSq():Float;
    public function normalize():phaser.math.Vector4;
    public function dot(v:phaser.math.Vector4):Float;
    public function lerp(v:phaser.math.Vector4, ?t:Float):phaser.math.Vector4;
    public function multiply(v:Dynamic):phaser.math.Vector4;
    public function divide(v:Dynamic):phaser.math.Vector4;
    public function distance(v:Dynamic):Float;
    public function distanceSq(v:Dynamic):Float;
    public function negate():phaser.math.Vector4;
    public function transformMat4(mat:phaser.math.Matrix4):phaser.math.Vector4;
    public function transformQuat(q:phaser.math.Quaternion):phaser.math.Vector4;
    public function reset():phaser.math.Vector4;
}
