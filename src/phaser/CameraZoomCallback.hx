package phaser;

/**
 * @callback CameraZoomCallback
 *
 * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera on which the effect is running.
 * @param {number} progress - The progress of the effect. A value between 0 and 1.
 * @param {number} zoom - The Camera's new zoom value.
 */
typedef CameraZoomCallback = Dynamic;
