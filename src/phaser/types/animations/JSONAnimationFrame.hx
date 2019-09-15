package phaser.types.animations;

/**
 * @typedef {object} Phaser.Types.Animations.JSONAnimationFrame
 * @since 3.0.0
 *
 * @property {string} key - The key of the Texture this AnimationFrame uses.
 * @property {(string|integer)} frame - The key of the Frame within the Texture that this AnimationFrame uses.
 * @property {number} duration - Additional time (in ms) that this frame should appear for during playback.
 */
typedef JSONAnimationFrame = {
var key:String;
var frame:Dynamic;
var duration:Float;
};
