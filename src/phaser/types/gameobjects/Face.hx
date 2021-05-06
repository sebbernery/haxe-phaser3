package phaser.types.gameobjects;

/**
 * @typedef {object} Phaser.Types.GameObjects.Face
 * @since 3.50.0
 *
 * @property {Phaser.Types.GameObjects.Vertex} vertex1 - The first face vertex.
 * @property {Phaser.Types.GameObjects.Vertex} vertex2 - The second face vertex.
 * @property {Phaser.Types.GameObjects.Vertex} vertex3 - The third face vertex.
 * @property {boolean} isCounterClockwise - Are the vertices counter-clockwise?
 */
typedef Face = {
var vertex1:phaser.types.gameobjects.Vertex;
var vertex2:phaser.types.gameobjects.Vertex;
var vertex3:phaser.types.gameobjects.Vertex;
var isCounterClockwise:Bool;
};
