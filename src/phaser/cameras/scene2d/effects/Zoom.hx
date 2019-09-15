package phaser.cameras.scene2d.effects;

/**
 * @classdesc
 * A Camera Zoom effect.
 *
 * This effect will zoom the Camera to the given scale, over the duration and with the ease specified.
 *
 * The effect will dispatch several events on the Camera itself and you can also specify an `onUpdate` callback,
 * which is invoked each frame for the duration of the effect if required.
 *
 * @class Zoom
 * @memberof Phaser.Cameras.Scene2D.Effects
 * @constructor
 * @since 3.11.0
 *
 * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera this effect is acting upon.
 */
@:native("Phaser.Cameras.Scene2D.Effects.Zoom")
extern class Zoom {
    public function new(camera:phaser.cameras.scene2d.Camera);
    /**
     * The Camera this effect belongs to.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Zoom#camera
     * @type {Phaser.Cameras.Scene2D.Camera}
     * @readonly
     * @since 3.11.0
     */
    public var camera:phaser.cameras.scene2d.Camera;
    /**
     * Is this effect actively running?
     *
     * @name Phaser.Cameras.Scene2D.Effects.Zoom#isRunning
     * @type {boolean}
     * @readonly
     * @default false
     * @since 3.11.0
     */
    public var isRunning:Bool;
    /**
     * The duration of the effect, in milliseconds.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Zoom#duration
     * @type {integer}
     * @readonly
     * @default 0
     * @since 3.11.0
     */
    public var duration:Int;
    /**
     * The starting zoom value;
     *
     * @name Phaser.Cameras.Scene2D.Effects.Zoom#source
     * @type {number}
     * @since 3.11.0
     */
    public var source:Float;
    /**
     * The destination zoom value.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Zoom#destination
     * @type {number}
     * @since 3.11.0
     */
    public var destination:Float;
    /**
     * The ease function to use during the zoom.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Zoom#ease
     * @type {function}
     * @since 3.11.0
     */
    public var ease:Dynamic;
    /**
     * If this effect is running this holds the current percentage of the progress, a value between 0 and 1.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Zoom#progress
     * @type {number}
     * @since 3.11.0
     */
    public var progress:Float;
    /**
     * This effect will zoom the Camera to the given scale, over the duration and with the ease specified.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Zoom#start
     * @fires Phaser.Cameras.Scene2D.Events#ZOOM_START
     * @fires Phaser.Cameras.Scene2D.Events#ZOOM_COMPLETE
     * @since 3.11.0
     *
     * @param {number} zoom - The target Camera zoom value.
     * @param {integer} [duration=1000] - The duration of the effect in milliseconds.
     * @param {(string|function)} [ease='Linear'] - The ease to use for the Zoom. Can be any of the Phaser Easing constants or a custom function.
     * @param {boolean} [force=false] - Force the zoom effect to start immediately, even if already running.
     * @param {Phaser.Types.Cameras.Scene2D.CameraZoomCallback} [callback] - This callback will be invoked every frame for the duration of the effect.
     * It is sent three arguments: A reference to the camera, a progress amount between 0 and 1 indicating how complete the effect is,
     * and the current camera zoom value.
     * @param {any} [context] - The context in which the callback is invoked. Defaults to the Scene to which the Camera belongs.
     *
     * @return {Phaser.Cameras.Scene2D.Camera} The Camera on which the effect was started.
     */
    public function start(zoom:Float, ?duration:Int, ?ease:Dynamic, ?force:Bool, ?callback:phaser.types.cameras.scene2d.CameraZoomCallback, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    /**
     * The main update loop for this effect. Called automatically by the Camera.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Zoom#update
     * @since 3.11.0
     *
     * @param {integer} time - The current timestamp as generated by the Request Animation Frame or SetTimeout.
     * @param {number} delta - The delta time, in ms, elapsed since the last frame.
     */
    public function update(time:Int, delta:Float):Void;
    /**
     * Called internally when the effect completes.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Zoom#effectComplete
     * @fires Phaser.Cameras.Scene2D.Events#ZOOM_COMPLETE
     * @since 3.11.0
     */
    public function effectComplete():Void;
    /**
     * Resets this camera effect.
     * If it was previously running, it stops instantly without calling its onComplete callback or emitting an event.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Zoom#reset
     * @since 3.11.0
     */
    public function reset():Void;
    /**
     * Destroys this effect, releasing it from the Camera.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Zoom#destroy
     * @since 3.11.0
     */
    public function destroy():Void;
}
