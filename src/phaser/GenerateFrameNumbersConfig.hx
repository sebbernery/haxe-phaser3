package phaser;

typedef GenerateFrameNumbersConfig = {
    @:optional var start:Int;
    @:optional var end:Int;
    @:optional var first:Bool;
    @:optional var outputArray:Array<AnimationFrameConfig>;
    @:optional var frames:Bool;
};
