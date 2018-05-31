package phaser;

typedef JSONAnimation = {
var key:String;
var type:String;
var frames:Array<JSONAnimationFrame>;
var frameRate:Int;
var duration:Int;
var skipMissedFrames:Bool;
var delay:Int;
var repeat:Int;
var repeatDelay:Int;
var yoyo:Bool;
var showOnStart:Bool;
var hideOnComplete:Bool;
};
