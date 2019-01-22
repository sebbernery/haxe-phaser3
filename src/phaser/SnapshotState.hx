package phaser;

/**
 * @typedef {object} SnapshotState
 *
 * @property {SnapshotCallback} callback - The function to call after the snapshot is taken.
 * @property {string} type - The type of the image to create.
 * @property {number} encoder - The image quality, between 0 and 1, for image formats which use lossy compression (such as `image/jpeg`).
 */
typedef SnapshotState = {
var callback:SnapshotCallback;
var type:String;
var encoder:Float;
};
