package phaser.display.masks;

/**
 * @classdesc
 * A Geometry Mask can be applied to a Game Object to hide any pixels of it which don't intersect
 * a visible pixel from the geometry mask. The mask is essentially a clipping path which can only
 * make a masked pixel fully visible or fully invisible without changing its alpha (opacity).
 *
 * A Geometry Mask uses a Graphics Game Object to determine which pixels of the masked Game Object(s)
 * should be clipped. For any given point of a masked Game Object's texture, the pixel will only be displayed
 * if the Graphics Game Object of the Geometry Mask has a visible pixel at the same position. The color and
 * alpha of the pixel from the Geometry Mask do not matter.
 *
 * The Geometry Mask's location matches the location of its Graphics object, not the location of the masked objects.
 * Moving or transforming the underlying Graphics object will change the mask (and affect the visibility
 * of any masked objects), whereas moving or transforming a masked object will not affect the mask.
 * You can think of the Geometry Mask (or rather, of its Graphics object) as an invisible curtain placed
 * in front of all masked objects which has its own visual properties and, naturally, respects the camera's
 * visual properties, but isn't affected by and doesn't follow the masked objects by itself.
 *
 * @class GeometryMask
 * @memberof Phaser.Display.Masks
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - This parameter is not used.
 * @param {Phaser.GameObjects.Graphics} graphicsGeometry - The Graphics Game Object to use for the Geometry Mask. Doesn't have to be in the Display List.
 */
@:native("Phaser.Display.Masks.GeometryMask")
extern class GeometryMask {
    public function new(scene:phaser.Scene, graphicsGeometry:phaser.gameobjects.Graphics);
    /**
     * The Graphics object which describes the Geometry Mask.
     *
     * @name Phaser.Display.Masks.GeometryMask#geometryMask
     * @type {Phaser.GameObjects.Graphics}
     * @since 3.0.0
     */
    public var geometryMask:phaser.gameobjects.Graphics;
    /**
     * Similar to the BitmapMasks invertAlpha setting this to true will then hide all pixels
     * drawn to the Geometry Mask.
     *
     * @name Phaser.Display.Masks.GeometryMask#invertAlpha
     * @type {boolean}
     * @since 3.16.0
     */
    public var invertAlpha:Bool;
    /**
     * Is this mask a stencil mask?
     *
     * @name Phaser.Display.Masks.GeometryMask#isStencil
     * @type {boolean}
     * @readonly
     * @since 3.17.0
     */
    public var isStencil:Bool;
    /**
     * Sets a new Graphics object for the Geometry Mask.
     *
     * @method Phaser.Display.Masks.GeometryMask#setShape
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Graphics} graphicsGeometry - The Graphics object which will be used for the Geometry Mask.
     *
     * @return {this} This Geometry Mask
     */
    public function setShape(graphicsGeometry:phaser.gameobjects.Graphics):Dynamic;
    /**
     * Sets the `invertAlpha` property of this Geometry Mask.
     * Inverting the alpha essentially flips the way the mask works.
     *
     * @method Phaser.Display.Masks.GeometryMask#setInvertAlpha
     * @since 3.17.0
     *
     * @param {boolean} [value=true] - Invert the alpha of this mask?
     *
     * @return {this} This Geometry Mask
     */
    public function setInvertAlpha(?value:Bool):Dynamic;
    /**
     * Renders the Geometry Mask's underlying Graphics object to the OpenGL stencil buffer and enables the stencil test, which clips rendered pixels according to the mask.
     *
     * @method Phaser.Display.Masks.GeometryMask#preRenderWebGL
     * @since 3.0.0
     *
     * @param {Phaser.Renderer.WebGL.WebGLRenderer} renderer - The WebGL Renderer instance to draw to.
     * @param {Phaser.GameObjects.GameObject} child - The Game Object being rendered.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera the Game Object is being rendered through.
     */
    public function preRenderWebGL(renderer:phaser.renderer.webgl.WebGLRenderer, child:phaser.gameobjects.GameObject, camera:phaser.cameras.scene2d.Camera):Void;
    /**
     * Applies the current stencil mask to the renderer.
     *
     * @method Phaser.Display.Masks.GeometryMask#applyStencil
     * @since 3.17.0
     *
     * @param {Phaser.Renderer.WebGL.WebGLRenderer} renderer - The WebGL Renderer instance to draw to.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera the Game Object is being rendered through.
     * @param {boolean} inc - Is this an INCR stencil or a DECR stencil?
     */
    public function applyStencil(renderer:phaser.renderer.webgl.WebGLRenderer, camera:phaser.cameras.scene2d.Camera, inc:Bool):Void;
    /**
     * Flushes all rendered pixels and disables the stencil test of a WebGL context, thus disabling the mask for it.
     *
     * @method Phaser.Display.Masks.GeometryMask#postRenderWebGL
     * @since 3.0.0
     *
     * @param {Phaser.Renderer.WebGL.WebGLRenderer} renderer - The WebGL Renderer instance to draw flush.
     */
    public function postRenderWebGL(renderer:phaser.renderer.webgl.WebGLRenderer):Void;
    /**
     * Sets the clipping path of a 2D canvas context to the Geometry Mask's underlying Graphics object.
     *
     * @method Phaser.Display.Masks.GeometryMask#preRenderCanvas
     * @since 3.0.0
     *
     * @param {Phaser.Renderer.Canvas.CanvasRenderer} renderer - The Canvas Renderer instance to set the clipping path on.
     * @param {Phaser.GameObjects.GameObject} mask - The Game Object being rendered.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera the Game Object is being rendered through.
     */
    public function preRenderCanvas(renderer:phaser.renderer.canvas.CanvasRenderer, mask:phaser.gameobjects.GameObject, camera:phaser.cameras.scene2d.Camera):Void;
    /**
     * Restore the canvas context's previous clipping path, thus turning off the mask for it.
     *
     * @method Phaser.Display.Masks.GeometryMask#postRenderCanvas
     * @since 3.0.0
     *
     * @param {Phaser.Renderer.Canvas.CanvasRenderer} renderer - The Canvas Renderer instance being restored.
     */
    public function postRenderCanvas(renderer:phaser.renderer.canvas.CanvasRenderer):Void;
    /**
     * Destroys this GeometryMask and nulls any references it holds.
     *
     * Note that if a Game Object is currently using this mask it will _not_ automatically detect you have destroyed it,
     * so be sure to call `clearMask` on any Game Object using it, before destroying it.
     *
     * @method Phaser.Display.Masks.GeometryMask#destroy
     * @since 3.7.0
     */
    public function destroy():Void;
}
