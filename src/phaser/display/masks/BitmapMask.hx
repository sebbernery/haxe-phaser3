package phaser.display.masks;

/**
 * @classdesc
 * [description]
 *
 * @class BitmapMask
 * @memberof Phaser.Display.Masks
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - [description]
 * @param {Phaser.GameObjects.GameObject} renderable - A renderable Game Object that uses a texture, such as a Sprite.
 */
@:native("Phaser.Display.Masks.BitmapMask")
extern class BitmapMask {
    public function new(scene:phaser.Scene, renderable:phaser.gameobjects.GameObject);
    /**
     * A reference to either the Canvas or WebGL Renderer that this Mask is using.
     *
     * @name Phaser.Display.Masks.BitmapMask#renderer
     * @type {(Phaser.Renderer.Canvas.CanvasRenderer|Phaser.Renderer.WebGL.WebGLRenderer)}
     * @since 3.11.0
     */
    public var renderer:Dynamic;
    /**
     * A renderable Game Object that uses a texture, such as a Sprite.
     *
     * @name Phaser.Display.Masks.BitmapMask#bitmapMask
     * @type {Phaser.GameObjects.GameObject}
     * @since 3.0.0
     */
    public var bitmapMask:phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @name Phaser.Display.Masks.BitmapMask#maskTexture
     * @type {WebGLTexture}
     * @default null
     * @since 3.0.0
     */
    public var maskTexture:js.html.webgl.Texture;
    /**
     * [description]
     *
     * @name Phaser.Display.Masks.BitmapMask#mainTexture
     * @type {WebGLTexture}
     * @default null
     * @since 3.0.0
     */
    public var mainTexture:js.html.webgl.Texture;
    /**
     * [description]
     *
     * @name Phaser.Display.Masks.BitmapMask#dirty
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var dirty:Bool;
    /**
     * [description]
     *
     * @name Phaser.Display.Masks.BitmapMask#mainFramebuffer
     * @type {WebGLFramebuffer}
     * @since 3.0.0
     */
    public var mainFramebuffer:js.html.webgl.Framebuffer;
    /**
     * [description]
     *
     * @name Phaser.Display.Masks.BitmapMask#maskFramebuffer
     * @type {WebGLFramebuffer}
     * @since 3.0.0
     */
    public var maskFramebuffer:js.html.webgl.Framebuffer;
    /**
     * [description]
     *
     * @name Phaser.Display.Masks.BitmapMask#invertAlpha
     * @type {boolean}
     * @since 3.1.2
     */
    public var invertAlpha:Bool;
    /**
     * [description]
     *
     * @method Phaser.Display.Masks.BitmapMask#setBitmap
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} renderable - A renderable Game Object that uses a texture, such as a Sprite.
     */
    public function setBitmap(renderable:phaser.gameobjects.GameObject):Void;
    /**
     * [description]
     *
     * @method Phaser.Display.Masks.BitmapMask#preRenderWebGL
     * @since 3.0.0
     *
     * @param {(Phaser.Renderer.Canvas.CanvasRenderer|Phaser.Renderer.WebGL.WebGLRenderer)} renderer - [description]
     * @param {Phaser.GameObjects.GameObject} maskedObject - [description]
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to render to.
     */
    public function preRenderWebGL(renderer:Dynamic, maskedObject:phaser.gameobjects.GameObject, camera:phaser.cameras.scene2d.Camera):Void;
    /**
     * [description]
     *
     * @method Phaser.Display.Masks.BitmapMask#postRenderWebGL
     * @since 3.0.0
     *
     * @param {(Phaser.Renderer.Canvas.CanvasRenderer|Phaser.Renderer.WebGL.WebGLRenderer)} renderer - [description]
     */
    public function postRenderWebGL(renderer:Dynamic):Void;
    /**
     * [description]
     *
     * @method Phaser.Display.Masks.BitmapMask#preRenderCanvas
     * @since 3.0.0
     *
     * @param {(Phaser.Renderer.Canvas.CanvasRenderer|Phaser.Renderer.WebGL.WebGLRenderer)} renderer - [description]
     * @param {Phaser.GameObjects.GameObject} mask - [description]
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to render to.
     */
    public function preRenderCanvas(renderer:Dynamic, mask:phaser.gameobjects.GameObject, camera:phaser.cameras.scene2d.Camera):Void;
    /**
     * [description]
     *
     * @method Phaser.Display.Masks.BitmapMask#postRenderCanvas
     * @since 3.0.0
     *
     * @param {(Phaser.Renderer.Canvas.CanvasRenderer|Phaser.Renderer.WebGL.WebGLRenderer)} renderer - [description]
     */
    public function postRenderCanvas(renderer:Dynamic):Void;
    /**
     * Destroys this BitmapMask and nulls any references it holds.
     *
     * Note that if a Game Object is currently using this mask it will _not_ automatically detect you have destroyed it,
     * so be sure to call `clearMask` on any Game Object using it, before destroying it.
     *
     * @method Phaser.Display.Masks.BitmapMask#destroy
     * @since 3.7.0
     */
    public function destroy():Void;
}
