package phaser.types.gameobjects.particles;

/**
 * Defines an operation yielding a value incremented continuously across a range.
 *
 * @typedef {object} Phaser.Types.GameObjects.Particles.EmitterOpEaseConfig
 * @since 3.0.0
 *
 * @property {number} start - The starting value.
 * @property {number} end - The ending value.
 * @property {string} [ease='Linear'] - The name of the easing function.
 */
typedef EmitterOpEaseConfig = {
var start:Float;
var end:Float;
    @:optional var ease:String;
};
