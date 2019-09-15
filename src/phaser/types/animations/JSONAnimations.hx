package phaser.types.animations;

/**
 * @typedef {object} Phaser.Types.Animations.JSONAnimations
 * @since 3.0.0
 *
 * @property {Phaser.Types.Animations.JSONAnimation[]} anims - An array of all Animations added to the Animation Manager.
 * @property {number} globalTimeScale - The global time scale of the Animation Manager.
 */
typedef JSONAnimations = {
var anims:Array<phaser.types.animations.JSONAnimation>;
var globalTimeScale:Float;
};
