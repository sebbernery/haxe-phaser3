package phaser.renderer.webgl.pipelines;

/**
 * @classdesc
 *
 * The Multi Pipeline is the core 2D texture rendering pipeline used by Phaser in WebGL.
 * Virtually all Game Objects use this pipeline by default, including Sprites, Graphics
 * and Tilemaps. It handles the batching of quads and tris, as well as methods for
 * drawing and batching geometry data.
 *
 * Prior to Phaser v3.50 this pipeline was called the `TextureTintPipeline`.
 *
 * In previous versions of Phaser only one single texture unit was supported at any one time.
 * The Multi Pipeline is an evolution of the old Texture Tint Pipeline, updated to support
 * multi-textures for increased performance.
 *
 * The fragment shader it uses can be found in `shaders/src/Multi.frag`.
 * The vertex shader it uses can be found in `shaders/src/Multi.vert`.
 *
 * The default shader attributes for this pipeline are:
 *
 * `inPosition` (vec2, offset 0)
 * `inTexCoord` (vec2, offset 8)
 * `inTexId` (float, offset 16)
 * `inTintEffect` (float, offset 20)
 * `inTint` (vec4, offset 24, normalized)
 *
 * The default shader uniforms for this pipeline are:
 *
 * `uProjectionMatrix` (mat4)
 * `uMainSampler` (sampler2D array)
 *
 * If you wish to create a custom pipeline extending from this one, you can use two string
 * declarations in your fragment shader source: `%count%` and `%forloop%`, where `count` is
 * used to set the number of `sampler2Ds` available, and `forloop` is a block of GLSL code
 * that will get the currently bound texture unit.
 *
 * This pipeline will automatically inject that code for you, should those values exist
 * in your shader source. If you wish to handle this yourself, you can also use the
 * function `Utils.parseFragmentShaderMaxTextures`.
 *
 * If you wish to create a pipeline that works from a single texture, or that doesn't have
 * internal texture iteration, please see the `SinglePipeline` instead.
 *
 * @class MultiPipeline
 * @extends Phaser.Renderer.WebGL.WebGLPipeline
 * @memberof Phaser.Renderer.WebGL.Pipelines
 * @constructor
 * @since 3.50.0
 *
 * @param {Phaser.Types.Renderer.WebGL.WebGLPipelineConfig} config - The configuration options for this pipeline.
 */
@:native("Phaser.Renderer.WebGL.Pipelines.MultiPipeline")
extern class MultiPipeline extends phaser.renderer.webgl.WebGLPipeline {
    public function new(config:phaser.types.renderer.webgl.WebGLPipelineConfig);
    /**
     * Takes a Sprite Game Object, or any object that extends it, and adds it to the batch.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.MultiPipeline#batchSprite
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.Image|Phaser.GameObjects.Sprite)} gameObject - The texture based Game Object to add to the batch.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use for the rendering transform.
     * @param {Phaser.GameObjects.Components.TransformMatrix} [parentTransformMatrix] - The transform matrix of the parent container, if set.
     */
    public function batchSprite(gameObject:Dynamic, camera:phaser.cameras.scene2d.Camera, ?parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    /**
     * Generic function for batching a textured quad using argument values instead of a Game Object.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.MultiPipeline#batchTexture
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - Source GameObject.
     * @param {WebGLTexture} texture - Raw WebGLTexture associated with the quad.
     * @param {number} textureWidth - Real texture width.
     * @param {number} textureHeight - Real texture height.
     * @param {number} srcX - X coordinate of the quad.
     * @param {number} srcY - Y coordinate of the quad.
     * @param {number} srcWidth - Width of the quad.
     * @param {number} srcHeight - Height of the quad.
     * @param {number} scaleX - X component of scale.
     * @param {number} scaleY - Y component of scale.
     * @param {number} rotation - Rotation of the quad.
     * @param {boolean} flipX - Indicates if the quad is horizontally flipped.
     * @param {boolean} flipY - Indicates if the quad is vertically flipped.
     * @param {number} scrollFactorX - By which factor is the quad affected by the camera horizontal scroll.
     * @param {number} scrollFactorY - By which factor is the quad effected by the camera vertical scroll.
     * @param {number} displayOriginX - Horizontal origin in pixels.
     * @param {number} displayOriginY - Vertical origin in pixels.
     * @param {number} frameX - X coordinate of the texture frame.
     * @param {number} frameY - Y coordinate of the texture frame.
     * @param {number} frameWidth - Width of the texture frame.
     * @param {number} frameHeight - Height of the texture frame.
     * @param {number} tintTL - Tint for top left.
     * @param {number} tintTR - Tint for top right.
     * @param {number} tintBL - Tint for bottom left.
     * @param {number} tintBR - Tint for bottom right.
     * @param {number} tintEffect - The tint effect.
     * @param {number} uOffset - Horizontal offset on texture coordinate.
     * @param {number} vOffset - Vertical offset on texture coordinate.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - Current used camera.
     * @param {Phaser.GameObjects.Components.TransformMatrix} parentTransformMatrix - Parent container.
     * @param {boolean} [skipFlip=false] - Skip the renderTexture check.
     * @param {number} [textureUnit] - Use the currently bound texture unit?
     */
    public function batchTexture(gameObject:phaser.gameobjects.GameObject, texture:js.html.webgl.Texture, textureWidth:Float, textureHeight:Float, srcX:Float, srcY:Float, srcWidth:Float, srcHeight:Float, scaleX:Float, scaleY:Float, rotation:Float, flipX:Bool, flipY:Bool, scrollFactorX:Float, scrollFactorY:Float, displayOriginX:Float, displayOriginY:Float, frameX:Float, frameY:Float, frameWidth:Float, frameHeight:Float, tintTL:Float, tintTR:Float, tintBL:Float, tintBR:Float, tintEffect:Float, uOffset:Float, vOffset:Float, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix, ?skipFlip:Bool, ?textureUnit:Float):Void;
    /**
     * Adds a Texture Frame into the batch for rendering.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.MultiPipeline#batchTextureFrame
     * @since 3.12.0
     *
     * @param {Phaser.Textures.Frame} frame - The Texture Frame to be rendered.
     * @param {number} x - The horizontal position to render the texture at.
     * @param {number} y - The vertical position to render the texture at.
     * @param {number} tint - The tint color.
     * @param {number} alpha - The alpha value.
     * @param {Phaser.GameObjects.Components.TransformMatrix} transformMatrix - The Transform Matrix to use for the texture.
     * @param {Phaser.GameObjects.Components.TransformMatrix} [parentTransformMatrix] - A parent Transform Matrix.
     */
    public function batchTextureFrame(frame:phaser.textures.Frame, x:Float, y:Float, tint:Float, alpha:Float, transformMatrix:phaser.gameobjects.components.TransformMatrix, ?parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
}
