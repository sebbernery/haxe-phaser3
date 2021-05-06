package phaser.types.geom.mesh;

/**
 * @typedef {object} Phaser.Types.Geom.Mesh.OBJModel
 * @since 3.50.0
 *
 * @property {Phaser.Types.Geom.Mesh.OBJFace[]} faces - An array of Faces.
 * @property {string} name - The name of the model.
 * @property {Phaser.Types.Geom.Mesh.UV[]} textureCoords - An array of texture coordinates.
 * @property {Phaser.Types.Math.Vector3Like[]} vertexNormals - An array of vertex normals.
 * @property {Phaser.Types.Math.Vector3Like[]} vertices - An array of vertices in the model.
 */
typedef OBJModel = {
var faces:Array<phaser.types.geom.mesh.OBJFace>;
var name:String;
var textureCoords:Array<phaser.types.geom.mesh.UV>;
var vertexNormals:Array<phaser.types.math.Vector3Like>;
var vertices:Array<phaser.types.math.Vector3Like>;
};
