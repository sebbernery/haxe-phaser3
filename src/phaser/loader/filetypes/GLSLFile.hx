package phaser.loader.filetypes;

/**
 * @classdesc
 * A single GLSL File suitable for loading by the Loader.
 *
 * These are created when you use the Phaser.Loader.LoaderPlugin#glsl method and are not typically created directly.
 *
 * For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#glsl.
 *
 * @class GLSLFile
 * @extends Phaser.Loader.File
 * @memberof Phaser.Loader.FileTypes
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - A reference to the Loader that is responsible for this file.
 * @param {(string|Phaser.Types.Loader.FileTypes.GLSLFileConfig)} key - The key to use for this file, or a file configuration object.
 * @param {string} [url] - The absolute or relative URL to load this file from. If undefined or `null` it will be set to `<key>.txt`, i.e. if `key` was "alien" then the URL will be "alien.txt".
 * @param {string} [shaderType='fragment'] - The type of shader. Either `fragment` for a fragment shader, or `vertex` for a vertex shader. This is ignored if you load a shader bundle.
 * @param {Phaser.Types.Loader.XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 */
@:native("Phaser.Loader.FileTypes.GLSLFile")
extern class GLSLFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:String, ?shaderType:String, ?xhrSettings:phaser.types.loader.XHRSettingsObject);
    /**
     * Returns the name of the shader from the header block.
     *
     * @method Phaser.Loader.FileTypes.GLSLFile#getShaderName
     * @since 3.17.0
     *
     * @param {string[]} headerSource - The header data.
     *
     * @return {string} The shader name.
     */
    public function getShaderName(headerSource:Array<String>):String;
    /**
     * Returns the type of the shader from the header block.
     *
     * @method Phaser.Loader.FileTypes.GLSLFile#getShaderType
     * @since 3.17.0
     *
     * @param {string[]} headerSource - The header data.
     *
     * @return {string} The shader type. Either 'fragment' or 'vertex'.
     */
    public function getShaderType(headerSource:Array<String>):String;
    /**
     * Returns the shader uniforms from the header block.
     *
     * @method Phaser.Loader.FileTypes.GLSLFile#getShaderUniforms
     * @since 3.17.0
     *
     * @param {string[]} headerSource - The header data.
     *
     * @return {any} The shader uniforms object.
     */
    public function getShaderUniforms(headerSource:Array<String>):Dynamic;
}
