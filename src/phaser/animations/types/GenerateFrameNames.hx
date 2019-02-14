package phaser.animations.types;

/**
 * @typedef {object} Phaser.Animations.Types.GenerateFrameNames
 *
 * @property {string} [prefix=''] - The string to append to every resulting frame name if using a range or an array of `frames`.
 * @property {integer} [start=0] - If `frames` is not provided, the number of the first frame to return.
 * @property {integer} [end=0] - If `frames` is not provided, the number of the last frame to return.
 * @property {string} [suffix=''] - The string to append to every resulting frame name if using a range or an array of `frames`.
 * @property {integer} [zeroPad=0] - The minimum expected lengths of each resulting frame's number. Numbers will be left-padded with zeroes until they are this long, then prepended and appended to create the resulting frame name.
 * @property {Phaser.Animations.Types.AnimationFrame[]} [outputArray=[]] - The array to append the created configuration objects to.
 * @property {boolean} [frames=false] - If provided as an array, the range defined by `start` and `end` will be ignored and these frame numbers will be used.
 */
typedef GenerateFrameNames = {
    @:optional var prefix:String;
    @:optional var start:Int;
    @:optional var end:Int;
    @:optional var suffix:String;
    @:optional var zeroPad:Int;
    @:optional var outputArray:Array<phaser.animations.types.AnimationFrame>;
    @:optional var frames:Bool;
};