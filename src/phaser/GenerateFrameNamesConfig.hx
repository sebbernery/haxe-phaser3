package phaser;

/**
 * @typedef {object} GenerateFrameNamesConfig
 *
 * @property {string} [prefix=''] - [description]
 * @property {integer} [start=0] - [description]
 * @property {integer} [end=0] - [description]
 * @property {string} [suffix=''] - [description]
 * @property {integer} [zeroPad=0] - [description]
 * @property {AnimationFrameConfig[]} [outputArray=[]] - [description]
 * @property {boolean} [frames=false] - [description]
 */
typedef GenerateFrameNamesConfig = {
    @:optional var prefix:String;
    @:optional var start:Int;
    @:optional var end:Int;
    @:optional var suffix:String;
    @:optional var zeroPad:Int;
    @:optional var outputArray:Array<AnimationFrameConfig>;
    @:optional var frames:Bool;
};
