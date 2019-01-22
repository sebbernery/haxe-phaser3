package phaser.cameras.controls;

/**
 * @classdesc
 * [description]
 *
 * @class FixedKeyControl
 * @memberof Phaser.Cameras.Controls
 * @constructor
 * @since 3.0.0
 *
 * @param {FixedKeyControlConfig} config - [description]
 */
@:native("Phaser.Cameras.Controls.FixedKeyControl")
extern class FixedKeyControl {
    public function new(config:FixedKeyControlConfig);
    /**
     * The Camera that this Control will update.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#camera
     * @type {?Phaser.Cameras.Scene2D.Camera}
     * @default null
     * @since 3.0.0
     */
    public var camera:phaser.cameras.scene2d.Camera;
    /**
     * The Key to be pressed that will move the Camera left.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#left
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var left:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will move the Camera right.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#right
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var right:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will move the Camera up.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#up
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var up:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will move the Camera down.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#down
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var down:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will zoom the Camera in.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#zoomIn
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var zoomIn:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will zoom the Camera out.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#zoomOut
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var zoomOut:phaser.input.keyboard.Key;
    /**
     * The speed at which the camera will zoom if the `zoomIn` or `zoomOut` keys are pressed.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#zoomSpeed
     * @type {number}
     * @default 0.01
     * @since 3.0.0
     */
    public var zoomSpeed:Float;
    /**
     * The horizontal speed the camera will move.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#speedX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var speedX:Float;
    /**
     * The vertical speed the camera will move.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#speedY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var speedY:Float;
    /**
     * A flag controlling if the Controls will update the Camera or not.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#active
     * @type {boolean}
     * @since 3.0.0
     */
    public var active:Bool;
    /**
     * Starts the Key Control running, providing it has been linked to a camera.
     *
     * @method Phaser.Cameras.Controls.FixedKeyControl#start
     * @since 3.0.0
     *
     * @return {Phaser.Cameras.Controls.FixedKeyControl} This Key Control instance.
     */
    public function start():phaser.cameras.controls.FixedKeyControl;
    /**
     * Stops this Key Control from running. Call `start` to start it again.
     *
     * @method Phaser.Cameras.Controls.FixedKeyControl#stop
     * @since 3.0.0
     *
     * @return {Phaser.Cameras.Controls.FixedKeyControl} This Key Control instance.
     */
    public function stop():phaser.cameras.controls.FixedKeyControl;
    /**
     * Binds this Key Control to a camera.
     *
     * @method Phaser.Cameras.Controls.FixedKeyControl#setCamera
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera to bind this Key Control to.
     *
     * @return {Phaser.Cameras.Controls.FixedKeyControl} This Key Control instance.
     */
    public function setCamera(camera:phaser.cameras.scene2d.Camera):phaser.cameras.controls.FixedKeyControl;
    /**
     * [description]
     *
     * @method Phaser.Cameras.Controls.FixedKeyControl#update
     * @since 3.0.0
     *
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     */
    public function update(delta:Float):Void;
    /**
     * Destroys this Key Control.
     *
     * @method Phaser.Cameras.Controls.FixedKeyControl#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
