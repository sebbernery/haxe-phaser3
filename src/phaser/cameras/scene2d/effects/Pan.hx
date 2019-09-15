package phaser.cameras.scene2d.effects;

/**
 * @classdesc
 * A Camera Pan effect.
 *
 * This effect will scroll the Camera so that the center of its viewport finishes at the given destination,
 * over the duration and with the ease specified.
 *
 * Only the camera scroll is moved. None of the objects it is displaying are impacted, i.e. their positions do
 * not change.
 *
 * The effect will dispatch several events on the Camera itself and you can also specify an `onUpdate` callback,
 * which is invoked each frame for the duration of the effect if required.
 *
 * @class Pan
 * @memberof Phaser.Cameras.Scene2D.Effects
 * @constructor
 * @since 3.11.0
 *
 * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera this effect is acting upon.
 */
@:native("Phaser.Cameras.Scene2D.Effects.Pan")
extern class Pan {
    public function new(camera:phaser.cameras.scene2d.Camera);
    /**
     * The Camera this effect belongs to.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Pan#camera
     * @type {Phaser.Cameras.Scene2D.Camera}
     * @readonly
     * @since 3.11.0
     */
    public var camera:phaser.cameras.scene2d.Camera;
    /**
     * Is this effect actively running?
     *
     * @name Phaser.Cameras.Scene2D.Effects.Pan#isRunning
     * @type {boolean}
     * @readonly
     * @default false
     * @since 3.11.0
     */
    public var isRunning:Bool;
    /**
     * The duration of the effect, in milliseconds.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Pan#duration
     * @type {integer}
     * @readonly
     * @default 0
     * @since 3.11.0
     */
    public var duration:Int;
    /**
     * The starting scroll coordinates to pan the camera from.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Pan#source
     * @type {Phaser.Math.Vector2}
     * @since 3.11.0
     */
    public var source:phaser.math.Vector2;
    /**
     * The constantly updated value based on zoom.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Pan#current
     * @type {Phaser.Math.Vector2}
     * @since 3.11.0
     */
    public var current:phaser.math.Vector2;
    /**
     * The destination scroll coordinates to pan the camera to.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Pan#destination
     * @type {Phaser.Math.Vector2}
     * @since 3.11.0
     */
    public var destination:phaser.math.Vector2;
    /**
     * The ease function to use during the pan.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Pan#ease
     * @type {function}
     * @since 3.11.0
     */
    public var ease:Dynamic;
    /**
     * If this effect is running this holds the current percentage of the progress, a value between 0 and 1.
     *
     * @name Phaser.Cameras.Scene2D.Effects.Pan#progress
     * @type {number}
     * @since 3.11.0
     */
    public var progress:Float;
    /**
     * This effect will scroll the Camera so that the center of its viewport finishes at the given destination,
     * over the duration and with the ease specified.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Pan#start
     * @fires Phaser.Cameras.Scene2D.Events#PAN_START
     * @fires Phaser.Cameras.Scene2D.Events#PAN_COMPLETE
     * @since 3.11.0
     *
     * @param {number} x - The destination x coordinate to scroll the center of the Camera viewport to.
     * @param {number} y - The destination y coordinate to scroll the center of the Camera viewport to.
     * @param {integer} [duration=1000] - The duration of the effect in milliseconds.
     * @param {(string|function)} [ease='Linear'] - The ease to use for the pan. Can be any of the Phaser Easing constants or a custom function.
     * @param {boolean} [force=false] - Force the pan effect to start immediately, even if already running.
     * @param {Phaser.Types.Cameras.Scene2D.CameraPanCallback} [callback] - This callback will be invoked every frame for the duration of the effect.
     * It is sent four arguments: A reference to the camera, a progress amount between 0 and 1 indicating how complete the effect is,
     * the current camera scroll x coordinate and the current camera scroll y coordinate.
     * @param {any} [context] - The context in which the callback is invoked. Defaults to the Scene to which the Camera belongs.
     *
     * @return {Phaser.Cameras.Scene2D.Camera} The Camera on which the effect was started.
     */
    public function start(x:Float, y:Float, ?duration:Int, ?ease:Dynamic, ?force:Bool, ?callback:phaser.types.cameras.scene2d.CameraPanCallback, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    /**
     * The main update loop for this effect. Called automatically by the Camera.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Pan#update
     * @since 3.11.0
     *
     * @param {integer} time - The current timestamp as generated by the Request Animation Frame or SetTimeout.
     * @param {number} delta - The delta time, in ms, elapsed since the last frame.
     */
    public function update(time:Int, delta:Float):Void;
    /**
     * Called internally when the effect completes.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Pan#effectComplete
     * @fires Phaser.Cameras.Scene2D.Events#PAN_COMPLETE
     * @since 3.11.0
     */
    public function effectComplete():Void;
    /**
     * Resets this camera effect.
     * If it was previously running, it stops instantly without calling its onComplete callback or emitting an event.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Pan#reset
     * @since 3.11.0
     */
    public function reset():Void;
    /**
     * Destroys this effect, releasing it from the Camera.
     *
     * @method Phaser.Cameras.Scene2D.Effects.Pan#destroy
     * @since 3.11.0
     */
    public function destroy():Void;
}
