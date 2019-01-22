package phaser.input;

/**
 * @classdesc
 * A Pointer object encapsulates both mouse and touch input within Phaser.
 *
 * By default, Phaser will create 2 pointers for your game to use. If you require more, i.e. for a multi-touch
 * game, then use the `InputPlugin.addPointer` method to do so, rather than instantiating this class directly,
 * otherwise it won't be managed by the input system.
 *
 * You can reference the current active pointer via `InputPlugin.activePointer`. You can also use the properties
 * `InputPlugin.pointer1` through to `pointer10`, for each pointer you have enabled in your game.
 *
 * The properties of this object are set by the Input Plugin during processing. This object is then sent in all
 * input related events that the Input Plugin emits, so you can reference properties from it directly in your
 * callbacks.
 *
 * @class Pointer
 * @memberof Phaser.Input
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Input.InputManager} manager - A reference to the Input Manager.
 * @param {integer} id - The internal ID of this Pointer.
 */
@:native("Phaser.Input.Pointer")
extern class Pointer {
    public function new(manager:phaser.input.InputManager, id:Int);
    /**
     * A reference to the Input Manager.
     *
     * @name Phaser.Input.Pointer#manager
     * @type {Phaser.Input.InputManager}
     * @since 3.0.0
     */
    public var manager:phaser.input.InputManager;
    /**
     * The internal ID of this Pointer.
     *
     * @name Phaser.Input.Pointer#id
     * @type {integer}
     * @readonly
     * @since 3.0.0
     */
    public var id:Int;
    /**
     * The most recent native DOM Event this Pointer has processed.
     *
     * @name Phaser.Input.Pointer#event
     * @type {(TouchEvent|MouseEvent)}
     * @since 3.0.0
     */
    public var event:Dynamic;
    /**
     * The camera the Pointer interacted with during its last update.
     *
     * A Pointer can only ever interact with one camera at once, which will be the top-most camera
     * in the list should multiple cameras be positioned on-top of each other.
     *
     * @name Phaser.Input.Pointer#camera
     * @type {Phaser.Cameras.Scene2D.Camera}
     * @default null
     * @since 3.0.0
     */
    public var camera:phaser.cameras.scene2d.Camera;
    /**
     * 0: No button or un-initialized
     * 1: Left button
     * 2: Right button
     * 4: Wheel button or middle button
     * 8: 4th button (typically the "Browser Back" button)
     * 16: 5th button (typically the "Browser Forward" button)
     *
     * For a mouse configured for left-handed use, the button actions are reversed.
     * In this case, the values are read from right to left.
     *
     * @name Phaser.Input.Pointer#buttons
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var buttons:Int;
    /**
     * The position of the Pointer in screen space.
     *
     * @name Phaser.Input.Pointer#position
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var position:phaser.math.Vector2;
    /**
     * The previous position of the Pointer in screen space.
     *
     * The old x and y values are stored in here during the InputManager.transformPointer call.
     *
     * You can use it to track how fast the pointer is moving, or to smoothly interpolate between the old and current position.
     * See the `Pointer.getInterpolatedPosition` method to assist in this.
     *
     * @name Phaser.Input.Pointer#prevPosition
     * @type {Phaser.Math.Vector2}
     * @since 3.11.0
     */
    public var prevPosition:phaser.math.Vector2;
    /**
     * The x position of this Pointer, translated into the coordinate space of the most recent Camera it interacted with.
     *
     * @name Phaser.Input.Pointer#worldX
     * @type {number}
     * @default 0
     * @since 3.10.0
     */
    public var worldX:Float;
    /**
     * The y position of this Pointer, translated into the coordinate space of the most recent Camera it interacted with.
     *
     * @name Phaser.Input.Pointer#worldY
     * @type {number}
     * @default 0
     * @since 3.10.0
     */
    public var worldY:Float;
    /**
     * X coordinate of the Pointer when Button 1 (left button), or Touch, was pressed, used for dragging objects.
     *
     * @name Phaser.Input.Pointer#downX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var downX:Float;
    /**
     * Y coordinate of the Pointer when Button 1 (left button), or Touch, was pressed, used for dragging objects.
     *
     * @name Phaser.Input.Pointer#downY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var downY:Float;
    /**
     * Time when Button 1 (left button), or Touch, was pressed, used for dragging objects.
     *
     * @name Phaser.Input.Pointer#downTime
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var downTime:Float;
    /**
     * X coordinate of the Pointer when Button 1 (left button), or Touch, was released, used for dragging objects.
     *
     * @name Phaser.Input.Pointer#upX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var upX:Float;
    /**
     * Y coordinate of the Pointer when Button 1 (left button), or Touch, was released, used for dragging objects.
     *
     * @name Phaser.Input.Pointer#upY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var upY:Float;
    /**
     * Time when Button 1 (left button), or Touch, was released, used for dragging objects.
     *
     * @name Phaser.Input.Pointer#upTime
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var upTime:Float;
    /**
     * Is the primary button down? (usually button 0, the left mouse button)
     *
     * @name Phaser.Input.Pointer#primaryDown
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var primaryDown:Bool;
    /**
     * The Drag State of the Pointer:
     *
     * 0 = Not dragging anything
     * 1 = Being checked if dragging
     * 2 = Dragging something
     *
     * @name Phaser.Input.Pointer#dragState
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var dragState:Float;
    /**
     * Is _any_ button on this pointer considered as being down?
     *
     * @name Phaser.Input.Pointer#isDown
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var isDown:Bool;
    /**
     * A dirty flag for this Pointer, used internally by the Input Plugin.
     *
     * @name Phaser.Input.Pointer#dirty
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var dirty:Bool;
    /**
     * Is this Pointer considered as being "just down" or not?
     *
     * @name Phaser.Input.Pointer#justDown
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var justDown:Bool;
    /**
     * Is this Pointer considered as being "just up" or not?
     *
     * @name Phaser.Input.Pointer#justUp
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var justUp:Bool;
    /**
     * Is this Pointer considered as being "just moved" or not?
     *
     * @name Phaser.Input.Pointer#justMoved
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var justMoved:Bool;
    /**
     * Did the previous input event come from a Touch input (true) or Mouse? (false)
     *
     * @name Phaser.Input.Pointer#wasTouch
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var wasTouch:Bool;
    /**
     * Did this Pointer get canceled by a touchcancel event?
     *
     * Note: "canceled" is the American-English spelling of "cancelled". Please don't submit PRs correcting it!
     *
     * @name Phaser.Input.Pointer#wasCanceled
     * @type {boolean}
     * @default false
     * @since 3.15.0
     */
    public var wasCanceled:Bool;
    /**
     * If the mouse is locked, the horizontal relative movement of the Pointer in pixels since last frame.
     *
     * @name Phaser.Input.Pointer#movementX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var movementX:Float;
    /**
     * If the mouse is locked, the vertical relative movement of the Pointer in pixels since last frame.
     *
     * @name Phaser.Input.Pointer#movementY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var movementY:Float;
    /**
     * The identifier property of the Pointer as set by the DOM event when this Pointer is started.
     *
     * @name Phaser.Input.Pointer#identifier
     * @type {number}
     * @since 3.10.0
     */
    public var identifier:Float;
    /**
     * The pointerId property of the Pointer as set by the DOM event when this Pointer is started.
     * The browser can and will recycle this value.
     *
     * @name Phaser.Input.Pointer#pointerId
     * @type {number}
     * @since 3.10.0
     */
    public var pointerId:Float;
    /**
     * An active Pointer is one that is currently pressed down on the display.
     * A Mouse is always considered as active.
     *
     * @name Phaser.Input.Pointer#active
     * @type {boolean}
     * @since 3.10.0
     */
    public var active:Bool;
    /**
     * The x position of this Pointer.
     * The value is in screen space.
     * See `worldX` to get a camera converted position.
     *
     * @name Phaser.Input.Pointer#x
     * @type {number}
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y position of this Pointer.
     * The value is in screen space.
     * See `worldY` to get a camera converted position.
     *
     * @name Phaser.Input.Pointer#y
     * @type {number}
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * Takes a Camera and returns a Vector2 containing the translated position of this Pointer
     * within that Camera. This can be used to convert this Pointers position into camera space.
     *
     * @method Phaser.Input.Pointer#positionToCamera
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use for the translation.
     * @param {(Phaser.Math.Vector2|object)} [output] - A Vector2-like object in which to store the translated position.
     *
     * @return {(Phaser.Math.Vector2|object)} A Vector2 containing the translated coordinates of this Pointer, based on the given camera.
     */
    public function positionToCamera(camera:phaser.cameras.scene2d.Camera, ?output:Dynamic):phaser.math.Vector2;
    /**
     * Checks to see if any buttons are being held down on this Pointer.
     *
     * @method Phaser.Input.Pointer#noButtonDown
     * @since 3.0.0
     *
     * @return {boolean} `true` if no buttons are being held down.
     */
    public function noButtonDown():Bool;
    /**
     * Checks to see if the left button is being held down on this Pointer.
     *
     * @method Phaser.Input.Pointer#leftButtonDown
     * @since 3.0.0
     *
     * @return {boolean} `true` if the left button is being held down.
     */
    public function leftButtonDown():Bool;
    /**
     * Checks to see if the right button is being held down on this Pointer.
     *
     * @method Phaser.Input.Pointer#rightButtonDown
     * @since 3.0.0
     *
     * @return {boolean} `true` if the right button is being held down.
     */
    public function rightButtonDown():Bool;
    /**
     * Checks to see if the middle button is being held down on this Pointer.
     *
     * @method Phaser.Input.Pointer#middleButtonDown
     * @since 3.0.0
     *
     * @return {boolean} `true` if the middle button is being held down.
     */
    public function middleButtonDown():Bool;
    /**
     * Checks to see if the back button is being held down on this Pointer.
     *
     * @method Phaser.Input.Pointer#backButtonDown
     * @since 3.0.0
     *
     * @return {boolean} `true` if the back button is being held down.
     */
    public function backButtonDown():Bool;
    /**
     * Checks to see if the forward button is being held down on this Pointer.
     *
     * @method Phaser.Input.Pointer#forwardButtonDown
     * @since 3.0.0
     *
     * @return {boolean} `true` if the forward button is being held down.
     */
    public function forwardButtonDown():Bool;
    /**
     * Returns the distance between the Pointer's current position and where it was
     * first pressed down (the `downX` and `downY` properties)
     *
     * @method Phaser.Input.Pointer#getDistance
     * @since 3.13.0
     *
     * @return {number} The distance the Pointer has moved since being pressed down.
     */
    public function getDistance():Float;
    /**
     * Takes the previous and current Pointer positions and then generates an array of interpolated values between
     * the two. The array will be populated up to the size of the `steps` argument.
     *
     * ```javaScript
     * var points = pointer.getInterpolatedPosition(4);
     *
     * // points[0] = { x: 0, y: 0 }
     * // points[1] = { x: 2, y: 1 }
     * // points[2] = { x: 3, y: 2 }
     * // points[3] = { x: 6, y: 3 }
     * ```
     *
     * Use this if you need to get smoothed values between the previous and current pointer positions. DOM pointer
     * events can often fire faster than the main browser loop, and this will help you avoid janky movement
     * especially if you have an object following a Pointer.
     *
     * Note that if you provide an output array it will only be populated up to the number of steps provided.
     * It will not clear any previous data that may have existed beyond the range of the steps count.
     *
     * Internally it uses the Smooth Step interpolation calculation.
     *
     * @method Phaser.Input.Pointer#getInterpolatedPosition
     * @since 3.11.0
     *
     * @param {integer} [steps=10] - The number of interpolation steps to use.
     * @param {array} [out] - An array to store the results in. If not provided a new one will be created.
     *
     * @return {array} An array of interpolated values.
     */
    public function getInterpolatedPosition(?steps:Int, ?out:Array<Dynamic>):Array<Dynamic>;
    /**
     * Destroys this Pointer instance and resets its external references.
     *
     * @method Phaser.Input.Pointer#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
