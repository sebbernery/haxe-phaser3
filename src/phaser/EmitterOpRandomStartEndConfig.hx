package phaser;

/**
 * Defines an operation yielding a random value within a range.
 * @typedef {object} EmitterOpRandomStartEndConfig
 *
 * @property {number} start - The starting value.
 * @property {number} end - The ending value.
 * @property {boolean} random - If false, this becomes {@link EmitterOpEaseConfig}.
 */
typedef EmitterOpRandomStartEndConfig = {
var start:Float;
var end:Float;
var random:Bool;
};
