package phaser;

/**
 * @callback TilemapFilterCallback
 *
 * @param {Phaser.GameObjects.GameObject} value - An object found in the filtered area.
 * @param {number} index - The index of the object within the array.
 * @param {Phaser.GameObjects.GameObject[]} array - An array of all the objects found.
 *
 * @return {Phaser.GameObjects.GameObject} The object.
 */
typedef TilemapFilterCallback = Dynamic;
