package phaser.animations.types;

/**
 * @typedef {object} Phaser.Animations.Types.GenerateFrameNumbers
 *
 * @property {integer} [start=0] - The starting frame of the animation.
 * @property {integer} [end=-1] - The ending frame of the animation.
 * @property {(boolean|integer)} [first=false] - A frame to put at the beginning of the animation, before `start` or `outputArray` or `frames`.
 * @property {Phaser.Animations.Types.AnimationFrame[]} [outputArray=[]] - An array to concatenate the output onto.
 * @property {(boolean|integer[])} [frames=false] - A custom sequence of frames.
 */
typedef GenerateFrameNumbers = {
    @:optional var start:Int;
    @:optional var end:Int;
    @:optional var first:Dynamic;
    @:optional var outputArray:Array<phaser.animations.types.AnimationFrame>;
    @:optional var frames:Dynamic;
};
