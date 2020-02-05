package phaser.device;

/**
 * Determines the video support of the browser running this Phaser Game instance.
 * These values are read-only and populated during the boot sequence of the game.
 * They are then referenced by internal game systems and are available for you to access
 * via `this.sys.game.device.video` from within any Scene.
 *
 * In Phaser 3.20 the properties were renamed to drop the 'Video' suffix.
 *
 * @typedef {object} Phaser.Device.Video
 * @since 3.0.0
 *
 * @property {boolean} h264 - Can this device play h264 mp4 video files?
 * @property {boolean} hls - Can this device play hls video files?
 * @property {boolean} mp4 - Can this device play h264 mp4 video files?
 * @property {boolean} ogg - Can this device play ogg video files?
 * @property {boolean} vp9 - Can this device play vp9 video files?
 * @property {boolean} webm - Can this device play webm video files?
 */
typedef Video = {
var h264:Bool;
var hls:Bool;
var mp4:Bool;
var ogg:Bool;
var vp9:Bool;
var webm:Bool;
};
