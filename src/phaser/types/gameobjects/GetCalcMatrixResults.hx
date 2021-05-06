package phaser.types.gameobjects;

/**
 * @typedef {object} Phaser.Types.GameObjects.GetCalcMatrixResults
 * @since 3.50.0
 *
 * @property {Phaser.GameObjects.Components.TransformMatrix} camera - The calculated Camera matrix.
 * @property {Phaser.GameObjects.Components.TransformMatrix} sprite - The calculated Sprite (Game Object) matrix.
 * @property {Phaser.GameObjects.Components.TransformMatrix} calc - The calculated results matrix, factoring all others in.
 */
typedef GetCalcMatrixResults = {
var camera:phaser.gameobjects.components.TransformMatrix;
var sprite:phaser.gameobjects.components.TransformMatrix;
var calc:phaser.gameobjects.components.TransformMatrix;
};
