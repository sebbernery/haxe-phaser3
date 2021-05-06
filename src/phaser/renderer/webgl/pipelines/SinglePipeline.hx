package phaser.renderer.webgl.pipelines;

/**
 * @classdesc
 * The Single Pipeline is a special version of the Multi Pipeline that only ever
 * uses one texture, bound to texture unit zero. Although not as efficient as the
 * Multi Pipeline, it provides an easier way to create custom pipelines that only require
 * a single bound texture.
 *
 * Prior to Phaser v3.50 this pipeline didn't exist, but could be compared to the old `TextureTintPipeline`.
 *
 * The fragment shader it uses can be found in `shaders/src/Single.frag`.
 * The vertex shader it uses can be found in `shaders/src/Single.vert`.
 *
 * The default shader attributes for this pipeline are:
 *
 * `inPosition` (vec2, offset 0)
 * `inTexCoord` (vec2, offset 8)
 * `inTexId` (float, offset 16) - this value is always zero in the Single Pipeline
 * `inTintEffect` (float, offset 20)
 * `inTint` (vec4, offset 24, normalized)
 *
 * The default shader uniforms for this pipeline are:
 *
 * `uProjectionMatrix` (mat4)
 * `uMainSampler` (sampler2D)
 *
 * @class SinglePipeline
 * @extends Phaser.Renderer.WebGL.Pipelines.MultiPipeline
 * @memberof Phaser.Renderer.WebGL.Pipelines
 * @constructor
 * @since 3.50.0
 *
 * @param {Phaser.Types.Renderer.WebGL.WebGLPipelineConfig} config - The configuration options for this pipeline.
 */
@:native("Phaser.Renderer.WebGL.Pipelines.SinglePipeline")
extern class SinglePipeline extends phaser.renderer.webgl.pipelines.MultiPipeline {
    public function new(config:phaser.types.renderer.webgl.WebGLPipelineConfig);
}
