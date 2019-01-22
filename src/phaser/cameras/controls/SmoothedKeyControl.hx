package phaser.cameras.controls;

/**
 * @classdesc
 * [description]
 *
 * @class SmoothedKeyControl
 * @memberof Phaser.Cameras.Controls
 * @constructor
 * @since 3.0.0
 *
 * @param {SmoothedKeyControlConfig} config - [description]
 */
@:native("Phaser.Cameras.Controls.SmoothedKeyControl")
extern class SmoothedKeyControl {
    public function new(config:SmoothedKeyControlConfig);
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
     * @return {Phaser.Cameras.Controls.SmoothedKeyControl} This Key Control instance.
     */
    public function start():phaser.cameras.controls.SmoothedKeyControl;
    /**
     * Stops this Key Control from running. Call `start` to start it again.
     *
     * @method Phaser.Cameras.Controls.SmoothedKeyControl#stop
     * @since 3.0.0
     *
     * @return {Phaser.Cameras.Controls.SmoothedKeyControl} This Key Control instance.
     */
    public function stop():phaser.cameras.controls.SmoothedKeyControl;
    /**
     * Binds this Key Control to a camera.
     *
     * @method Phaser.Cameras.Controls.SmoothedKeyControl#setCamera
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera to bind this Key Control to.
     *
     * @return {Phaser.Cameras.Controls.SmoothedKeyControl} This Key Control instance.
     */
    public function setCamera(camera:phaser.cameras.scene2d.Camera):phaser.cameras.controls.SmoothedKeyControl;
    /**
     * [description]
     *
     * @method Phaser.Cameras.Controls.SmoothedKeyControl#update
     * @since 3.0.0
     *
     * @param {number} delta - The delta time, in ms, elapsed since the last frame.
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
