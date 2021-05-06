package phaser.renderer.webgl.pipelines;

/**
 * @classdesc
 * The Utility Pipeline is a special-use pipeline that belongs to the Pipeline Manager.
 *
 * It provides 4 shaders and handy associated methods:
 *
 * 1) Copy Shader. A fast texture to texture copy shader with optional brightness setting.
 * 2) Additive Blend Mode Shader. Blends two textures using an additive blend mode.
 * 3) Linear Blend Mode Shader. Blends two textures using a linear blend mode.
 * 4) Color Matrix Copy Shader. Draws a texture to a target using a Color Matrix.
 *
 * You do not extend this pipeline, but instead get a reference to it from the Pipeline
 * Manager via the `setUtility` method. You can also access methods such as `copyFrame`
 * directly from the Pipeline Manager.
 *
 * This pipeline provides methods for manipulating framebuffer backed textures, such as
 * copying or blending one texture to another, copying a portion of a texture, additively
 * blending two textures, flipping textures and more.
 *
 * The default shader attributes for this pipeline are:
 *
 * `inPosition` (vec2, offset 0)
 * `inTexCoord` (vec2, offset 8)
 *
 * This pipeline has a hard-coded batch size of 1 and a hard coded set of vertices.
 *
 * @class UtilityPipeline
 * @extends Phaser.Renderer.WebGL.WebGLPipeline
 * @memberof Phaser.Renderer.WebGL.Pipelines
 * @constructor
 * @since 3.50.0
 *
 * @param {Phaser.Types.Renderer.WebGL.WebGLPipelineConfig} config - The configuration options for this pipeline.
 */
