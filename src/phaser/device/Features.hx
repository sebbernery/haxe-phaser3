package phaser.device;

/**
 * Determines the features of the browser running this Phaser Game instance.
 * These values are read-only and populated during the boot sequence of the game.
 * They are then referenced by internal game systems and are available for you to access
 * via `this.sys.game.device.features` from within any Scene.
 *
 * @typedef {object} Phaser.Device.Features
 * @since 3.0.0
 *
 * @property {?boolean} canvasBitBltShift - True if canvas supports a 'copy' bitblt onto itself when the source and destination regions overlap.
 * @property {boolean} canvas - Is canvas available?
 * @property {boolean} file - Is file available?
 * @property {boolean} fileSystem - Is fileSystem available?
 * @property {boolean} getUserMedia - Does the device support the getUserMedia API?
 * @property {boolean} littleEndian - Is the device big or little endian? (only detected if the browser supports TypedArrays)
 * @property {boolean} localStorage - Is localStorage available?
 * @property {boolean} pointerLock - Is Pointer Lock available?
 * @property {boolean} support32bit - Does the device context support 32bit pixel manipulation using array buffer views?
 * @property {boolean} vibration - Does the device support the Vibration API?
 * @property {boolean} webGL - Is webGL available?
 * @property {boolean} worker - Is worker available?
 */
typedef Features = {
var canvasBitBltShift:Bool;
var canvas:Bool;
var file:Bool;
var fileSystem:Bool;
var getUserMedia:Bool;
var littleEndian:Bool;
var localStorage:Bool;
var pointerLock:Bool;
var support32bit:Bool;
var vibration:Bool;
var webGL:Bool;
var worker:Bool;
};
