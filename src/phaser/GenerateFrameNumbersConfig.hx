package phaser;

/**
 * @typedef {object} GenerateFrameNumbersConfig
 *
 * @property {integer} [start=0] - The starting frame of the animation.
 * @property {integer} [end=-1] - The ending frame of the animation.
 * @property {(boolean|integer)} [first=false] - A frame to put at the beginning of the animation, before `start` or `outputArray` or `frames`.
 * @property {AnimationFrameConfig[]} [outputArray=[]] - An array to concatenate the output onto.
 * @property {(boolean|integer[])} [frames=false] - A custom sequence of frames.
 */
typedef GenerateFrameNumbersConfig = {
    @:optional var start:Int;
    @:optional var end:Int;
    @:optional var first:Dynamic;
    @:optional var outputArray:Array<AnimationFrameConfig>;
    @:optional var frames:Dynamic;
};
