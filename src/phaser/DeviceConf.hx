package phaser;

/**
 * @typedef {object} Phaser.DeviceConf
 *
 * @property {Phaser.Device.OS} os - The OS Device functions.
 * @property {Phaser.Device.Browser} browser - The Browser Device functions.
 * @property {Phaser.Device.Features} features - The Features Device functions.
 * @property {Phaser.Device.Input} input - The Input Device functions.
 * @property {Phaser.Device.Audio} audio - The Audio Device functions.
 * @property {Phaser.Device.Video} video - The Video Device functions.
 * @property {Phaser.Device.Fullscreen} fullscreen - The Fullscreen Device functions.
 * @property {Phaser.Device.CanvasFeatures} canvasFeatures - The Canvas Device functions.
 */
typedef DeviceConf = {
var os:phaser.device.OS;
var browser:phaser.device.Browser;
var features:phaser.device.Features;
var input:phaser.device.Input;
var audio:phaser.device.Audio;
var video:phaser.device.Video;
var fullscreen:phaser.device.Fullscreen;
var canvasFeatures:phaser.device.CanvasFeatures;
};
