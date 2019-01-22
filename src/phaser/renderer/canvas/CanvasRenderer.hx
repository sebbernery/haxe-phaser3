package phaser.renderer.canvas;

/**
 * @classdesc
 * [description]
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
     * [description]
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#type
     * @type {integer}
     * @since 3.0.0
     */
    public var type:Int;
    /**
     * [description]
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#drawCount
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var drawCount:Float;
    /**
     * [description]
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * [description]
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * [description]
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#config
     * @type {RendererConfig}
     * @since 3.0.0
     */
    public var config:RendererConfig;
    /**
     * [description]
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#scaleMode
     * @type {integer}
     * @since 3.0.0
     */
    public var scaleMode:Int;
    /**
     * [description]
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#gameCanvas
     * @type {HTMLCanvasElement}
     * @since 3.0.0
     */
    public var gameCanvas:js.html.CanvasElement;
    /**
     * [description]
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#gameContext
     * @type {CanvasRenderingContext2D}
     * @since 3.0.0
     */
    public var gameContext:js.html.CanvasRenderingContext2D;
    /**
     * [description]
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#currentContext
     * @type {CanvasRenderingContext2D}
     * @since 3.0.0
     */
    public var currentContext:js.html.CanvasRenderingContext2D;
    /**
     * [description]
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#blendModes
     * @type {array}
     * @since 3.0.0
     */
    public var blendModes:Array<Dynamic>;
    /**
     * [description]
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#currentScaleMode
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var currentScaleMode:Float;
    /**
     * [description]
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#snapshotCallback
     * @type {?SnapshotCallback}
     * @default null
     * @since 3.0.0
     */
    public var snapshotCallback:SnapshotCallback;
    /**
     * [description]
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#snapshotType
     * @type {?string}
     * @default null
     * @since 3.0.0
     */
    public var snapshotType:String;
    /**
     * [description]
     *
     * @name Phaser.Renderer.Canvas.CanvasRenderer#snapshotEncoder
     * @type {?number}
     * @default null
     * @since 3.0.0
     */
    public var snapshotEncoder:Float;
    /**
     * [description]
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#init
     * @since 3.0.0
     */
    public function init():Void;
    /**
     * Resize the main game canvas.
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#resize
     * @since 3.0.0
     *
     * @param {integer} width - [description]
     * @param {integer} height - [description]
     */
    public function resize(width:Int, height:Int):Void;
    /**
     * [description]
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#onContextLost
     * @since 3.0.0
     *
     * @param {function} callback - [description]
     */
    public function onContextLost(callback:Dynamic):Void;
    /**
     * [description]
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#onContextRestored
     * @since 3.0.0
     *
     * @param {function} callback - [description]
     */
    public function onContextRestored(callback:Dynamic):Void;
    /**
     * [description]
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#resetTransform
     * @since 3.0.0
     */
    public function resetTransform():Void;
    /**
     * [description]
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#setBlendMode
     * @since 3.0.0
     *
     * @param {number} blendMode - [description]
     *
     * @return {this} [description]
     */
    public function setBlendMode(blendMode:Float):Dynamic;
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
     * [description]
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#setAlpha
     * @since 3.0.0
     *
     * @param {number} alpha - [description]
     *
     * @return {this} [description]
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
     * @param {Phaser.Scene} scene - [description]
     * @param {Phaser.GameObjects.DisplayList} children - [description]
     * @param {number} interpolationPercentage - [description]
     * @param {Phaser.Cameras.Scene2D.Camera} camera - [description]
     */
    public function render(scene:phaser.Scene, children:phaser.gameobjects.DisplayList, interpolationPercentage:Float, camera:phaser.cameras.scene2d.Camera):Void;
    /**
     * [description]
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#postRender
     * @since 3.0.0
     */
    public function postRender():Void;
    /**
     * [description]
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#snapshot
     * @since 3.0.0
     *
     * @param {SnapshotCallback} callback - [description]
     * @param {string} type - [description]
     * @param {number} encoderOptions - [description]
     */
    public function snapshot(callback:SnapshotCallback, type:String, encoderOptions:Float):Void;
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
     * [description]
     *
     * @method Phaser.Renderer.Canvas.CanvasRenderer#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
