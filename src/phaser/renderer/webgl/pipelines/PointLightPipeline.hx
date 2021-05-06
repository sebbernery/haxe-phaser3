package phaser.renderer.webgl.pipelines;

/**
 * @classdesc
 * The Point Light Pipeline handles rendering the Point Light Game Objects in WebGL.
 *
 * The fragment shader it uses can be found in `shaders/src/PointLight.frag`.
 * The vertex shader it uses can be found in `shaders/src/PointLight.vert`.
 *
 * The default shader attributes for this pipeline are:
 *
 * `inPosition` (vec2)
 * `inLightPosition` (vec2)
 * `inLightRadius` (float)
 * `inLightAttenuation` (float)
 * `inLightColor` (vec4)
 *
 * The default shader uniforms for this pipeline are:
 *
 * `uProjectionMatrix` (mat4)
 * `uResolution` (vec2)
 * `uCameraZoom` (sampler2D)
 *
 * @class PointLightPipeline
 * @extends Phaser.Renderer.WebGL.WebGLPipeline
 * @memberof Phaser.Renderer.WebGL.Pipelines
 * @constructor
 * @since 3.50.0
 *
 * @param {Phaser.Types.Renderer.WebGL.WebGLPipelineConfig} config - The configuration options for this pipeline.
 */
@:native("Phaser.Renderer.WebGL.Pipelines.PointLightPipeline")
extern class PointLightPipeline extends phaser.renderer.webgl.WebGLPipeline {
    public function new(config:phaser.types.renderer.webgl.WebGLPipelineConfig);
    /**
     * Adds a Point Light Game Object to the batch, flushing if required.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.PointLightPipeline#batchPointLight
     * @since 3.50.0
     *
     * @param {Phaser.GameObjects.PointLight} light - The Point Light Game Object.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera rendering the Point Light.
     * @param {number} x0 - The top-left x position.
     * @param {number} y0 - The top-left y position.
     * @param {number} x1 - The bottom-left x position.
     * @param {number} y1 - The bottom-left y position.
     * @param {number} x2 - The bottom-right x position.
     * @param {number} y2 - The bottom-right y position.
     * @param {number} x3 - The top-right x position.
     * @param {number} y3 - The top-right y position.
     * @param {number} lightX - The horizontal center of the light.
     * @param {number} lightY - The vertical center of the light.
     */
    public function batchPointLight(light:phaser.gameobjects.PointLight, camera:phaser.cameras.scene2d.Camera, x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, lightX:Float, lightY:Float):Void;
    /**
     * Adds a single Point Light vertex to the current vertex buffer and increments the
     * `vertexCount` property by 1.
     *
     * This method is called directly by `batchPointLight`.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.PointLightPipeline#batchLightVert
     * @since 3.50.0
     *
     * @param {number} x - The vertex x position.
     * @param {number} y - The vertex y position.
     * @param {number} lightX - The horizontal center of the light.
     * @param {number} lightY - The vertical center of the light.
     * @param {number} radius - The radius of the light.
     * @param {number} attenuation - The attenuation of the light.
     * @param {number} r - The red color channel of the light.
     * @param {number} g - The green color channel of the light.
     * @param {number} b - The blue color channel of the light.
     * @param {number} a - The alpha color channel of the light.
     */
    public function batchLightVert(x:Float, y:Float, lightX:Float, lightY:Float, radius:Float, attenuation:Float, r:Float, g:Float, b:Float, a:Float):Void;
}
