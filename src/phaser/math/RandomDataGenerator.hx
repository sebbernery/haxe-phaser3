package phaser.math;

@:native("Phaser.Math.RandomDataGenerator")
extern class RandomDataGenerator {
    public function new(?seeds:Array<String>);
    public var signs:Array<Float>;
    public function init(seeds:Dynamic):Void;
    public function sow(seeds:Array<String>):Void;
    public function integer():Float;
    public function frac():Float;
    public function real():Float;
    public function integerInRange(min:Float, max:Float):Float;
    public function between(min:Float, max:Float):Float;
    public function realInRange(min:Float, max:Float):Float;
    public function normal():Float;
    public function uuid():String;
    public function pick(array:Array<Dynamic>):Dynamic;
    public function sign():Float;
    public function weightedPick(array:Array<Dynamic>):Dynamic;
    public function timestamp(min:Float, max:Float):Float;
    public function angle():Float;
    public function rotation():Float;
    public function state(?state:String):String;
    public function shuffle(?array:Array<Dynamic>):Array<Dynamic>;
}
