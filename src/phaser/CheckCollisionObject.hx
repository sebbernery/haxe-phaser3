package phaser;

/**
 * @typedef {object} CheckCollisionObject
 *
 * @property {boolean} up - Will bodies collide with the top side of the world bounds?
 * @property {boolean} down - Will bodies collide with the bottom side of the world bounds?
 * @property {boolean} left - Will bodies collide with the left side of the world bounds?
 * @property {boolean} right - Will bodies collide with the right side of the world bounds?
 */
typedef CheckCollisionObject = {
var up:Bool;
var down:Bool;
var left:Bool;
var right:Bool;
};
