package phaser;

typedef AnimationConfig = {
    @:optional var key:String;
    @:optional var frames:Array<AnimationFrameConfig>;
    @:optional var defaultTextureKey:String;
    @:optional var frameRate:Int;
    @:optional var duration:Int;
    @:optional var skipMissedFrames:Bool;
    @:optional var delay:Int;
    @:optional var repeat:Int;
    @:optional var repeatDelay:Int;
    @:optional var yoyo:Bool;
    @:optional var showOnStart:Bool;
    @:optional var hideOnComplete:Bool;
};
