package phaser.input;

/**
 * A Phaser Input Event Data object.
 *
 * This object is passed to the registered event listeners and allows you to stop any further propagation.
 *
 * @typedef {object} Phaser.Input.EventData
 *
 * @property {boolean} [cancelled=false] - The cancelled state of this Event.
 * @property {function} stopPropagation - Call this method to stop this event from passing any further down the event chain.
 */
typedef EventData = {
    @:optional var cancelled:Bool;
var stopPropagation:Dynamic;
};
