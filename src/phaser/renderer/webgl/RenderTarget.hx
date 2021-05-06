package phaser.renderer.webgl;

/**
 * @classdesc
 * A Render Target encapsulates a WebGL framebuffer and the WebGL Texture that displays it.
 *
 * Instances of this class are typically created by, and belong to WebGL Pipelines, however
 * other Game Objects and classes can take advantage of Render Targets as well.
 *
 * @class RenderTarget
 * @memberof Phaser.Renderer.WebGL
 * @constructor
 * @since 3.50.0
 *
 * @param {Phaser.Renderer.WebGL.WebGLRenderer} renderer - A reference to the WebGLRenderer.
 * @param {number} width - The width of this Render Target.
 * @param {number} height - The height of this Render Target.
 * @param {number} [scale=1] - A value between 0 and 1. Controls the size of this Render Target in relation to the Renderer.
 * @param {number} [minFilter=0] - The minFilter mode of the texture when created. 0 is `LINEAR`, 1 is `NEAREST`.
 * @param {boolean} [autoClear=true] - Automatically clear this framebuffer when bound?
 * @param {boolean} [autoResize=false] - Automatically resize this Render Target if the WebGL Renderer resizes?
 */
@:native("Phaser.Renderer.WebGL.RenderTarget")
extern class RenderTarget {
    public function new(renderer:phaser.renderer.webgl.WebGLRenderer, width:Float, height:Float, ?scale:Float, ?minFilter:Float, ?autoClear:Bool, ?autoResize:Bool);
    /**
     * A reference to the WebGLRenderer instance.
     *
     * @name Phaser.Renderer.WebGL.RenderTarget#renderer
     * @type {Phaser.Renderer.WebGL.WebGLRenderer}
     * @since 3.50.0
     */
    public var renderer:phaser.renderer.webgl.WebGLRenderer;
    /**
     * The WebGLFramebuffer of this Render Target.
     *
     * This is created in the `RenderTarget.resize` method.
     *
     * @name Phaser.Renderer.WebGL.RenderTarget#framebuffer
     * @type {WebGLFramebuffer}
     * @since 3.50.0
     */
    public var framebuffer:js.html.webgl.Framebuffer;
    /**
     * The WebGLTexture of this Render Target.
     *
     * This is created in the `RenderTarget.resize` method.
     *
     * @name Phaser.Renderer.WebGL.RenderTarget#texture
     * @type {WebGLTexture}
     * @since 3.50.0
     */
    public var texture:js.html.webgl.Texture;
    /**
     * The width of the texture.
     *
     * @name Phaser.Renderer.WebGL.RenderTarget#width
     * @type {number}
     * @readonly
     * @since 3.50.0
     */
    public var width:Float;
    /**
     * The height of the texture.
     *
     * @name Phaser.Renderer.WebGL.RenderTarget#height
     * @type {number}
     * @readonly
     * @since 3.50.0
     */
    public var height:Float;
    /**
     * A value between 0 and 1. Controls the size of this Render Target in relation to the Renderer.
     *
     * A value of 1 matches it. 0.5 makes the Render Target half the size of the renderer, etc.
     *
     * @name Phaser.Renderer.WebGL.RenderTarget#scale
     * @type {number}
     * @since 3.50.0
     */
    public var scale:Float;
    /**
     * The minFilter mode of the texture. 0 is `LINEAR`, 1 is `NEAREST`.
     *
     * @name Phaser.Renderer.WebGL.RenderTarget#minFilter
     * @type {number}
     * @since 3.50.0
     */
    public var minFilter:Float;
    /**
     * Controls if this Render Target is automatically cleared (via `gl.COLOR_BUFFER_BIT`)
     * during the `RenderTarget.bind` method.
     *
     * If you need more control over how, or if, the target is cleared, you can disable
     * this via the config on creation, or even toggle it directly at runtime.
     *
     * @name Phaser.Renderer.WebGL.RenderTarget#autoClear
     * @type {boolean}
     * @since 3.50.0
     */
    public var autoClear:Bool;
    /**
     * Does this Render Target automatically resize when the WebGL Renderer does?
     *
     * Modify this property via the `setAutoResize` method.
     *
     * @name Phaser.Renderer.WebGL.RenderTarget#autoResize
     * @type {boolean}
     * @readonly
     * @since 3.50.0
     */
    public var autoResize:Bool;
    /**
     * Unbinds this Render Target and optionally flushes the WebGL Renderer first.
     *
     * @name Phaser.Renderer.WebGL.RenderTarget#unbind
     * @since 3.50.0
     *
     * @param {boolean} [flush=false] - Flush the WebGL Renderer before unbinding?
     *
     * @return {WebGLFramebuffer} The Framebuffer that was set, or `null` if there aren't any more in the stack.
     */
    public var unbind:Dynamic;
    /**
     * Removes all external references from this class and deletes the
     * WebGL framebuffer and texture instances.
     *
     * Does not remove this Render Target from the parent pipeline.
     *
     * @name Phaser.Renderer.WebGL.RenderTarget#destroy
     * @since 3.50.0
     */
    public var destroy:Dynamic;
    /**
     * Sets if this Render Target should automatically resize when the WebGL Renderer
     * emits a resize event.
     *
     * @method Phaser.Renderer.WebGL.RenderTarget#setAutoResize
     * @since 3.50.0
     *
     * @param {boolean} autoResize - Automatically resize this Render Target when the WebGL Renderer resizes?
     *
     * @return {this} This RenderTarget instance.
     */
    public function setAutoResize(autoResize:Bool):Dynamic;
    /**
     * Resizes this Render Target.
     *
     * Deletes both the frame buffer and texture, if they exist and then re-creates
     * them using the new sizes.
     *
     * This method is called automatically by the pipeline during its resize handler.
     *
     * @method Phaser.Renderer.WebGL.RenderTarget#resize
     * @since 3.50.0
     *
     * @param {number} width - The new width of this Render Target.
     * @param {number} height - The new height of this Render Target.
     *
     * @return {this} This RenderTarget instance.
     */
    public function resize(width:Float, height:Float):Dynamic;
    /**
     * Pushes this Render Target as the current frame buffer of the renderer.
     *
     * If `autoClear` is set, then clears the texture.
     *
     * If `adjustViewport` is `true` then it will flush the renderer and then adjust the GL viewport.
     *
     * @method Phaser.Renderer.WebGL.RenderTarget#bind
     * @since 3.50.0
     *
     * @param {boolean} [adjustViewport=false] - Adjust the GL viewport by calling `RenderTarget.adjustViewport` ?
     * @param {number} [width] - Optional new width of this Render Target.
     * @param {number} [height] - Optional new height of this Render Target.
     */
    public function bind(?adjustViewport:Bool, ?width:Float, ?height:Float):Void;
    /**
     * Adjusts the GL viewport to match the width and height of this Render Target.
     *
     * Also disables `SCISSOR_TEST`.
     *
     * @method Phaser.Renderer.WebGL.RenderTarget#adjustViewport
     * @since 3.50.0
     */
    public function adjustViewport():Void;
    /**
     * Clears this Render Target.
     *
     * @method Phaser.Renderer.WebGL.RenderTarget#clear
     * @since 3.50.0
     */
    public function clear():Void;
}
