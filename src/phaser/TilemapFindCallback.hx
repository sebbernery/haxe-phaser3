package phaser;

/**
 * @callback TilemapFindCallback
 *
 * @param {Phaser.GameObjects.GameObject} value - An object found.
 * @param {number} index - The index of the object within the array.
 * @param {Phaser.GameObjects.GameObject[]} array - An array of all the objects found.
 *
 * @return {boolean} `true` if the callback should be invoked, otherwise `false`.
 */
typedef TilemapFindCallback = Dynamic;
