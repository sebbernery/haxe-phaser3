package phaser;

/**
 * @typedef {object} JSONImpactBody
 * @todo Replace object types
 *
 * @property {string} name - [description]
 * @property {object} size - [description]
 * @property {object} pos - The entity's position in the game world.
 * @property {object} vel - Current velocity in pixels per second.
 * @property {object} accel - Current acceleration to be added to the entity's velocity per second. E.g. an entity with a `vel.x` of 0 and `accel.x` of 10 will have a `vel.x` of 100 ten seconds later.
 * @property {object} friction - Deceleration to be subtracted from the entity's velocity per second. Only applies if `accel` is 0.
 * @property {object} maxVel - The maximum velocity a body can move.
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
