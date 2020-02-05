package phaser.physics.matter.events;

/**
 * @typedef {object} Phaser.Physics.Matter.Events.CollisionEndEvent
 *
 * @property {Phaser.Types.Physics.Matter.MatterCollisionData[]} pairs - A list of all affected pairs in the collision.
 * @property {number} timestamp - The Matter Engine `timing.timestamp` value for the event.
 * @property {any} source - The source object of the event.
 * @property {string} name - The name of the event.
 */
typedef CollisionEndEvent = {
var pairs:Array<phaser.types.physics.matter.MatterCollisionData>;
var timestamp:Float;
var source:Dynamic;
var name:String;
};
