package phaser.cameras.scene2d.effects;

/**
 * @classdesc
 * A Camera Rotate effect.
 *
 * This effect will rotate the Camera so that the its viewport finishes at the given angle in radians,
 * over the duration and with the ease specified.
 *
 * Camera rotation always takes place based on the Camera viewport. By default, rotation happens
 * in the center of the viewport. You can adjust this with the `originX` and `originY` properties.
 *
 * Rotation influences the rendering of _all_ Game Objects visible by this Camera. However, it does not
 * rotate the Camera viewport itself, which always remains an axis-aligned rectangle.
 *
 * Only the camera is rotates. None of the objects it is displaying are impacted, i.e. their positions do
 * not change.
 *
 * The effect will dispatch several events on the Camera itself and you can also specify an `onUpdate` callback,
 * which is invoked each frame for the duration of the effect if required.
 *
 * @class RotateTo
 * @memberof Phaser.Cameras.Scene2D.Effects
 * @constructor
 * @since 3.23.0
 *
 * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera this effect is acting upon.
 */
@:native("Phaser.Cameras.Scene2D.Effects.RotateTo")
extern class RotateTo {
    public function new(camera:phaser.cameras.scene2d.Camera);
    /**
     * The Camera this effect belongs to.
     *
     * @name Phaser.Cameras.Scene2D.Effects.RotateTo#camera
     * @type {Phaser.Cameras.Scene2D.Camera}
     * @readonly
     * @since 3.23.0
     */
    public var camera:phaser.cameras.scene2d.Camera;
    /**
     * Is this effect actively running?
     *
     * @name Phaser.Cameras.Scene2D.Effects.RotateTo#isRunning
     * @type {boolean}
     * @readonly
     * @default false
     * @since 3.23.0
     */
    public var isRunning:Bool;
    /**
     * The duration of the effect, in milliseconds.
     *
     * @name Phaser.Cameras.Scene2D.Effects.RotateTo#duration
     * @type {integer}
     * @readonly
     * @default 0
     * @since 3.23.0
     */
    public var duration:Int;
    /**
     * The starting angle to rotate the camera from.
     *
     * @name Phaser.Cameras.Scene2D.Effects.RotateTo#source
     * @type {number}
     * @since 3.23.0
     */
    public var source:Float;
    /**
     * The constantly updated value based on the force.
     *
     * @name Phaser.Cameras.Scene2D.Effects.RotateTo#current
     * @type {number}
     * @since 3.23.0
     */
    public var current:Float;
    /**
     * The destination angle in radians to rotate the camera to.
     *
     * @name Phaser.Cameras.Scene2D.Effects.RotateTo#destination
     * @type {number}
     * @since 3.23.0
     */
    public var destination:Float;
    /**
     * The ease function to use during the Rotate.
     *
     * @name Phaser.Cameras.Scene2D.Effects.RotateTo#ease
     * @type {function}
     * @since 3.23.0
     */
    public var ease:Dynamic;
    /**
     * If this effect is running this holds the current percentage of the progress, a value between 0 and 1.
     *
     * @name Phaser.Cameras.Scene2D.Effects.RotateTo#progress
     * @type {number}
     * @since 3.23.0
     */
    public var progress:Float;
    /**
     * The direction of the rotation.
     *
     * @name Phaser.Cameras.Scene2D.Effects.RotateTo#clockwise
     * @type {boolean}
     * @since 3.23.0
     */
    public var clockwise:Bool;
    /**
     * The shortest direction to the target rotation.
     *
     * @name Phaser.Cameras.Scene2D.Effects.RotateTo#shortestPath
     * @type {boolean}
     * @since 3.23.0
     */
    public var shortestPath:Bool;
    /**
     * This effect will scroll the Camera so that the center of its viewport finishes at the given angle,
     * over the duration and with the ease specified.
     *
     * @method Phaser.Cameras.Scene2D.Effects.RotateTo#start
     * @fires Phaser.Cameras.Scene2D.Events#ROTATE_START
     * @fires Phaser.Cameras.Scene2D.Events#ROTATE_COMPLETE
     * @since 3.23.0
     *
     * @param {number} radians - The destination angle in radians to rotate the Camera viewport to. If the angle is positive then the rotation is clockwise else anticlockwise
     * @param {boolean} [shortestPath=false] - If shortest path is set to true the camera will rotate in the quickest direction clockwise or anti-clockwise.
     * @param {integer} [duration=1000] - The duration of the effect in milliseconds.
     * @param {(string|function)} [ease='Linear'] - The ease to use for the Rotate. Can be any of the Phaser Easing constants or a custom function.
     * @param {boolean} [force=false] - Force the rotation effect to start immediately, even if already running.
     * @param {CameraRotateCallback} [callback] - This callback will be invoked every frame for the duration of the effect.
     * It is sent four arguments: A reference to the camera, a progress amount between 0 and 1 indicating how complete the effect is,
     * the current camera scroll x coordinate and the current camera scroll y coordinate.
     * @param {any} [context] - The context in which the callback is invoked. Defaults to the Scene to which the Camera belongs.
     *
     * @return {Phaser.Cameras.Scene2D.Camera} The Camera on which the effect was started.
     */
    public function start(radians:Float, ?shortestPath:Bool, ?duration:Int, ?ease:Dynamic, ?force:Bool, ?callback:CameraRotateCallback, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    /**
     * The main update loop for this effect. Called automatically by the Camera.
     *
     * @method Phaser.Cameras.Scene2D.Effects.RotateTo#update
     * @since 3.23.0
     *
     * @param {integer} time - The current timestamp as generated by the Request Animation Frame or SetTimeout.
     * @param {number} delta - The delta time, in ms, elapsed since the last frame.
     */
    public function update(time:Int, delta:Float):Void;
    /**
     * Called internally when the effect completes.
     *
     * @method Phaser.Cameras.Scene2D.Effects.RotateTo#effectComplete
     * @since 3.23.0
     */
    public function effectComplete():Void;
    /**
     * Resets this camera effect.
     * If it was previously running, it stops instantly without calling its onComplete callback or emitting an event.
     *
     * @method Phaser.Cameras.Scene2D.Effects.RotateTo#reset
     * @since 3.23.0
     */
    public function reset():Void;
    /**
     * Destroys this effect, releasing it from the Camera.
     *
     * @method Phaser.Cameras.Scene2D.Effects.RotateTo#destroy
     * @since 3.23.0
     */
    public function destroy():Void;
}
