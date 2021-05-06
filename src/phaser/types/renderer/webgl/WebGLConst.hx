package phaser.types.renderer.webgl;

/**
 * @typedef {object} Phaser.Types.Renderer.WebGL.WebGLConst
 * @since 3.50.0
 *
 * @property {GLenum} enum - The data type of the attribute, i.e. `gl.BYTE`, `gl.SHORT`, `gl.UNSIGNED_BYTE`, `gl.FLOAT`, etc.
 * @property {number} size - The size, in bytes, of the data type.
 */
typedef WebGLConst = {
@:native('enum') var enum_:Dynamic;
var size:Float;
};
