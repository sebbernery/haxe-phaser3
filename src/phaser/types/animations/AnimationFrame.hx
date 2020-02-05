package phaser.types.animations;

/**
 * @typedef {object} Phaser.Types.Animations.AnimationFrame
 * @since 3.0.0
 *
 * @property {string} key - The key that the animation will be associated with. i.e. sprite.animations.play(key)
 * @property {(string|number)} frame - [description]
 * @property {number} [duration=0] - [description]
 * @property {boolean} [visible] - [description]
 */
typedef AnimationFrame = {
var key:String;
var frame:Dynamic;
    @:optional var duration:Float;
    @:optional var visible:Bool;
};