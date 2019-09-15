package phaser.renderer.webgl.pipelines;

/**
 * @classdesc
 * BitmapMaskPipeline handles all bitmap masking rendering in WebGL. It works by using
 * sampling two texture on the fragment shader and using the fragment's alpha to clip the region.
 * The config properties are:
 * - game: Current game instance.
 * - renderer: Current WebGL renderer.
 * - topology: This indicates how the primitives are rendered. The default value is GL_TRIANGLES.
 *              Here is the full list of rendering primitives (https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Constants).
 * - vertShader: Source for vertex shader as a string.
 * - fragShader: Source for fragment shader as a string.
 * - vertexCapacity: The amount of vertices that shall be allocated
 * - vertexSize: The size of a single vertex in bytes.
 *
 * @class BitmapMaskPipeline
 * @extends Phaser.Renderer.WebGL.WebGLPipeline
 * @memberof Phaser.Renderer.WebGL.Pipelines
 * @constructor
 * @since 3.0.0
 *
 * @param {object} config - Used for overriding shader an pipeline properties if extending this pipeline.
 */
@:native("Phaser.Renderer.WebGL.Pipelines.BitmapMaskPipeline")
extern class BitmapMaskPipeline extends phaser.renderer.webgl.WebGLPipeline {
    public function new(config:Dynamic);
    /**
     * Float32 view of the array buffer containing the pipeline's vertices.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.BitmapMaskPipeline#vertexViewF32
     * @type {Float32Array}
     * @since 3.0.0
     */
    public var vertexViewF32:js.html.Float32Array;
    /**
     * Size of the batch.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.BitmapMaskPipeline#maxQuads
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var maxQuads:Float;
    /**
     * Dirty flag to check if resolution properties need to be updated on the
     * masking shader.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.BitmapMaskPipeline#resolutionDirty
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var resolutionDirty:Bool;
    /**
     * Binds necessary resources and renders the mask to a separated framebuffer.
     * The framebuffer for the masked object is also bound for further use.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.BitmapMaskPipeline#beginMask
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} mask - GameObject used as mask.
     * @param {Phaser.GameObjects.GameObject} maskedObject - GameObject masked by the mask GameObject.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - [description]
     */
    public function beginMask(mask:phaser.gameobjects.GameObject, maskedObject:phaser.gameobjects.GameObject, camera:phaser.cameras.scene2d.Camera):Void;
    /**
     * The masked game objects framebuffer is unbound and its texture
     * is bound together with the mask texture and the mask shader and
     * a draw call with a single quad is processed. Here is where the
     * masking effect is applied.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.BitmapMaskPipeline#endMask
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} mask - GameObject used as a mask.
     */
    public function endMask(mask:phaser.gameobjects.GameObject):Void;
}
