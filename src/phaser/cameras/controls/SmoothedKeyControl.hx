package phaser.cameras.controls;

/**
 * @classdesc
 * A Smoothed Key Camera Control.
 *
 * This allows you to control the movement and zoom of a camera using the defined keys.
 * Unlike the Fixed Camera Control you can also provide physics values for acceleration, drag and maxSpeed for smoothing effects.
 *
 * ```javascript
 * var controlConfig = {
 *     camera: this.cameras.main,
 *     left: cursors.left,
 *     right: cursors.right,
 *     up: cursors.up,
 *     down: cursors.down,
 *     zoomIn: this.input.keyboard.addKey(Phaser.Input.Keyboard.KeyCodes.Q),
 *     zoomOut: this.input.keyboard.addKey(Phaser.Input.Keyboard.KeyCodes.E),
 *     zoomSpeed: 0.02,
 *     acceleration: 0.06,
 *     drag: 0.0005,
 *     maxSpeed: 1.0
 * };
 * ```
 *
 * You must call the `update` method of this controller every frame.
 *
 * @class SmoothedKeyControl
 * @memberof Phaser.Cameras.Controls
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Types.Cameras.Controls.SmoothedKeyControlConfig} config - The Smoothed Key Control configuration object.
 */
@:native("Phaser.Cameras.Controls.SmoothedKeyControl")
extern class SmoothedKeyControl {
    public function new(config:phaser.types.cameras.controls.SmoothedKeyControlConfig);
    /**
     * The Camera that this Control will update.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#camera
     * @type {?Phaser.Cameras.Scene2D.Camera}
     * @default null
     * @since 3.0.0
     */
    public var camera:phaser.cameras.scene2d.Camera;
    /**
     * The Key to be pressed that will move the Camera left.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#left
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var left:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will move the Camera right.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#right
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var right:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will move the Camera up.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#up
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var up:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will move the Camera down.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#down
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var down:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will zoom the Camera in.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#zoomIn
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var zoomIn:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will zoom the Camera out.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#zoomOut
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var zoomOut:phaser.input.keyboard.Key;
    /**
     * The speed at which the camera will zoom if the `zoomIn` or `zoomOut` keys are pressed.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#zoomSpeed
     * @type {number}
     * @default 0.01
     * @since 3.0.0
     */
    public var zoomSpeed:Float;
    /**
     * The smallest zoom value the camera will reach when zoomed out.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#minZoom
     * @type {number}
     * @default 0.001
     * @since 3.53.0
     */
    public var minZoom:Float;
    /**
     * The largest zoom value the camera will reach when zoomed in.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#maxZoom
     * @type {number}
     * @default 1000
     * @since 3.53.0
     */
    public var maxZoom:Float;
    /**
     * The horizontal acceleration the camera will move.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#accelX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var accelX:Float;
    /**
     * The vertical acceleration the camera will move.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#accelY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var accelY:Float;
    /**
     * The horizontal drag applied to the camera when it is moving.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#dragX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var dragX:Float;
    /**
     * The vertical drag applied to the camera when it is moving.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#dragY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var dragY:Float;
    /**
     * The maximum horizontal speed the camera will move.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#maxSpeedX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var maxSpeedX:Float;
    /**
     * The maximum vertical speed the camera will move.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#maxSpeedY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var maxSpeedY:Float;
    /**
     * A flag controlling if the Controls will update the Camera or not.
     *
     * @name Phaser.Cameras.Controls.SmoothedKeyControl#active
     * @type {boolean}
     * @since 3.0.0
     */
    public var active:Bool;
    /**
     * Starts the Key Control running, providing it has been linked to a camera.
     *
     * @method Phaser.Cameras.Controls.SmoothedKeyControl#start
     * @since 3.0.0
     *
     * @return {this} This Key Control instance.
     */
    public function start():Dynamic;
    /**
     * Stops this Key Control from running. Call `start` to start it again.
     *
     * @method Phaser.Cameras.Controls.SmoothedKeyControl#stop
     * @since 3.0.0
     *
     * @return {this} This Key Control instance.
     */
    public function stop():Dynamic;
    /**
     * Binds this Key Control to a camera.
     *
     * @method Phaser.Cameras.Controls.SmoothedKeyControl#setCamera
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera to bind this Key Control to.
     *
     * @return {this} This Key Control instance.
     */
    public function setCamera(camera:phaser.cameras.scene2d.Camera):Dynamic;
    /**
     * Applies the results of pressing the control keys to the Camera.
     *
     * You must call this every step, it is not called automatically.
     *
     * @method Phaser.Cameras.Controls.SmoothedKeyControl#update
     * @since 3.0.0
     *
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     */
    public function update(delta:Float):Void;
    /**
     * Destroys this Key Control.
     *
     * @method Phaser.Cameras.Controls.SmoothedKeyControl#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
