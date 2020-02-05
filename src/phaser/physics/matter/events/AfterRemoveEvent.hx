package phaser.physics.matter.events;

/**
 * @typedef {object} Phaser.Physics.Matter.Events.AfterRemoveEvent
 *
 * @property {any[]} object - An array of the object(s) that were removed. May be a single body, constraint, composite or a mixture of these.
 * @property {any} source - The source object of the event.
 * @property {string} name - The name of the event.
 */
typedef AfterRemoveEvent = {
var object:Array<Dynamic>;
var source:Dynamic;
var name:String;
};
