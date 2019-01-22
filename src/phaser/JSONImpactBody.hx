package phaser;

/**
 * @typedef {object} JSONImpactBody
 * @todo Replace object types
 *
 * @property {string} name - [description]
 * @property {object} size - [description]
 * @property {object} pos - [description]
 * @property {object} vel - [description]
 * @property {object} accel - [description]
 * @property {object} friction - [description]
 * @property {object} maxVel - [description]
 * @property {number} gravityFactor - [description]
 * @property {number} bounciness - [description]
 * @property {number} minBounceVelocity - [description]
 * @property {Phaser.Physics.Impact.TYPE} type - [description]
 * @property {Phaser.Physics.Impact.TYPE} checkAgainst - [description]
 * @property {Phaser.Physics.Impact.COLLIDES} collides - [description]
 */
typedef JSONImpactBody = {
var name:String;
var size:Dynamic;
var pos:Dynamic;
var vel:Dynamic;
var accel:Dynamic;
var friction:Dynamic;
var maxVel:Dynamic;
var gravityFactor:Float;
var bounciness:Float;
var minBounceVelocity:Float;
var type:Dynamic;
var checkAgainst:Dynamic;
var collides:Dynamic;
};
