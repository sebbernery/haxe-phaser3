package phaser.types.geom.mesh;

/**
 * @typedef {object} Phaser.Types.Geom.Mesh.GenerateVertsResult
 * @since 3.50.0
 *
 * @property {Phaser.Geom.Mesh.Face[]} faces - An array of Face objects generated from the OBJ Data.
 * @property {Phaser.Geom.Mesh.Vertex[]} verts - An array of Vertex objects generated from the OBJ Data.
 */
typedef GenerateVertsResult = {
var faces:Array<phaser.geom.mesh.Face>;
var verts:Array<phaser.geom.mesh.Vertex>;
};
