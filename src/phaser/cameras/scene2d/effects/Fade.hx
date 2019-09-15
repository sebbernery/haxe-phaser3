package phaser.cameras.scene2d.effects;

/**
 * @classdesc
 * A Camera Fade effect.
 *
 * This effect will fade the camera viewport to the given color, over the duration specified.
 *
 * Only the camera viewport is faded. None of the objects it is displaying are impacted, i.e. their colors do
 * not change.
 *
 * The effect will dispatch several events on the Camera itself and you can also specify an `onUpdate` callback,
 * which is invoked each frame for the duration of the effect, if required.
 *
 * @class Fade
 * @memberof Phaser.Cameras.Scene2D.Effects
 * @constructor
 * @since 3.5.0
 *
 * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera this effect is acting upon.
 */
@:native("Phaser.Cameras.Scene2D.Effects.Fade")
extern class Fade {
    public function new(camera:phaser.cameras.scene2d.Camera);
    /**
     * The Camera this effect belongs to.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Fade#camera
     * @type {Phaser.Cameras.Scene2D.Camera}
     * @readonly
     * @since 3.5.0
     */
    public var camera:phaser.cameras.scene2d.Camera;
    /**
     * Is this effect actively running?
     *
     * @name Phaser.Cameras.Scene2D.Effects.Fade#isRunning
     * @type {boolean}
     * @readonly
     * @default false
     * @since 3.5.0
     */
    public var isRunning:Bool;
    /**
     * Has this effect finished running?
     *
     * This is different from `isRunning` because it remains set to `true` when the effect is over,
     * until the effect is either reset or started again.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Fade#isComplete
     * @type {boolean}
     * @readonly
     * @default false
     * @since 3.5.0
     */
    public var isComplete:Bool;
    /**
     * The direction of the fade.
     * `true` = fade out (transparent to color), `false` = fade in (color to transparent)
     *
     * @name Phaser.Cameras.Scene2D.Effects.Fade#direction
     * @type {boolean}
     * @readonly
     * @since 3.5.0
     */
    public var direction:Bool;
    /**
     * The duration of the effect, in milliseconds.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Fade#duration
     * @type {integer}
     * @readonly
     * @default 0
     * @since 3.5.0
     */
    public var duration:Int;
    /**
     * If this effect is running this holds the current percentage of the progress, a value between 0 and 1.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Fade#progress
     * @type {number}
     * @since 3.5.0
     */
    public var progress:Float;
    /**
     * Fades the Camera to or from the given color over the duration specified.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Fade#start
     * @fires Phaser.Cameras.Scene2D.Events#FADE_IN_START
     * @fires Phaser.Cameras.Scene2D.Events#FADE_OUT_START
     * @since 3.5.0
     *
     * @param {boolean} [direction=true] - The direction of the fade. `true` = fade out (transparent to color), `false` = fade in (color to transparent)
     * @param {integer} [duration=1000] - The duration of the effect in milliseconds.
     * @param {integer} [red=0] - The amount to fade the red channel towards. A value between 0 and 255.
     * @param {integer} [green=0] - The amount to fade the green channel towards. A value between 0 and 255.
     * @param {integer} [blue=0] - The amount to fade the blue channel towards. A value between 0 and 255.
     * @param {boolean} [force=false] - Force the effect to start immediately, even if already running.
     * @param {Phaser.Types.Cameras.Scene2D.CameraFadeCallback} [callback] - This callback will be invoked every frame for the duration of the effect.
     * It is sent two arguments: A reference to the camera and a progress amount between 0 and 1 indicating how complete the effect is.
     * @param {any} [context] - The context in which the callback is invoked. Defaults to the Scene to which the Camera belongs.
     *
     * @return {Phaser.Cameras.Scene2D.Camera} The Camera on which the effect was started.
     */
    public function start(?direction:Bool, ?duration:Int, ?red:Int, ?green:Int, ?blue:Int, ?force:Bool, ?callback:phaser.types.cameras.scene2d.CameraFadeCallback, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    /**
     * The main update loop for this effect. Called automatically by the Camera.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Fade#update
     * @since 3.5.0
     *
     * @param {integer} time - The current timestamp as generated by the Request Animation Frame or SetTimeout.
     * @param {number} delta - The delta time, in ms, elapsed since the last frame.
     */
    public function update(time:Int, delta:Float):Void;
    /**
     * Called internally by the Canvas Renderer.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Fade#postRenderCanvas
     * @since 3.5.0
     *
     * @param {CanvasRenderingContext2D} ctx - The Canvas context to render to.
     *
     * @return {boolean} `true` if the effect drew to the renderer, otherwise `false`.
     */
    public function postRenderCanvas(ctx:js.html.CanvasRenderingContext2D):Bool;
    /**
     * Called internally by the WebGL Renderer.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Fade#postRenderWebGL
     * @since 3.5.0
     *
     * @param {Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline} pipeline - The WebGL Pipeline to render to.
     * @param {function} getTintFunction - A function that will return the gl safe tint colors.
     *
     * @return {boolean} `true` if the effect drew to the renderer, otherwise `false`.
     */
    public function postRenderWebGL(pipeline:phaser.renderer.webgl.pipelines.TextureTintPipeline, getTintFunction:Dynamic):Bool;
    /**
     * Called internally when the effect completes.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Fade#effectComplete
     * @fires Phaser.Cameras.Scene2D.Events#FADE_IN_COMPLETE
     * @fires Phaser.Cameras.Scene2D.Events#FADE_OUT_COMPLETE
     * @since 3.5.0
     */
    public function effectComplete():Void;
    /**
     * Resets this camera effect.
     * If it was previously running, it stops instantly without calling its onComplete callback or emitting an event.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Fade#reset
     * @since 3.5.0
     */
    public function reset():Void;
    /**
     * Destroys this effect, releasing it from the Camera.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Fade#destroy
     * @since 3.5.0
     */
    public function destroy():Void;
}
