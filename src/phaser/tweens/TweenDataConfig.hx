package phaser.tweens;

typedef TweenDataConfig = {
var target:Dynamic;
var key:String;
var getEndValue:Dynamic;
var getStartValue:Dynamic;
var ease:Dynamic;
    @:optional var duration:Float;
    @:optional var totalDuration:Float;
    @:optional var delay:Float;
    @:optional var yoyo:Bool;
    @:optional var hold:Float;
    @:optional var repeat:Int;
    @:optional var repeatDelay:Float;
    @:optional var flipX:Bool;
    @:optional var flipY:Bool;
    @:optional var progress:Float;
    @:optional var elapsed:Float;
    @:optional var repeatCounter:Int;
    @:optional var start:Float;
    @:optional var current:Float;
    @:optional var end:Float;
    @:optional var t1:Float;
    @:optional var t2:Float;
    @:optional var gen:TweenDataGenConfig;
    @:optional var state:Int;
};
