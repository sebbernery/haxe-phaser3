package phaser.physics.matter.events;

/**
 * @typedef {object} Phaser.Physics.Matter.Events.BeforeAddEvent
 *
 * @property {any[]} object - An array of the object(s) to be added. May be a single body, constraint, composite or a mixture of these.
 * @property {any} source - The source object of the event.
 * @property {string} name - The name of the event.
 */
typedef BeforeAddEvent = {
var object:Array<Dynamic>;
var source:Dynamic;
var name:String;
};
