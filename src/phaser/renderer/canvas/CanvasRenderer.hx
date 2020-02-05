package phaser.renderer.canvas;

/**
 * @classdesc
 * The Canvas Renderer is responsible for managing 2D canvas rendering contexts, including the one used by the Game's canvas. It tracks the internal state of a given context and can renderer textured Game Objects to it, taking into account alpha, blending, and scaling.
 *
 * @class CanvasRenderer
 * @memberof Phaser.Renderer.Canvas
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Game} game - The Phaser Game instance that owns this renderer.
 */
@:native("Phaser.Renderer.Canvas.CanvasRenderer")
extern class CanvasRenderer {
    public function new(game:phaser.Game);
    /**
     * The Phaser Game instance that owns this renderer.
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#game
     * @type {Phaser.Game}
     * @since 3.0.0
     */
    public var game:phaser.Game;
    /**
     * A constant which allows the renderer to be easily identified as a Canvas Renderer.
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#type
     * @type {integer}
     * @since 3.0.0
     */
    public var type:Int;
    /**
     * The total number of Game Objects which were rendered in a frame.
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#drawCount
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var drawCount:Float;
    /**
     * The width of the canvas being rendered to.
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#width
     * @type {integer}
     * @since 3.0.0
     */
    public var width:Int;
    /**
     * The height of the canvas being rendered to.
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#height
     * @type {integer}
     * @since 3.0.0
     */
    public var height:Int;
    /**
     * The local configuration settings of the CanvasRenderer.
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#config
     * @type {object}
     * @since 3.0.0
     */
    public var config:Dynamic;
    /**
     * The canvas element which the Game uses.
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#gameCanvas
     * @type {HTMLCanvasElement}
     * @since 3.0.0
     */
    public var gameCanvas:js.html.CanvasElement;
    /**
     * The canvas context used to render all Cameras in all Scenes during the game loop.
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#gameContext
     * @type {CanvasRenderingContext2D}
     * @since 3.0.0
     */
    public var gameContext:js.html.CanvasRenderingContext2D;
    /**
     * The canvas context currently used by the CanvasRenderer for all rendering operations.
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#currentContext
     * @type {CanvasRenderingContext2D}
     * @since 3.0.0
     */
    public var currentContext:js.html.CanvasRenderingContext2D;
    /**
     * Should the Canvas use Image Smoothing or not when drawing Sprites?
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#antialias
     * @type {boolean}
     * @since 3.20.0
     */
    public var antialias:Bool;
    /**
     * The blend modes supported by the Canvas Renderer.
     *
     * This object maps the {@link Phaser.BlendModes} to canvas compositing operations.
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#blendModes
     * @type {array}
     * @since 3.0.0
     */
    public var blendModes:Array<Dynamic>;
    /**
     * Details about the currently scheduled snapshot.
     *
     * If a non-null `callback` is set in this object, a snapshot of the canvas will be taken after the current frame is fully rendered.
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#snapshotState
     * @type {Phaser.Types.Renderer.Snapshot.SnapshotState}
     * @since 3.16.0
     */
    public var snapshotState:phaser.types.renderer.snapshot.SnapshotState;
    /**
     * Prepares the game canvas for rendering.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#init
     * @since 3.0.0
     */
    public function init():Void;
    /**
     * The event handler that manages the `resize` event dispatched by the Scale Manager.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#onResize
     * @since 3.16.0
     *
     * @param {Phaser.Structs.Size} gameSize - The default Game Size object. This is the un-modified game dimensions.
     * @param {Phaser.Structs.Size} baseSize - The base Size object. The game dimensions multiplied by the resolution. The canvas width / height values match this.
     * @param {Phaser.Structs.Size} displaySize - The display Size object. The size of the canvas style width / height attributes.
     * @param {number} [resolution] - The Scale Manager resolution setting.
     */
    public function onResize(gameSize:phaser.structs.Size, baseSize:phaser.structs.Size, displaySize:phaser.structs.Size, ?resolution:Float):Void;
    /**
     * Resize the main game canvas.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#resize
     * @since 3.0.0
     *
     * @param {number} [width] - The new width of the renderer.
     * @param {number} [height] - The new height of the renderer.
     */
    public function resize(?width:Float, ?height:Float):Void;
    /**
     * Resets the transformation matrix of the current context to the identity matrix, thus resetting any transformation.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#resetTransform
     * @since 3.0.0
     */
    public function resetTransform():Void;
    /**
     * Sets the blend mode (compositing operation) of the current context.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#setBlendMode
     * @since 3.0.0
     *
     * @param {string} blendMode - The new blend mode which should be used.
     *
     * @return {this} This CanvasRenderer object.
     */
    public function setBlendMode(blendMode:String):Dynamic;
    /**
     * Changes the Canvas Rendering Context that all draw operations are performed against.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#setContext
     * @since 3.12.0
     *
     * @param {?CanvasRenderingContext2D} [ctx] - The new Canvas Rendering Context to draw everything to. Leave empty to reset to the Game Canvas.
     *
     * @return {this} The Canvas Renderer instance.
     */
    public function setContext(?ctx:js.html.CanvasRenderingContext2D):Dynamic;
    /**
     * Sets the global alpha of the current context.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#setAlpha
     * @since 3.0.0
     *
     * @param {number} alpha - The new alpha to use, where 0 is fully transparent and 1 is fully opaque.
     *
     * @return {this} This CanvasRenderer object.
     */
    public function setAlpha(alpha:Float):Dynamic;
    /**
     * Called at the start of the render loop.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#preRender
     * @since 3.0.0
     */
    public function preRender():Void;
    /**
     * Renders the Scene to the given Camera.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#render
     * @since 3.0.0
     *
     * @param {Phaser.Scene} scene - The Scene to render.
     * @param {Phaser.GameObjects.DisplayList} children - The Game Objects within the Scene to be rendered.
     * @param {number} interpolationPercentage - The interpolation percentage to apply. Currently unused.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Scene Camera to render with.
     */
    public function render(scene:phaser.Scene, children:phaser.gameobjects.DisplayList, interpolationPercentage:Float, camera:phaser.cameras.scene2d.Camera):Void;
    /**
     * Restores the game context's global settings and takes a snapshot if one is scheduled.
     *
     * The post-render step happens after all Cameras in all Scenes have been rendered.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#postRender
     * @since 3.0.0
     */
    public function postRender():Void;
    /**
     * Takes a snapshot of the given area of the given canvas.
     *
     * Unlike the other snapshot methods, this one is processed immediately and doesn't wait for the next render.
     *
     * Snapshots work by creating an Image object from the canvas data, this is a blocking process, which gets
     * more expensive the larger the canvas size gets, so please be careful how you employ this in your game.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#snapshotCanvas
     * @since 3.19.0
     *
     * @param {HTMLCanvasElement} canvas - The canvas to grab from.
     * @param {Phaser.Types.Renderer.Snapshot.SnapshotCallback} callback - The Function to invoke after the snapshot image is created.
     * @param {boolean} [getPixel=false] - Grab a single pixel as a Color object, or an area as an Image object?
     * @param {integer} [x=0] - The x coordinate to grab from.
     * @param {integer} [y=0] - The y coordinate to grab from.
     * @param {integer} [width=canvas.width] - The width of the area to grab.
     * @param {integer} [height=canvas.height] - The height of the area to grab.
     * @param {string} [type='image/png'] - The format of the image to create, usually `image/png` or `image/jpeg`.
     * @param {number} [encoderOptions=0.92] - The image quality, between 0 and 1. Used for image formats with lossy compression, such as `image/jpeg`.
     *
     * @return {this} This Canvas Renderer.
     */
    public function snapshotCanvas(canvas:js.html.CanvasElement, callback:phaser.types.renderer.snapshot.SnapshotCallback, ?getPixel:Bool, ?x:Int, ?y:Int, ?width:Int, ?height:Int, ?type:String, ?encoderOptions:Float):Dynamic;
    /**
     * Schedules a snapshot of the entire game viewport to be taken after the current frame is rendered.
     *
     * To capture a specific area see the `snapshotArea` method. To capture a specific pixel, see `snapshotPixel`.
     *
     * Only one snapshot can be active _per frame_. If you have already called `snapshotPixel`, for example, then
     * calling this method will override it.
     *
     * Snapshots work by creating an Image object from the canvas data, this is a blocking process, which gets
     * more expensive the larger the canvas size gets, so please be careful how you employ this in your game.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#snapshot
     * @since 3.0.0
     *
     * @param {Phaser.Types.Renderer.Snapshot.SnapshotCallback} callback - The Function to invoke after the snapshot image is created.
     * @param {string} [type='image/png'] - The format of the image to create, usually `image/png` or `image/jpeg`.
     * @param {number} [encoderOptions=0.92] - The image quality, between 0 and 1. Used for image formats with lossy compression, such as `image/jpeg`.
     *
     * @return {this} This WebGL Renderer.
     */
    public function snapshot(callback:phaser.types.renderer.snapshot.SnapshotCallback, ?type:String, ?encoderOptions:Float):Dynamic;
    /**
     * Schedules a snapshot of the given area of the game viewport to be taken after the current frame is rendered.
     *
     * To capture the whole game viewport see the `snapshot` method. To capture a specific pixel, see `snapshotPixel`.
     *
     * Only one snapshot can be active _per frame_. If you have already called `snapshotPixel`, for example, then
     * calling this method will override it.
     *
     * Snapshots work by creating an Image object from the canvas data, this is a blocking process, which gets
     * more expensive the larger the canvas size gets, so please be careful how you employ this in your game.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#snapshotArea
     * @since 3.16.0
     *
     * @param {integer} x - The x coordinate to grab from.
     * @param {integer} y - The y coordinate to grab from.
     * @param {integer} width - The width of the area to grab.
     * @param {integer} height - The height of the area to grab.
     * @param {Phaser.Types.Renderer.Snapshot.SnapshotCallback} callback - The Function to invoke after the snapshot image is created.
     * @param {string} [type='image/png'] - The format of the image to create, usually `image/png` or `image/jpeg`.
     * @param {number} [encoderOptions=0.92] - The image quality, between 0 and 1. Used for image formats with lossy compression, such as `image/jpeg`.
     *
     * @return {this} This WebGL Renderer.
     */
    public function snapshotArea(x:Int, y:Int, width:Int, height:Int, callback:phaser.types.renderer.snapshot.SnapshotCallback, ?type:String, ?encoderOptions:Float):Dynamic;
    /**
     * Schedules a snapshot of the given pixel from the game viewport to be taken after the current frame is rendered.
     *
     * To capture the whole game viewport see the `snapshot` method. To capture a specific area, see `snapshotArea`.
     *
     * Only one snapshot can be active _per frame_. If you have already called `snapshotArea`, for example, then
     * calling this method will override it.
     *
     * Unlike the other two snapshot methods, this one will return a `Color` object containing the color data for
     * the requested pixel. It doesn't need to create an internal Canvas or Image object, so is a lot faster to execute,
     * using less memory.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#snapshotPixel
     * @since 3.16.0
     *
     * @param {integer} x - The x coordinate of the pixel to get.
     * @param {integer} y - The y coordinate of the pixel to get.
     * @param {Phaser.Types.Renderer.Snapshot.SnapshotCallback} callback - The Function to invoke after the snapshot pixel data is extracted.
     *
     * @return {this} This WebGL Renderer.
     */
    public function snapshotPixel(x:Int, y:Int, callback:phaser.types.renderer.snapshot.SnapshotCallback):Dynamic;
    /**
     * Takes a Sprite Game Object, or any object that extends it, and draws it to the current context.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#batchSprite
     * @since 3.12.0
     *
     * @param {Phaser.GameObjects.GameObject} sprite - The texture based Game Object to draw.
     * @param {Phaser.Textures.Frame} frame - The frame to draw, doesn't have to be that owned by the Game Object.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use for the rendering transform.
     * @param {Phaser.GameObjects.Components.TransformMatrix} [parentTransformMatrix] - The transform matrix of the parent container, if set.
     */
    public function batchSprite(sprite:phaser.gameobjects.GameObject, frame:phaser.textures.Frame, camera:phaser.cameras.scene2d.Camera, ?parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    /**
     * Destroys all object references in the Canvas Renderer.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
