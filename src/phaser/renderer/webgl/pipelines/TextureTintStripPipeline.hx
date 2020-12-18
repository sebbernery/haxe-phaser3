package phaser.renderer.webgl.pipelines;

/**
 * @classdesc
 * TextureTintStripPipeline implements the rendering infrastructure
 * for displaying textured objects
 * The config properties are:
 * - game: Current game instance.
 * - renderer: Current WebGL renderer.
 * - vertShader: Source for vertex shader as a string.
 * - fragShader: Source for fragment shader as a string.
 * - vertexCapacity: The amount of vertices that shall be allocated
 * - vertexSize: The size of a single vertex in bytes.
 *
 * @class TextureTintStripPipeline
 * @extends Phaser.Renderer.WebGL.WebGLPipeline
 * @memberof Phaser.Renderer.WebGL.Pipelines
 * @constructor
 * @since 3.23.0
 *
 * @param {object} config - The configuration options for this Texture Tint Pipeline, as described above.
 */
@:native("Phaser.Renderer.WebGL.Pipelines.TextureTintStripPipeline")
extern class TextureTintStripPipeline extends phaser.renderer.webgl.WebGLPipeline {
    public function new(config:Dynamic);
    /**
     * Float32 view of the array buffer containing the pipeline's vertices.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.TextureTintStripPipeline#vertexViewF32
     * @type {Float32Array}
     * @since 3.23.0
     */
    public var vertexViewF32:js.lib.Float32Array;
    /**
     * Uint32 view of the array buffer containing the pipeline's vertices.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.TextureTintStripPipeline#vertexViewU32
     * @type {Uint32Array}
     * @since 3.23.0
     */
    public var vertexViewU32:js.lib.Uint32Array;
    /**
     * Size of the batch.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.TextureTintStripPipeline#maxQuads
     * @type {integer}
     * @since 3.23.0
     */
    public var maxQuads:Int;
    /**
     * Collection of batch information
     *
     * @name Phaser.Renderer.WebGL.Pipelines.TextureTintStripPipeline#batches
     * @type {array}
     * @since 3.23.0
     */
    public var batches:Array<Dynamic>;
    /**
     * Assigns a texture to the current batch. If a different texture is already set it creates a new batch object.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintStripPipeline#setTexture2D
     * @since 3.23.0
     *
     * @param {WebGLTexture} [texture] - WebGLTexture that will be assigned to the current batch. If not given uses blankTexture.
     * @param {integer} [unit=0] - Texture unit to which the texture needs to be bound.
     *
     * @return {Phaser.Renderer.WebGL.Pipelines.TextureTintStripPipeline} This pipeline instance.
     */
    public function setTexture2D(?texture:js.html.webgl.Texture, ?unit:Int):phaser.renderer.webgl.pipelines.TextureTintStripPipeline;
    /**
     * Checks if the current batch has the same texture and texture unit, or if we need to create a new batch.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintStripPipeline#requireTextureBatch
     * @since 3.23.0
     *
     * @param {WebGLTexture} texture - WebGLTexture that will be assigned to the current batch. If not given uses blankTexture.
     * @param {integer} unit - Texture unit to which the texture needs to be bound.
     *
     * @return {boolean} `true` if the pipeline needs to create a new batch, otherwise `false`.
     */
    public function requireTextureBatch(texture:js.html.webgl.Texture, unit:Int):Bool;
    /**
     * Creates a new batch object and pushes it to a batch array.
     * The batch object contains information relevant to the current
     * vertex batch like the offset in the vertex buffer, vertex count and
     * the textures used by that batch.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintStripPipeline#pushBatch
     * @since 3.23.0
     *
     * @param {WebGLTexture} texture - Optional WebGLTexture that will be assigned to the created batch.
     * @param {integer} unit - Texture unit to which the texture needs to be bound.
     */
    public function pushBatch(texture:js.html.webgl.Texture, unit:Int):Void;
}
