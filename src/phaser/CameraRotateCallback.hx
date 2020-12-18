package phaser;

/**
 * @callback CameraRotateCallback
 *
 * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera on which the effect is running.
 * @param {number} progress - The progress of the effect. A value between 0 and 1.
 * @param {number} angle - The Camera's new angle in radians.
 */
typedef CameraRotateCallback = Dynamic;
