package phaser.types.tilemaps;

/**
 * @typedef {object} Phaser.Types.Tilemaps.GIDData
 * @since 3.0.0
 *
 * @property {number} gid - The Tiled GID.
 * @property {boolean} flippedHorizontal - Horizontal flip flag.
 * @property {boolean} flippedVertical - Vertical flip flag.
 * @property {boolean} flippedAntiDiagonal - Diagonal flip flag.
 * @property {number} rotation - Amount of rotation.
 * @property {boolean} flipped - Is flipped?
 */
typedef GIDData = {
var gid:Float;
var flippedHorizontal:Bool;
var flippedVertical:Bool;
var flippedAntiDiagonal:Bool;
var rotation:Float;
var flipped:Bool;
};
