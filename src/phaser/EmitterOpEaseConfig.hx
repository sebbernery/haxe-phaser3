package phaser;

/**
 * Defines an operation yielding a value incremented continuously across a range.
 * @typedef {object} EmitterOpEaseConfig
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
