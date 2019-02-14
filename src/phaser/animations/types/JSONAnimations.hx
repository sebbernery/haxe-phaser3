package phaser.animations.types;

/**
 * @typedef {object} Phaser.Animations.Types.JSONAnimations
 *
 * @property {Phaser.Animations.Types.JSONAnimation[]} anims - An array of all Animations added to the Animation Manager.
 * @property {number} globalTimeScale - The global time scale of the Animation Manager.
 */
typedef JSONAnimations = {
var anims:Array<phaser.animations.types.JSONAnimation>;
var globalTimeScale:Float;
};
