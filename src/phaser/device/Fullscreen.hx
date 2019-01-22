package phaser.device;

/**
 * Determines the full screen support of the browser running this Phaser Game instance.
 * These values are read-only and populated during the boot sequence of the game.
 * They are then referenced by internal game systems and are available for you to access
 * via `this.sys.game.device.fullscreen` from within any Scene.
 *
 * @typedef {object} Phaser.Device.Fullscreen
 * @since 3.0.0
 *
 * @property {boolean} available - Does the browser support the Full Screen API?
 * @property {boolean} keyboard - Does the browser support access to the Keyboard during Full Screen mode?
 * @property {string} cancel - If the browser supports the Full Screen API this holds the call you need to use to cancel it.
 * @property {string} request - If the browser supports the Full Screen API this holds the call you need to use to activate it.
 */
typedef Fullscreen = {
var available:Bool;
var keyboard:Bool;
var cancel:String;
var request:String;
};
