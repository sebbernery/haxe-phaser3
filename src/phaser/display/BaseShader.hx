package phaser.display;

/**
 * @classdesc
 * A BaseShader is a small resource class that contains the data required for a WebGL Shader to be created.
 *
 * It contains the raw source code to the fragment and vertex shader, as well as an object that defines
 * the uniforms the shader requires, if any.
 *
 * BaseShaders are stored in the Shader Cache, available in a Scene via `this.cache.shaders` and are referenced
 * by a unique key-based string. Retrieve them via `this.cache.shaders.get(key)`.
 *
 * BaseShaders are created automatically by the GLSL File Loader when loading an external shader resource.
 * They can also be created at runtime, allowing you to use dynamically generated shader source code.
 *
 * Default fragment and vertex source is used if not provided in the constructor, setting-up a basic shader,
 * suitable for debug rendering.
 *
 * @class BaseShader
 * @memberof Phaser.Display
 * @constructor
 * @since 3.17.0
 *
 * @param {string} key - The key of this shader. Must be unique within the shader cache.
 * @param {string} [fragmentSrc] - The fragment source for the shader.
 * @param {string} [vertexSrc] - The vertex source for the shader.
 * @param {any} [uniforms] - Optional object defining the uniforms the shader uses.
 */
@:native("Phaser.Display.BaseShader")
extern class BaseShader {
    public function new(key:String, ?fragmentSrc:String, ?vertexSrc:String, ?uniforms:Dynamic);
    /**
     * The key of this shader, unique within the shader cache of this Phaser game instance.
     *
     * @name Phaser.Display.BaseShader#key
     * @type {string}
     * @since 3.17.0
     */
    public var key:String;
    /**
     * The source code, as a string, of the fragment shader being used.
     *
     * @name Phaser.Display.BaseShader#fragmentSrc
     * @type {string}
     * @since 3.17.0
     */
    public var fragmentSrc:String;
    /**
     * The source code, as a string, of the vertex shader being used.
     *
     * @name Phaser.Display.BaseShader#vertexSrc
     * @type {string}
     * @since 3.17.0
     */
    public var vertexSrc:String;
    /**
     * The default uniforms for this shader.
     *
     * @name Phaser.Display.BaseShader#uniforms
     * @type {?any}
     * @since 3.17.0
     */
    public var uniforms:Dynamic;
}
