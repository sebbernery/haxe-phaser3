package phaser.device;

/**
 * Determines the canvas features of the browser running this Phaser Game instance.
 * These values are read-only and populated during the boot sequence of the game.
 * They are then referenced by internal game systems and are available for you to access
 * via `this.sys.game.device.canvasFeatures` from within any Scene.
 *
 * @typedef {object} Phaser.Device.CanvasFeatures
 * @since 3.0.0
 *
 * @property {boolean} supportInverseAlpha - Set to true if the browser supports inversed alpha.
 * @property {boolean} supportNewBlendModes - Set to true if the browser supports new canvas blend modes.
 */
typedef CanvasFeatures = {
var supportInverseAlpha:Bool;
var supportNewBlendModes:Bool;
};