@:native("Phaser.Renderer.WebGL.Pipelines.UtilityPipeline")
extern class UtilityPipeline extends phaser.renderer.webgl.WebGLPipeline {
    public function new(config:phaser.types.renderer.webgl.WebGLPipelineConfig);
    /**
     * A default Color Matrix, used by the Color Matrix Shader when one
     * isn't provided.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#colorMatrix
     * @type {Phaser.Display.ColorMatrix}
     * @since 3.50.0
     */
    public var colorMatrix:phaser.display.ColorMatrix;
    /**
     * A reference to the Copy Shader belonging to this Utility Pipeline.
     *
     * This property is set during the `boot` method.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#copyShader
     * @type {Phaser.Renderer.WebGL.WebGLShader}
     * @default null
     * @since 3.50.0
     */
    public var copyShader:phaser.renderer.webgl.WebGLShader;
    /**
     * A reference to the Additive Blend Shader belonging to this Utility Pipeline.
     *
     * This property is set during the `boot` method.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#addShader
     * @type {Phaser.Renderer.WebGL.WebGLShader}
     * @since 3.50.0
     */
    public var addShader:phaser.renderer.webgl.WebGLShader;
    /**
     * A reference to the Linear Blend Shader belonging to this Utility Pipeline.
     *
     * This property is set during the `boot` method.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#linearShader
     * @type {Phaser.Renderer.WebGL.WebGLShader}
     * @since 3.50.0
     */
    public var linearShader:phaser.renderer.webgl.WebGLShader;
    /**
     * A reference to the Color Matrix Shader belonging to this Utility Pipeline.
     *
     * This property is set during the `boot` method.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#colorMatrixShader
     * @type {Phaser.Renderer.WebGL.WebGLShader}
     * @since 3.50.0
     */
    public var colorMatrixShader:phaser.renderer.webgl.WebGLShader;
    /**
     * A reference to the Full Frame 1 Render Target.
     *
     * This property is set during the `boot` method.
     *
     * This Render Target is the full size of the renderer.
     *
     * You can use this directly in Post FX Pipelines for multi-target effects.
     * However, be aware that these targets are shared between all post fx pipelines.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#fullFrame1
     * @type {Phaser.Renderer.WebGL.RenderTarget}
     * @since 3.50.0
     */
    public var fullFrame1:phaser.renderer.webgl.RenderTarget;
    /**
     * A reference to the Full Frame 2 Render Target.
     *
     * This property is set during the `boot` method.
     *
     * This Render Target is the full size of the renderer.
     *
     * You can use this directly in Post FX Pipelines for multi-target effects.
     * However, be aware that these targets are shared between all post fx pipelines.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#fullFrame2
     * @type {Phaser.Renderer.WebGL.RenderTarget}
     * @since 3.50.0
     */
    public var fullFrame2:phaser.renderer.webgl.RenderTarget;
    /**
     * A reference to the Half Frame 1 Render Target.
     *
     * This property is set during the `boot` method.
     *
     * This Render Target is half the size of the renderer.
     *
     * You can use this directly in Post FX Pipelines for multi-target effects.
     * However, be aware that these targets are shared between all post fx pipelines.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#halfFrame1
     * @type {Phaser.Renderer.WebGL.RenderTarget}
     * @since 3.50.0
     */
    public var halfFrame1:phaser.renderer.webgl.RenderTarget;
    /**
     * A reference to the Half Frame 2 Render Target.
     *
     * This property is set during the `boot` method.
     *
     * This Render Target is half the size of the renderer.
     *
     * You can use this directly in Post FX Pipelines for multi-target effects.
     * However, be aware that these targets are shared between all post fx pipelines.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#halfFrame2
     * @type {Phaser.Renderer.WebGL.RenderTarget}
     * @since 3.50.0
     */
    public var halfFrame2:phaser.renderer.webgl.RenderTarget;
    /**
     * Copy the `source` Render Target to the `target` Render Target.
     *
     * You can optionally set the brightness factor of the copy.
     *
     * The difference between this method and `drawFrame` is that this method
     * uses a faster copy shader, where only the brightness can be modified.
     * If you need color level manipulation, see `drawFrame` instead.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#copyFrame
     * @since 3.50.0
     *
     * @param {Phaser.Renderer.WebGL.RenderTarget} source - The source Render Target.
     * @param {Phaser.Renderer.WebGL.RenderTarget} [target] - The target Render Target.
     * @param {number} [brightness=1] - The brightness value applied to the frame copy.
     * @param {boolean} [clear=true] - Clear the target before copying?
     * @param {boolean} [clearAlpha=true] - Clear the alpha channel when running `gl.clear` on the target?
     */
    public function copyFrame(source:phaser.renderer.webgl.RenderTarget, ?target:phaser.renderer.webgl.RenderTarget, ?brightness:Float, ?clear:Bool, ?clearAlpha:Bool):Void;
    /**
     * Copy the `source` Render Target to the `target` Render Target.
     *
     * The difference with this copy is that no resizing takes place. If the `source`
     * Render Target is larger than the `target` then only a portion the same size as
     * the `target` dimensions is copied across.
     *
     * You can optionally set the brightness factor of the copy.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#blitFrame
     * @since 3.50.0
     *
     * @param {Phaser.Renderer.WebGL.RenderTarget} source - The source Render Target.
     * @param {Phaser.Renderer.WebGL.RenderTarget} target - The target Render Target.
     * @param {number} [brightness=1] - The brightness value applied to the frame copy.
     * @param {boolean} [clear=true] - Clear the target before copying?
     * @param {boolean} [clearAlpha=true] - Clear the alpha channel when running `gl.clear` on the target?
     * @param {boolean} [eraseMode=false] - Erase source from target using ERASE Blend Mode?
     */
    public function blitFrame(source:phaser.renderer.webgl.RenderTarget, target:phaser.renderer.webgl.RenderTarget, ?brightness:Float, ?clear:Bool, ?clearAlpha:Bool, ?eraseMode:Bool):Void;
    /**
     * Binds the `source` Render Target and then copies a section of it to the `target` Render Target.
     *
     * This method is extremely fast because it uses `gl.copyTexSubImage2D` and doesn't
     * require the use of any shaders. Remember the coordinates are given in standard WebGL format,
     * where x and y specify the lower-left corner of the section, not the top-left. Also, the
     * copy entirely replaces the contents of the target texture, no 'merging' or 'blending' takes
     * place.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#copyFrameRect
     * @since 3.50.0
     *
     * @param {Phaser.Renderer.WebGL.RenderTarget} source - The source Render Target.
     * @param {Phaser.Renderer.WebGL.RenderTarget} target - The target Render Target.
     * @param {number} x - The x coordinate of the lower left corner where to start copying.
     * @param {number} y - The y coordinate of the lower left corner where to start copying.
     * @param {number} width - The width of the texture.
     * @param {number} height - The height of the texture.
     * @param {boolean} [clear=true] - Clear the target before copying?
     * @param {boolean} [clearAlpha=true] - Clear the alpha channel when running `gl.clear` on the target?
     */
    public function copyFrameRect(source:phaser.renderer.webgl.RenderTarget, target:phaser.renderer.webgl.RenderTarget, x:Float, y:Float, width:Float, height:Float, ?clear:Bool, ?clearAlpha:Bool):Void;
    /**
     * Pops the framebuffer from the renderers FBO stack and sets that as the active target,
     * then draws the `source` Render Target to it. It then resets the renderer textures.
     *
     * This should be done when you need to draw the _final_ results of a pipeline to the game
     * canvas, or the next framebuffer in line on the FBO stack. You should only call this once
     * in the `onDraw` handler and it should be the final thing called. Be careful not to call
     * this if you need to actually use the pipeline shader, instead of the copy shader. In
     * those cases, use the `bindAndDraw` method.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#copyToGame
     * @since 3.50.0
     *
     * @param {Phaser.Renderer.WebGL.RenderTarget} source - The Render Target to draw from.
     */
    public function copyToGame(source:phaser.renderer.webgl.RenderTarget):Void;
    /**
     * Copy the `source` Render Target to the `target` Render Target, using the
     * given Color Matrix.
     *
     * The difference between this method and `copyFrame` is that this method
     * uses a color matrix shader, where you have full control over the luminance
     * values used during the copy. If you don't need this, you can use the faster
     * `copyFrame` method instead.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#drawFrame
     * @since 3.50.0
     *
     * @param {Phaser.Renderer.WebGL.RenderTarget} source - The source Render Target.
     * @param {Phaser.Renderer.WebGL.RenderTarget} [target] - The target Render Target.
     * @param {boolean} [clearAlpha=true] - Clear the alpha channel when running `gl.clear` on the target?
     * @param {Phaser.Display.ColorMatrix} [colorMatrix] - The Color Matrix to use when performing the draw.
     */
    public function drawFrame(source:phaser.renderer.webgl.RenderTarget, ?target:phaser.renderer.webgl.RenderTarget, ?clearAlpha:Bool, ?colorMatrix:phaser.display.ColorMatrix):Void;
    /**
     * Draws the `source1` and `source2` Render Targets to the `target` Render Target
     * using a linear blend effect, which is controlled by the `strength` parameter.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#blendFrames
     * @since 3.50.0
     *
     * @param {Phaser.Renderer.WebGL.RenderTarget} source1 - The first source Render Target.
     * @param {Phaser.Renderer.WebGL.RenderTarget} source2 - The second source Render Target.
     * @param {Phaser.Renderer.WebGL.RenderTarget} [target] - The target Render Target.
     * @param {number} [strength=1] - The strength of the blend.
     * @param {boolean} [clearAlpha=true] - Clear the alpha channel when running `gl.clear` on the target?
     * @param {Phaser.Renderer.WebGL.WebGLShader} [blendShader] - The shader to use during the blend copy.
     */
    public function blendFrames(source1:phaser.renderer.webgl.RenderTarget, source2:phaser.renderer.webgl.RenderTarget, ?target:phaser.renderer.webgl.RenderTarget, ?strength:Float, ?clearAlpha:Bool, ?blendShader:phaser.renderer.webgl.WebGLShader):Void;
    /**
     * Draws the `source1` and `source2` Render Targets to the `target` Render Target
     * using an additive blend effect, which is controlled by the `strength` parameter.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#blendFramesAdditive
     * @since 3.50.0
     *
     * @param {Phaser.Renderer.WebGL.RenderTarget} source1 - The first source Render Target.
     * @param {Phaser.Renderer.WebGL.RenderTarget} source2 - The second source Render Target.
     * @param {Phaser.Renderer.WebGL.RenderTarget} [target] - The target Render Target.
     * @param {number} [strength=1] - The strength of the blend.
     * @param {boolean} [clearAlpha=true] - Clear the alpha channel when running `gl.clear` on the target?
     */
    public function blendFramesAdditive(source1:phaser.renderer.webgl.RenderTarget, source2:phaser.renderer.webgl.RenderTarget, ?target:phaser.renderer.webgl.RenderTarget, ?strength:Float, ?clearAlpha:Bool):Void;
    /**
     * Clears the given Render Target.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#clearFrame
     * @since 3.50.0
     *
     * @param {Phaser.Renderer.WebGL.RenderTarget} target - The Render Target to clear.
     * @param {boolean} [clearAlpha=true] - Clear the alpha channel when running `gl.clear` on the target?
     */
    public function clearFrame(target:phaser.renderer.webgl.RenderTarget, ?clearAlpha:Bool):Void;
    /**
     * Set the UV values for the 6 vertices that make up the quad used by the shaders
     * in the Utility Pipeline.
     *
     * Be sure to call `resetUVs` once you have finished manipulating the UV coordinates.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#setUVs
     * @since 3.50.0
     *
     * @param {number} uA - The u value of vertex A.
     * @param {number} vA - The v value of vertex A.
     * @param {number} uB - The u value of vertex B.
     * @param {number} vB - The v value of vertex B.
     * @param {number} uC - The u value of vertex C.
     * @param {number} vC - The v value of vertex C.
     * @param {number} uD - The u value of vertex D.
     * @param {number} vD - The v value of vertex D.
     */
    public function setUVs(uA:Float, vA:Float, uB:Float, vB:Float, uC:Float, vC:Float, uD:Float, vD:Float):Void;
    /**
     * Sets the vertex UV coordinates of the quad used by the shaders in the Utility Pipeline
     * so that they correctly adjust the texture coordinates for a blit frame effect.
     *
     * Be sure to call `resetUVs` once you have finished manipulating the UV coordinates.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#setTargetUVs
     * @since 3.50.0
     *
     * @param {Phaser.Renderer.WebGL.RenderTarget} source - The source Render Target.
     * @param {Phaser.Renderer.WebGL.RenderTarget} target - The target Render Target.
     */
    public function setTargetUVs(source:phaser.renderer.webgl.RenderTarget, target:phaser.renderer.webgl.RenderTarget):Void;
    /**
     * Horizontally flips the UV coordinates of the quad used by the shaders in this
     * Utility Pipeline.
     *
     * Be sure to call `resetUVs` once you have finished manipulating the UV coordinates.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#flipX
     * @since 3.50.0
     */
    public function flipX():Void;
    /**
     * Vertically flips the UV coordinates of the quad used by the shaders in this
     * Utility Pipeline.
     *
     * Be sure to call `resetUVs` once you have finished manipulating the UV coordinates.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#flipY
     * @since 3.50.0
     */
    public function flipY():Void;
    /**
     * Resets the quad vertice UV values to their default settings.
     *
     * The quad is used by all shaders of the Utility Pipeline.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.UtilityPipeline#resetUVs
     * @since 3.50.0
     */
    public function resetUVs():Void;
}
