package phaser;

typedef GenerateFrameNamesConfig = {
    @:optional var prefix:String;
    @:optional var start:Int;
    @:optional var end:Int;
    @:optional var suffix:String;
    @:optional var zeroPad:Int;
    @:optional var outputArray:Array<AnimationFrameConfig>;
    @:optional var frames:Bool;
};
