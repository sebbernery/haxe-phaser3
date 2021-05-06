package phaser.renderer.webgl.pipelines;

/**
 * @classdesc
 * The Bitmap Mask Pipeline handles all of the bitmap mask rendering in WebGL for applying
 * alpha masks to Game Objects. It works by sampling two texture on the fragment shader and
 * using the fragments alpha to clip the region.
 *
 * The fragment shader it uses can be found in `shaders/src/BitmapMask.frag`.
 * The vertex shader it uses can be found in `shaders/src/BitmapMask.vert`.
 *
 * The default shader attributes for this pipeline are:
 *
 * `inPosition` (vec2, offset 0)
 *
 * The default shader uniforms for this pipeline are:
 *
 * `uResolution` (vec2)
 * `uMainSampler` (sampler2D)
 * `uMaskSampler` (sampler2D)
 * `uInvertMaskAlpha` (bool)
 *
 * @class BitmapMaskPipeline
 * @extends Phaser.Renderer.WebGL.WebGLPipeline
 * @memberof Phaser.Renderer.WebGL.Pipelines
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Types.Renderer.WebGL.WebGLPipelineConfig} config - The configuration options for this pipeline.
 */
@:native("Phaser.Renderer.WebGL.Pipelines.BitmapMaskPipeline")
extern class BitmapMaskPipeline extends phaser.renderer.webgl.WebGLPipeline {
    public function new(config:phaser.types.renderer.webgl.WebGLPipelineConfig);
    /**
     * Binds necessary resources and renders the mask to a separated framebuffer.
     * The framebuffer for the masked object is also bound for further use.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.BitmapMaskPipeline#beginMask
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} mask - GameObject used as mask.
     * @param {Phaser.GameObjects.GameObject} maskedObject - GameObject masked by the mask GameObject.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera rendering the current mask.
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
