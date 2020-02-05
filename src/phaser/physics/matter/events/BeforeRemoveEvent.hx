package phaser.physics.matter.events;

/**
 * @typedef {object} Phaser.Physics.Matter.Events.BeforeRemoveEvent
 *
 * @property {any[]} object - An array of the object(s) to be removed. May be a single body, constraint, composite or a mixture of these.
 * @property {any} source - The source object of the event.
 * @property {string} name - The name of the event.
 */
typedef BeforeRemoveEvent = {
var object:Array<Dynamic>;
var source:Dynamic;
var name:String;
};
