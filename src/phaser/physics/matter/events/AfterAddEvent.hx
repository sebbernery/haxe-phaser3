package phaser.physics.matter.events;

/**
 * @typedef {object} Phaser.Physics.Matter.Events.AfterAddEvent
 *
 * @property {any[]} object - An array of the object(s) that have been added. May be a single body, constraint, composite or a mixture of these.
 * @property {any} source - The source object of the event.
 * @property {string} name - The name of the event.
 */
typedef AfterAddEvent = {
var object:Array<Dynamic>;
var source:Dynamic;
var name:String;
};
