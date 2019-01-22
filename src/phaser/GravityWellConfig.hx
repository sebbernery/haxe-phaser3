package phaser;

/**
 * @typedef {object} GravityWellConfig
 *
 * @property {number} [x=0] - The x coordinate of the Gravity Well, in world space.
 * @property {number} [y=0] - The y coordinate of the Gravity Well, in world space.
 * @property {number} [power=0] - The power of the Gravity Well.
 * @property {number} [epsilon=100] - [description]
 * @property {number} [gravity=50] - The gravitational force of this Gravity Well.
 */
typedef GravityWellConfig = {
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var power:Float;
    @:optional var epsilon:Float;
    @:optional var gravity:Float;
};
