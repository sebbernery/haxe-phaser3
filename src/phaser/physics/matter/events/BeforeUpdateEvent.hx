package phaser.physics.matter.events;

/**
 * @typedef {object} Phaser.Physics.Matter.Events.BeforeUpdateEvent
 *
 * @property {number} timestamp - The Matter Engine `timing.timestamp` value for the event.
 * @property {any} source - The source object of the event.
 * @property {string} name - The name of the event.
 */
typedef BeforeUpdateEvent = {
var timestamp:Float;
var source:Dynamic;
var name:String;
};
