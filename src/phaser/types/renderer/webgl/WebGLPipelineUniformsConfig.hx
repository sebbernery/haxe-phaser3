package phaser.types.renderer.webgl;

/**
 * @typedef {object} Phaser.Types.Renderer.WebGL.WebGLPipelineUniformsConfig
 * @since 3.50.0
 *
 * @property {string} name - The name of the uniform as defined in the shaders.
 * @property {WebGLUniformLocation} location - The pipeline will set it when the program is linked.
 * @property {any} value1 - The cached value1.
 * @property {any} value2 - The cached value2.
 * @property {any} value3 - The cached value3.
 * @property {any} value4 - The cached value4.
 */
typedef WebGLPipelineUniformsConfig = {
var name:String;
var location:js.html.webgl.UniformLocation;
var value1:Dynamic;
var value2:Dynamic;
var value3:Dynamic;
var value4:Dynamic;
};
