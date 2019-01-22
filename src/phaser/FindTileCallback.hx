package phaser;

/**
 * @callback FindTileCallback
 *
 * @param {Phaser.Tilemaps.Tile} value - The Tile.
 * @param {integer} index - The index of the tile.
 * @param {Phaser.Tilemaps.Tile[]} array - An array of Tile objects.
 *
 * @return {boolean} Return `true` if the callback should run, otherwise `false`.
 */
typedef FindTileCallback = Dynamic;
