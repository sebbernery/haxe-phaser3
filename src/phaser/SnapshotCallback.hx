package phaser;

/**
 * @callback SnapshotCallback
 *
 * @param {(Phaser.Display.Color|HTMLImageElement)} snapshot - Either a Color object if a single pixel is being grabbed, or a new Image which contains a snapshot of the canvas contents.
 */
typedef SnapshotCallback = Dynamic;
