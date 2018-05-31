package phaser.math;

@:native("Phaser.Math.Vector2")
extern class Vector2 {
    public function new(?x:Float, ?y:Float);
    public var x:Float;
    public var y:Float;
    public function clone():phaser.math.Vector2;
    public function copy(src:phaser.math.Vector2):phaser.math.Vector2;
    public function setFromObject(obj:Vector2Like):phaser.math.Vector2;
    public function set(x:Float, ?y:Float):phaser.math.Vector2;
    public function setTo(x:Float, ?y:Float):phaser.math.Vector2;
    public function setToPolar(azimuth:Float, ?radius:Float):phaser.math.Vector2;
    public function equals(v:phaser.math.Vector2):Bool;
    public function angle():Float;
    public function add(src:phaser.math.Vector2):phaser.math.Vector2;
    public function subtract(src:phaser.math.Vector2):phaser.math.Vector2;
    public function multiply(src:phaser.math.Vector2):phaser.math.Vector2;
    public function scale(value:Float):phaser.math.Vector2;
    public function divide(src:phaser.math.Vector2):phaser.math.Vector2;
    public function negate():phaser.math.Vector2;
    public function distance(src:phaser.math.Vector2):Float;
    public function distanceSq(src:phaser.math.Vector2):Float;
    public function length():Float;
    public function lengthSq():Float;
    public function normalize():phaser.math.Vector2;
    public function normalizeRightHand():phaser.math.Vector2;
    public function dot(src:phaser.math.Vector2):Float;
    public function cross(src:phaser.math.Vector2):Float;
    public function lerp(src:phaser.math.Vector2, ?t:Float):phaser.math.Vector2;
    public function transformMat3(mat:phaser.math.Matrix3):phaser.math.Vector2;
    public function transformMat4(mat:phaser.math.Matrix4):phaser.math.Vector2;
    public function reset():phaser.math.Vector2;
    public function ZERO():Void;
}
