package phaser.cameras.scene2d;

/**
 * @classdesc
 * A Camera.
 *
 * The Camera is the way in which all games are rendered in Phaser. They provide a view into your game world,
 * and can be positioned, rotated, zoomed and scrolled accordingly.
 *
 * A Camera consists of two elements: The viewport and the scroll values.
 *
 * The viewport is the physical position and size of the Camera within your game. Cameras, by default, are
 * created the same size as your game, but their position and size can be set to anything. This means if you
 * wanted to create a camera that was 320x200 in size, positioned in the bottom-right corner of your game,
 * you'd adjust the viewport to do that (using methods like `setViewport` and `setSize`).
 *
 * If you wish to change where the Camera is looking in your game, then you scroll it. You can do this
 * via the properties `scrollX` and `scrollY` or the method `setScroll`. Scrolling has no impact on the
 * viewport, and changing the viewport has no impact on the scrolling.
 *
 * By default a Camera will render all Game Objects it can see. You can change this using the `ignore` method,
 * allowing you to filter Game Objects out on a per-Camera basis.
 *
 * A Camera also has built-in special effects including Fade, Flash and Camera Shake.
 *
 * @class Camera
 * @memberof Phaser.Cameras.Scene2D
 * @constructor
 * @since 3.0.0
 *
 * @extends Phaser.Cameras.Scene2D.BaseCamera
 * @extends Phaser.GameObjects.Components.Flip
 * @extends Phaser.GameObjects.Components.Tint
 * @extends Phaser.GameObjects.Components.Pipeline
 *
 * @param {number} x - The x position of the Camera, relative to the top-left of the game canvas.
 * @param {number} y - The y position of the Camera, relative to the top-left of the game canvas.
 * @param {number} width - The width of the Camera, in pixels.
 * @param {number} height - The height of the Camera, in pixels.
 */
@:native("Phaser.Cameras.Scene2D.Camera")
extern class Camera extends phaser.cameras.scene2d.BaseCamera {
    public function new(x:Float, y:Float, width:Float, height:Float);
    /**
     * Does this Camera allow the Game Objects it renders to receive input events?
     *
     * @name Phaser.Cameras.Scene2D.Camera#inputEnabled
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var inputEnabled:Bool;
    /**
     * The Camera Fade effect handler.
     * To fade this camera see the `Camera.fade` methods.
     *
     * @name Phaser.Cameras.Scene2D.Camera#fadeEffect
     * @type {Phaser.Cameras.Scene2D.Effects.Fade}
     * @since 3.5.0
     */
    public var fadeEffect:phaser.cameras.scene2d.effects.Fade;
    /**
     * The Camera Flash effect handler.
     * To flash this camera see the `Camera.flash` method.
     *
     * @name Phaser.Cameras.Scene2D.Camera#flashEffect
     * @type {Phaser.Cameras.Scene2D.Effects.Flash}
     * @since 3.5.0
     */
    public var flashEffect:phaser.cameras.scene2d.effects.Flash;
    /**
     * The Camera Shake effect handler.
     * To shake this camera see the `Camera.shake` method.
     *
     * @name Phaser.Cameras.Scene2D.Camera#shakeEffect
     * @type {Phaser.Cameras.Scene2D.Effects.Shake}
     * @since 3.5.0
     */
    public var shakeEffect:phaser.cameras.scene2d.effects.Shake;
    /**
     * The Camera Pan effect handler.
     * To pan this camera see the `Camera.pan` method.
     *
     * @name Phaser.Cameras.Scene2D.Camera#panEffect
     * @type {Phaser.Cameras.Scene2D.Effects.Pan}
     * @since 3.11.0
     */
    public var panEffect:phaser.cameras.scene2d.effects.Pan;
    /**
     * The Camera Rotate To effect handler.
     * To rotate this camera see the `Camera.rotateTo` method.
     *
     * @name Phaser.Cameras.Scene2D.Camera#rotateToEffect
     * @type {Phaser.Cameras.Scene2D.Effects.RotateTo}
     * @since 3.23.0
     */
    public var rotateToEffect:phaser.cameras.scene2d.effects.RotateTo;
    /**
     * The Camera Zoom effect handler.
     * To zoom this camera see the `Camera.zoom` method.
     *
     * @name Phaser.Cameras.Scene2D.Camera#zoomEffect
     * @type {Phaser.Cameras.Scene2D.Effects.Zoom}
     * @since 3.11.0
     */
    public var zoomEffect:phaser.cameras.scene2d.effects.Zoom;
    /**
     * The linear interpolation value to use when following a target.
     *
     * Can also be set via `setLerp` or as part of the `startFollow` call.
     *
     * The default values of 1 means the camera will instantly snap to the target coordinates.
     * A lower value, such as 0.1 means the camera will more slowly track the target, giving
     * a smooth transition. You can set the horizontal and vertical values independently, and also
     * adjust this value in real-time during your game.
     *
     * Be sure to keep the value between 0 and 1. A value of zero will disable tracking on that axis.
     *
     * @name Phaser.Cameras.Scene2D.Camera#lerp
     * @type {Phaser.Math.Vector2}
     * @since 3.9.0
     */
    public var lerp:phaser.math.Vector2;
    /**
     * The values stored in this property are subtracted from the Camera targets position, allowing you to
     * offset the camera from the actual target x/y coordinates by this amount.
     * Can also be set via `setFollowOffset` or as part of the `startFollow` call.
     *
     * @name Phaser.Cameras.Scene2D.Camera#followOffset
     * @type {Phaser.Math.Vector2}
     * @since 3.9.0
     */
    public var followOffset:phaser.math.Vector2;
    /**
     * The Camera dead zone.
     *
     * The deadzone is only used when the camera is following a target.
     *
     * It defines a rectangular region within which if the target is present, the camera will not scroll.
     * If the target moves outside of this area, the camera will begin scrolling in order to follow it.
     *
     * The `lerp` values that you can set for a follower target also apply when using a deadzone.
     *
     * You can directly set this property to be an instance of a Rectangle. Or, you can use the
     * `setDeadzone` method for a chainable approach.
     *
     * The rectangle you provide can have its dimensions adjusted dynamically, however, please
     * note that its position is updated every frame, as it is constantly re-centered on the cameras mid point.
     *
     * Calling `setDeadzone` with no arguments will reset an active deadzone, as will setting this property
     * to `null`.
     *
     * @name Phaser.Cameras.Scene2D.Camera#deadzone
     * @type {?Phaser.Geom.Rectangle}
     * @since 3.11.0
     */
    public var deadzone:phaser.geom.Rectangle;
    /**
     * Sets the Camera dead zone.
     *
     * The deadzone is only used when the camera is following a target.
     *
     * It defines a rectangular region within which if the target is present, the camera will not scroll.
     * If the target moves outside of this area, the camera will begin scrolling in order to follow it.
     *
     * The deadzone rectangle is re-positioned every frame so that it is centered on the mid-point
     * of the camera. This allows you to use the object for additional game related checks, such as
     * testing if an object is within it or not via a Rectangle.contains call.
     *
     * The `lerp` values that you can set for a follower target also apply when using a deadzone.
     *
     * Calling this method with no arguments will reset an active deadzone.
     *
     * @method Phaser.Cameras.Scene2D.Camera#setDeadzone
     * @since 3.11.0
     *
     * @param {number} [width] - The width of the deadzone rectangle in pixels. If not specified the deadzone is removed.
     * @param {number} [height] - The height of the deadzone rectangle in pixels.
     *
     * @return {this} This Camera instance.
     */
    public function setDeadzone(?width:Float, ?height:Float):Dynamic;
    /**
     * Fades the Camera in from the given color over the duration specified.
     *
     * @method Phaser.Cameras.Scene2D.Camera#fadeIn
     * @fires Phaser.Cameras.Scene2D.Events#FADE_IN_START
     * @fires Phaser.Cameras.Scene2D.Events#FADE_IN_COMPLETE
     * @since 3.3.0
     *
     * @param {number} [duration=1000] - The duration of the effect in milliseconds.
     * @param {number} [red=0] - The amount to fade the red channel towards. A value between 0 and 255.
     * @param {number} [green=0] - The amount to fade the green channel towards. A value between 0 and 255.
     * @param {number} [blue=0] - The amount to fade the blue channel towards. A value between 0 and 255.
     * @param {function} [callback] - This callback will be invoked every frame for the duration of the effect.
     * It is sent two arguments: A reference to the camera and a progress amount between 0 and 1 indicating how complete the effect is.
     * @param {any} [context] - The context in which the callback is invoked. Defaults to the Scene to which the Camera belongs.
     *
     * @return {this} This Camera instance.
     */
    public function fadeIn(?duration:Float, ?red:Float, ?green:Float, ?blue:Float, ?callback:Dynamic, ?context:Dynamic):Dynamic;
    /**
     * Fades the Camera out to the given color over the duration specified.
     * This is an alias for Camera.fade that forces the fade to start, regardless of existing fades.
     *
     * @method Phaser.Cameras.Scene2D.Camera#fadeOut
     * @fires Phaser.Cameras.Scene2D.Events#FADE_OUT_START
     * @fires Phaser.Cameras.Scene2D.Events#FADE_OUT_COMPLETE
     * @since 3.3.0
     *
     * @param {number} [duration=1000] - The duration of the effect in milliseconds.
     * @param {number} [red=0] - The amount to fade the red channel towards. A value between 0 and 255.
     * @param {number} [green=0] - The amount to fade the green channel towards. A value between 0 and 255.
     * @param {number} [blue=0] - The amount to fade the blue channel towards. A value between 0 and 255.
     * @param {function} [callback] - This callback will be invoked every frame for the duration of the effect.
     * It is sent two arguments: A reference to the camera and a progress amount between 0 and 1 indicating how complete the effect is.
     * @param {any} [context] - The context in which the callback is invoked. Defaults to the Scene to which the Camera belongs.
     *
     * @return {this} This Camera instance.
     */
    public function fadeOut(?duration:Float, ?red:Float, ?green:Float, ?blue:Float, ?callback:Dynamic, ?context:Dynamic):Dynamic;
    /**
     * Fades the Camera from the given color to transparent over the duration specified.
     *
     * @method Phaser.Cameras.Scene2D.Camera#fadeFrom
     * @fires Phaser.Cameras.Scene2D.Events#FADE_IN_START
     * @fires Phaser.Cameras.Scene2D.Events#FADE_IN_COMPLETE
     * @since 3.5.0
     *
     * @param {number} [duration=1000] - The duration of the effect in milliseconds.
     * @param {number} [red=0] - The amount to fade the red channel towards. A value between 0 and 255.
     * @param {number} [green=0] - The amount to fade the green channel towards. A value between 0 and 255.
     * @param {number} [blue=0] - The amount to fade the blue channel towards. A value between 0 and 255.
     * @param {boolean} [force=false] - Force the effect to start immediately, even if already running.
     * @param {function} [callback] - This callback will be invoked every frame for the duration of the effect.
     * It is sent two arguments: A reference to the camera and a progress amount between 0 and 1 indicating how complete the effect is.
     * @param {any} [context] - The context in which the callback is invoked. Defaults to the Scene to which the Camera belongs.
     *
     * @return {this} This Camera instance.
     */
    public function fadeFrom(?duration:Float, ?red:Float, ?green:Float, ?blue:Float, ?force:Bool, ?callback:Dynamic, ?context:Dynamic):Dynamic;
    /**
     * Fades the Camera from transparent to the given color over the duration specified.
     *
     * @method Phaser.Cameras.Scene2D.Camera#fade
     * @fires Phaser.Cameras.Scene2D.Events#FADE_OUT_START
     * @fires Phaser.Cameras.Scene2D.Events#FADE_OUT_COMPLETE
     * @since 3.0.0
     *
     * @param {number} [duration=1000] - The duration of the effect in milliseconds.
     * @param {number} [red=0] - The amount to fade the red channel towards. A value between 0 and 255.
     * @param {number} [green=0] - The amount to fade the green channel towards. A value between 0 and 255.
     * @param {number} [blue=0] - The amount to fade the blue channel towards. A value between 0 and 255.
     * @param {boolean} [force=false] - Force the effect to start immediately, even if already running.
     * @param {function} [callback] - This callback will be invoked every frame for the duration of the effect.
     * It is sent two arguments: A reference to the camera and a progress amount between 0 and 1 indicating how complete the effect is.
     * @param {any} [context] - The context in which the callback is invoked. Defaults to the Scene to which the Camera belongs.
     *
     * @return {this} This Camera instance.
     */
    public function fade(?duration:Float, ?red:Float, ?green:Float, ?blue:Float, ?force:Bool, ?callback:Dynamic, ?context:Dynamic):Dynamic;
    /**
     * Flashes the Camera by setting it to the given color immediately and then fading it away again quickly over the duration specified.
     *
     * @method Phaser.Cameras.Scene2D.Camera#flash
     * @fires Phaser.Cameras.Scene2D.Events#FLASH_START
     * @fires Phaser.Cameras.Scene2D.Events#FLASH_COMPLETE
     * @since 3.0.0
     *
     * @param {number} [duration=250] - The duration of the effect in milliseconds.
     * @param {number} [red=255] - The amount to fade the red channel towards. A value between 0 and 255.
     * @param {number} [green=255] - The amount to fade the green channel towards. A value between 0 and 255.
     * @param {number} [blue=255] - The amount to fade the blue channel towards. A value between 0 and 255.
     * @param {boolean} [force=false] - Force the effect to start immediately, even if already running.
     * @param {function} [callback] - This callback will be invoked every frame for the duration of the effect.
     * It is sent two arguments: A reference to the camera and a progress amount between 0 and 1 indicating how complete the effect is.
     * @param {any} [context] - The context in which the callback is invoked. Defaults to the Scene to which the Camera belongs.
     *
     * @return {this} This Camera instance.
     */
    public function flash(?duration:Float, ?red:Float, ?green:Float, ?blue:Float, ?force:Bool, ?callback:Dynamic, ?context:Dynamic):Dynamic;
    /**
     * Shakes the Camera by the given intensity over the duration specified.
     *
     * @method Phaser.Cameras.Scene2D.Camera#shake
     * @fires Phaser.Cameras.Scene2D.Events#SHAKE_START
     * @fires Phaser.Cameras.Scene2D.Events#SHAKE_COMPLETE
     * @since 3.0.0
     *
     * @param {number} [duration=100] - The duration of the effect in milliseconds.
     * @param {(number|Phaser.Math.Vector2)} [intensity=0.05] - The intensity of the shake.
     * @param {boolean} [force=false] - Force the shake effect to start immediately, even if already running.
     * @param {function} [callback] - This callback will be invoked every frame for the duration of the effect.
     * It is sent two arguments: A reference to the camera and a progress amount between 0 and 1 indicating how complete the effect is.
     * @param {any} [context] - The context in which the callback is invoked. Defaults to the Scene to which the Camera belongs.
     *
     * @return {this} This Camera instance.
     */
    public function shake(?duration:Float, ?intensity:Dynamic, ?force:Bool, ?callback:Dynamic, ?context:Dynamic):Dynamic;
    /**
     * This effect will scroll the Camera so that the center of its viewport finishes at the given destination,
     * over the duration and with the ease specified.
     *
     * @method Phaser.Cameras.Scene2D.Camera#pan
     * @fires Phaser.Cameras.Scene2D.Events#PAN_START
     * @fires Phaser.Cameras.Scene2D.Events#PAN_COMPLETE
     * @since 3.11.0
     *
     * @param {number} x - The destination x coordinate to scroll the center of the Camera viewport to.
     * @param {number} y - The destination y coordinate to scroll the center of the Camera viewport to.
     * @param {number} [duration=1000] - The duration of the effect in milliseconds.
     * @param {(string|function)} [ease='Linear'] - The ease to use for the pan. Can be any of the Phaser Easing constants or a custom function.
     * @param {boolean} [force=false] - Force the pan effect to start immediately, even if already running.
     * @param {Phaser.Types.Cameras.Scene2D.CameraPanCallback} [callback] - This callback will be invoked every frame for the duration of the effect.
     * It is sent four arguments: A reference to the camera, a progress amount between 0 and 1 indicating how complete the effect is,
     * the current camera scroll x coordinate and the current camera scroll y coordinate.
     * @param {any} [context] - The context in which the callback is invoked. Defaults to the Scene to which the Camera belongs.
     *
     * @return {this} This Camera instance.
     */
    public function pan(x:Float, y:Float, ?duration:Float, ?ease:Dynamic, ?force:Bool, ?callback:phaser.types.cameras.scene2d.CameraPanCallback, ?context:Dynamic):Dynamic;
    /**
     * This effect will rotate the Camera so that the viewport finishes at the given angle in radians,
     * over the duration and with the ease specified.
     *
     * @method Phaser.Cameras.Scene2D.Camera#rotateTo
     * @since 3.23.0
     *
     * @param {number} radians - The destination angle in radians to rotate the Camera viewport to. If the angle is positive then the rotation is clockwise else anticlockwise
     * @param {boolean} [shortestPath=false] - If shortest path is set to true the camera will rotate in the quickest direction clockwise or anti-clockwise.
     * @param {number} [duration=1000] - The duration of the effect in milliseconds.
     * @param {(string|function)} [ease='Linear'] - The ease to use for the rotation. Can be any of the Phaser Easing constants or a custom function.
     * @param {boolean} [force=false] - Force the rotation effect to start immediately, even if already running.
     * @param {CameraRotateCallback} [callback] - This callback will be invoked every frame for the duration of the effect.
     * It is sent four arguments: A reference to the camera, a progress amount between 0 and 1 indicating how complete the effect is,
     * the current camera rotation angle in radians.
     * @param {any} [context] - The context in which the callback is invoked. Defaults to the Scene to which the Camera belongs.
     *
     * @return {Phaser.Cameras.Scene2D.Camera} This Camera instance.
     */
    public function rotateTo(radians:Float, ?shortestPath:Bool, ?duration:Float, ?ease:Dynamic, ?force:Bool, ?callback:CameraRotateCallback, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    /**
     * This effect will zoom the Camera to the given scale, over the duration and with the ease specified.
     *
     * @method Phaser.Cameras.Scene2D.Camera#zoomTo
     * @fires Phaser.Cameras.Scene2D.Events#ZOOM_START
     * @fires Phaser.Cameras.Scene2D.Events#ZOOM_COMPLETE
     * @since 3.11.0
     *
     * @param {number} zoom - The target Camera zoom value.
     * @param {number} [duration=1000] - The duration of the effect in milliseconds.
     * @param {(string|function)} [ease='Linear'] - The ease to use for the pan. Can be any of the Phaser Easing constants or a custom function.
     * @param {boolean} [force=false] - Force the pan effect to start immediately, even if already running.
     * @param {Phaser.Types.Cameras.Scene2D.CameraPanCallback} [callback] - This callback will be invoked every frame for the duration of the effect.
     * It is sent four arguments: A reference to the camera, a progress amount between 0 and 1 indicating how complete the effect is,
     * the current camera scroll x coordinate and the current camera scroll y coordinate.
     * @param {any} [context] - The context in which the callback is invoked. Defaults to the Scene to which the Camera belongs.
     *
     * @return {this} This Camera instance.
     */
    public function zoomTo(zoom:Float, ?duration:Float, ?ease:Dynamic, ?force:Bool, ?callback:phaser.types.cameras.scene2d.CameraPanCallback, ?context:Dynamic):Dynamic;
    /**
     * Sets the linear interpolation value to use when following a target.
     *
     * The default values of 1 means the camera will instantly snap to the target coordinates.
     * A lower value, such as 0.1 means the camera will more slowly track the target, giving
     * a smooth transition. You can set the horizontal and vertical values independently, and also
     * adjust this value in real-time during your game.
     *
     * Be sure to keep the value between 0 and 1. A value of zero will disable tracking on that axis.
     *
     * @method Phaser.Cameras.Scene2D.Camera#setLerp
     * @since 3.9.0
     *
     * @param {number} [x=1] - The amount added to the horizontal linear interpolation of the follow target.
     * @param {number} [y=1] - The amount added to the vertical linear interpolation of the follow target.
     *
     * @return {this} This Camera instance.
     */
    public function setLerp(?x:Float, ?y:Float):Dynamic;
    /**
     * Sets the horizontal and vertical offset of the camera from its follow target.
     * The values are subtracted from the targets position during the Cameras update step.
     *
     * @method Phaser.Cameras.Scene2D.Camera#setFollowOffset
     * @since 3.9.0
     *
     * @param {number} [x=0] - The horizontal offset from the camera follow target.x position.
     * @param {number} [y=0] - The vertical offset from the camera follow target.y position.
     *
     * @return {this} This Camera instance.
     */
    public function setFollowOffset(?x:Float, ?y:Float):Dynamic;
    /**
     * Sets the Camera to follow a Game Object.
     *
     * When enabled the Camera will automatically adjust its scroll position to keep the target Game Object
     * in its center.
     *
     * You can set the linear interpolation value used in the follow code.
     * Use low lerp values (such as 0.1) to automatically smooth the camera motion.
     *
     * If you find you're getting a slight "jitter" effect when following an object it's probably to do with sub-pixel
     * rendering of the targets position. This can be rounded by setting the `roundPixels` argument to `true` to
     * force full pixel rounding rendering. Note that this can still be broken if you have specified a non-integer zoom
     * value on the camera. So be sure to keep the camera zoom to integers.
     *
     * @method Phaser.Cameras.Scene2D.Camera#startFollow
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject|object)} target - The target for the Camera to follow.
     * @param {boolean} [roundPixels=false] - Round the camera position to whole integers to avoid sub-pixel rendering?
     * @param {number} [lerpX=1] - A value between 0 and 1. This value specifies the amount of linear interpolation to use when horizontally tracking the target. The closer the value to 1, the faster the camera will track.
     * @param {number} [lerpY=1] - A value between 0 and 1. This value specifies the amount of linear interpolation to use when vertically tracking the target. The closer the value to 1, the faster the camera will track.
     * @param {number} [offsetX=0] - The horizontal offset from the camera follow target.x position.
     * @param {number} [offsetY=0] - The vertical offset from the camera follow target.y position.
     *
     * @return {this} This Camera instance.
     */
    public function startFollow(target:Dynamic, ?roundPixels:Bool, ?lerpX:Float, ?lerpY:Float, ?offsetX:Float, ?offsetY:Float):Dynamic;
    /**
     * Stops a Camera from following a Game Object, if previously set via `Camera.startFollow`.
     *
     * @method Phaser.Cameras.Scene2D.Camera#stopFollow
     * @since 3.0.0
     *
     * @return {this} This Camera instance.
     */
    public function stopFollow():Dynamic;
    /**
     * Resets any active FX, such as a fade, flash or shake. Useful to call after a fade in order to
     * remove the fade.
     *
     * @method Phaser.Cameras.Scene2D.Camera#resetFX
     * @since 3.0.0
     *
     * @return {this} This Camera instance.
     */
    public function resetFX():Dynamic;
    /**
     * The horizontally flipped state of the Game Object.
     *
     * A Game Object that is flipped horizontally will render inversed on the horizontal axis.
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @name Phaser.GameObjects.Components.Flip#flipX
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var flipX:Bool;
    /**
     * The vertically flipped state of the Game Object.
     *
     * A Game Object that is flipped vertically will render inversed on the vertical axis (i.e. upside down)
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @name Phaser.GameObjects.Components.Flip#flipY
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var flipY:Bool;
    /**
     * Toggles the horizontal flipped state of this Game Object.
     *
     * A Game Object that is flipped horizontally will render inversed on the horizontal axis.
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @method Phaser.GameObjects.Components.Flip#toggleFlipX
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function toggleFlipX():Dynamic;
    /**
     * Toggles the vertical flipped state of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Flip#toggleFlipY
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function toggleFlipY():Dynamic;
    /**
     * Sets the horizontal flipped state of this Game Object.
     *
     * A Game Object that is flipped horizontally will render inversed on the horizontal axis.
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @method Phaser.GameObjects.Components.Flip#setFlipX
     * @since 3.0.0
     *
     * @param {boolean} value - The flipped state. `false` for no flip, or `true` to be flipped.
     *
     * @return {this} This Game Object instance.
     */
    public function setFlipX(value:Bool):Dynamic;
    /**
     * Sets the vertical flipped state of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Flip#setFlipY
     * @since 3.0.0
     *
     * @param {boolean} value - The flipped state. `false` for no flip, or `true` to be flipped.
     *
     * @return {this} This Game Object instance.
     */
    public function setFlipY(value:Bool):Dynamic;
    /**
     * Sets the horizontal and vertical flipped state of this Game Object.
     *
     * A Game Object that is flipped will render inversed on the flipped axis.
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @method Phaser.GameObjects.Components.Flip#setFlip
     * @since 3.0.0
     *
     * @param {boolean} x - The horizontal flipped state. `false` for no flip, or `true` to be flipped.
     * @param {boolean} y - The horizontal flipped state. `false` for no flip, or `true` to be flipped.
     *
     * @return {this} This Game Object instance.
     */
    public function setFlip(x:Bool, y:Bool):Dynamic;
    /**
     * Resets the horizontal and vertical flipped state of this Game Object back to their default un-flipped state.
     *
     * @method Phaser.GameObjects.Components.Flip#resetFlip
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function resetFlip():Dynamic;
    /**
     * The tint value being applied to the top-left vertice of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     * The value should be set as a hex number, i.e. 0xff0000 for red, or 0xff00ff for purple.
     *
     * @name Phaser.GameObjects.Components.Tint#tintTopLeft
     * @type {number}
     * @default 0xffffff
     * @since 3.0.0
     */
    public var tintTopLeft:Float;
    /**
     * The tint value being applied to the top-right vertice of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     * The value should be set as a hex number, i.e. 0xff0000 for red, or 0xff00ff for purple.
     *
     * @name Phaser.GameObjects.Components.Tint#tintTopRight
     * @type {number}
     * @default 0xffffff
     * @since 3.0.0
     */
    public var tintTopRight:Float;
    /**
     * The tint value being applied to the bottom-left vertice of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     * The value should be set as a hex number, i.e. 0xff0000 for red, or 0xff00ff for purple.
     *
     * @name Phaser.GameObjects.Components.Tint#tintBottomLeft
     * @type {number}
     * @default 0xffffff
     * @since 3.0.0
     */
    public var tintBottomLeft:Float;
    /**
     * The tint value being applied to the bottom-right vertice of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     * The value should be set as a hex number, i.e. 0xff0000 for red, or 0xff00ff for purple.
     *
     * @name Phaser.GameObjects.Components.Tint#tintBottomRight
     * @type {number}
     * @default 0xffffff
     * @since 3.0.0
     */
    public var tintBottomRight:Float;
    /**
     * The tint fill mode.
     *
     * `false` = An additive tint (the default), where vertices colors are blended with the texture.
     * `true` = A fill tint, where the vertices colors replace the texture, but respects texture alpha.
     *
     * @name Phaser.GameObjects.Components.Tint#tintFill
     * @type {boolean}
     * @default false
     * @since 3.11.0
     */
    public var tintFill:Bool;
    /**
     * The tint value being applied to the whole of the Game Object.
     * This property is a setter-only. Use the properties `tintTopLeft` etc to read the current tint value.
     *
     * @name Phaser.GameObjects.Components.Tint#tint
     * @type {number}
     * @webglOnly
     * @since 3.0.0
     */
    public var tint:Float;
    /**
     * Does this Game Object have a tint applied?
     *
     * It checks to see if the 4 tint properties are set to the value 0xffffff
     * and that the `tintFill` property is `false`. This indicates that a Game Object isn't tinted.
     *
     * @name Phaser.GameObjects.Components.Tint#isTinted
     * @type {boolean}
     * @webglOnly
     * @readonly
     * @since 3.11.0
     */
    public var isTinted:Bool;
    /**
     * Clears all tint values associated with this Game Object.
     *
     * Immediately sets the color values back to 0xffffff and the tint type to 'additive',
     * which results in no visible change to the texture.
     *
     * @method Phaser.GameObjects.Components.Tint#clearTint
     * @webglOnly
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function clearTint():Dynamic;
    /**
     * Sets an additive tint on this Game Object.
     *
     * The tint works by taking the pixel color values from the Game Objects texture, and then
     * multiplying it by the color value of the tint. You can provide either one color value,
     * in which case the whole Game Object will be tinted in that color. Or you can provide a color
     * per corner. The colors are blended together across the extent of the Game Object.
     *
     * To modify the tint color once set, either call this method again with new values or use the
     * `tint` property to set all colors at once. Or, use the properties `tintTopLeft`, `tintTopRight,
     * `tintBottomLeft` and `tintBottomRight` to set the corner color values independently.
     *
     * To remove a tint call `clearTint`.
     *
     * To swap this from being an additive tint to a fill based tint set the property `tintFill` to `true`.
     *
     * @method Phaser.GameObjects.Components.Tint#setTint
     * @webglOnly
     * @since 3.0.0
     *
     * @param {number} [topLeft=0xffffff] - The tint being applied to the top-left of the Game Object. If no other values are given this value is applied evenly, tinting the whole Game Object.
     * @param {number} [topRight] - The tint being applied to the top-right of the Game Object.
     * @param {number} [bottomLeft] - The tint being applied to the bottom-left of the Game Object.
     * @param {number} [bottomRight] - The tint being applied to the bottom-right of the Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setTint(?topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):Dynamic;
    /**
     * Sets a fill-based tint on this Game Object.
     *
     * Unlike an additive tint, a fill-tint literally replaces the pixel colors from the texture
     * with those in the tint. You can use this for effects such as making a player flash 'white'
     * if hit by something. You can provide either one color value, in which case the whole
     * Game Object will be rendered in that color. Or you can provide a color per corner. The colors
     * are blended together across the extent of the Game Object.
     *
     * To modify the tint color once set, either call this method again with new values or use the
     * `tint` property to set all colors at once. Or, use the properties `tintTopLeft`, `tintTopRight,
     * `tintBottomLeft` and `tintBottomRight` to set the corner color values independently.
     *
     * To remove a tint call `clearTint`.
     *
     * To swap this from being a fill-tint to an additive tint set the property `tintFill` to `false`.
     *
     * @method Phaser.GameObjects.Components.Tint#setTintFill
     * @webglOnly
     * @since 3.11.0
     *
     * @param {number} [topLeft=0xffffff] - The tint being applied to the top-left of the Game Object. If not other values are given this value is applied evenly, tinting the whole Game Object.
     * @param {number} [topRight] - The tint being applied to the top-right of the Game Object.
     * @param {number} [bottomLeft] - The tint being applied to the bottom-left of the Game Object.
     * @param {number} [bottomRight] - The tint being applied to the bottom-right of the Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setTintFill(?topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):Dynamic;
    /**
     * The initial WebGL pipeline of this Game Object.
     *
     * If you call `resetPipeline` on this Game Object, the pipeline is reset to this default.
     *
     * @name Phaser.GameObjects.Components.Pipeline#defaultPipeline
     * @type {Phaser.Renderer.WebGL.WebGLPipeline}
     * @default null
     * @webglOnly
     * @since 3.0.0
     */
    public var defaultPipeline:phaser.renderer.webgl.WebGLPipeline;
    /**
     * The current WebGL pipeline of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Pipeline#pipeline
     * @type {Phaser.Renderer.WebGL.WebGLPipeline}
     * @default null
     * @webglOnly
     * @since 3.0.0
     */
    public var pipeline:phaser.renderer.webgl.WebGLPipeline;
    /**
     * Does this Game Object have any Post Pipelines set?
     *
     * @name Phaser.GameObjects.Components.Pipeline#hasPostPipeline
     * @type {boolean}
     * @webglOnly
     * @since 3.50.0
     */
    public var hasPostPipeline:Bool;
    /**
     * The WebGL Post FX Pipelines this Game Object uses for post-render effects.
     *
     * The pipelines are processed in the order in which they appear in this array.
     *
     * If you modify this array directly, be sure to set the
     * `hasPostPipeline` property accordingly.
     *
     * @name Phaser.GameObjects.Components.Pipeline#postPipeline
     * @type {Phaser.Renderer.WebGL.Pipelines.PostFXPipeline[]}
     * @webglOnly
     * @since 3.50.0
     */
    public var postPipeline:Array<phaser.renderer.webgl.pipelines.PostFXPipeline>;
    /**
     * An object to store pipeline specific data in, to be read by the pipelines this Game Object uses.
     *
     * @name Phaser.GameObjects.Components.Pipeline#pipelineData
     * @type {object}
     * @webglOnly
     * @since 3.50.0
     */
    public var pipelineData:Dynamic;
    /**
     * Sets the initial WebGL Pipeline of this Game Object.
     *
     * This should only be called during the instantiation of the Game Object. After that, use `setPipeline`.
     *
     * @method Phaser.GameObjects.Components.Pipeline#initPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {(string|Phaser.Renderer.WebGL.WebGLPipeline)} pipeline - Either the string-based name of the pipeline, or a pipeline instance to set.
     *
     * @return {boolean} `true` if the pipeline was set successfully, otherwise `false`.
     */
    public function initPipeline(pipeline:Dynamic):Bool;
    /**
     * Sets the main WebGL Pipeline of this Game Object.
     *
     * Also sets the `pipelineData` property, if the parameter is given.
     *
     * Both the pipeline and post pipelines share the same pipeline data object.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {(string|Phaser.Renderer.WebGL.WebGLPipeline)} pipeline - Either the string-based name of the pipeline, or a pipeline instance to set.
     * @param {object} [pipelineData] - Optional pipeline data object that is _deep copied_ into the `pipelineData` property of this Game Object.
     * @param {boolean} [copyData=true] - Should the pipeline data object be _deep copied_ into the `pipelineData` property of this Game Object? If `false` it will be set by reference instead.
     *
     * @return {this} This Game Object instance.
     */
    public function setPipeline(pipeline:Dynamic, ?pipelineData:Dynamic, ?copyData:Bool):Dynamic;
    /**
     * Sets one, or more, Post Pipelines on this Game Object.
     *
     * Post Pipelines are invoked after this Game Object has rendered to its target and
     * are commonly used for post-fx.
     *
     * The post pipelines are appended to the `postPipelines` array belonging to this
     * Game Object. When the renderer processes this Game Object, it iterates through the post
     * pipelines in the order in which they appear in the array. If you are stacking together
     * multiple effects, be aware that the order is important.
     *
     * If you call this method multiple times, the new pipelines will be appended to any existing
     * post pipelines already set. Use the `resetPostPipeline` method to clear them first, if required.
     *
     * You can optionally also sets the `pipelineData` property, if the parameter is given.
     *
     * Both the pipeline and post pipelines share the pipeline data object together.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {(string|string[]|function|function[]|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline[])} pipelines - Either the string-based name of the pipeline, or a pipeline instance, or class, or an array of them.
     * @param {object} [pipelineData] - Optional pipeline data object that is _deep copied_ into the `pipelineData` property of this Game Object.
     * @param {boolean} [copyData=true] - Should the pipeline data object be _deep copied_ into the `pipelineData` property of this Game Object? If `false` it will be set by reference instead.
     *
     * @return {this} This Game Object instance.
     */
    public function setPostPipeline(pipelines:Dynamic, ?pipelineData:Dynamic, ?copyData:Bool):Dynamic;
    /**
     * Adds an entry to the `pipelineData` object belonging to this Game Object.
     *
     * If the 'key' already exists, its value is updated. If it doesn't exist, it is created.
     *
     * If `value` is undefined, and `key` exists, `key` is removed from the data object.
     *
     * Both the pipeline and post pipelines share the pipeline data object together.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPipelineData
     * @webglOnly
     * @since 3.50.0
     *
     * @param {string} key - The key of the pipeline data to set, update, or delete.
     * @param {any} [value] - The value to be set with the key. If `undefined` then `key` will be deleted from the object.
     *
     * @return {this} This Game Object instance.
     */
    public function setPipelineData(key:String, ?value:Dynamic):Dynamic;
    /**
     * Gets a Post Pipeline instance from this Game Object, based on the given name, and returns it.
     *
     * @method Phaser.GameObjects.Components.Pipeline#getPostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {(string|function|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline)} pipeline - The string-based name of the pipeline, or a pipeline class.
     *
     * @return {Phaser.Renderer.WebGL.Pipelines.PostFXPipeline} The first Post Pipeline matching the name, or undefined if no match.
     */
    public function getPostPipeline(pipeline:Dynamic):phaser.renderer.webgl.pipelines.PostFXPipeline;
    /**
     * Resets the WebGL Pipeline of this Game Object back to the default it was created with.
     *
     * @method Phaser.GameObjects.Components.Pipeline#resetPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {boolean} [resetPostPipelines=false] - Reset all of the post pipelines?
     * @param {boolean} [resetData=false] - Reset the `pipelineData` object to being an empty object?
     *
     * @return {boolean} `true` if the pipeline was reset successfully, otherwise `false`.
     */
    public function resetPipeline(?resetPostPipelines:Bool, ?resetData:Bool):Bool;
    /**
     * Resets the WebGL Post Pipelines of this Game Object. It does this by calling
     * the `destroy` method on each post pipeline and then clearing the local array.
     *
     * @method Phaser.GameObjects.Components.Pipeline#resetPostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {boolean} [resetData=false] - Reset the `pipelineData` object to being an empty object?
     */
    public function resetPostPipeline(?resetData:Bool):Void;
    /**
     * Removes a single Post Pipeline instance from this Game Object, based on the given name, and destroys it.
     *
     * If you wish to remove all Post Pipelines use the `resetPostPipeline` method instead.
     *
     * @method Phaser.GameObjects.Components.Pipeline#removePostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {string|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline} pipeline - The string-based name of the pipeline, or a pipeline class.
     *
     * @return {this} This Game Object.
     */
    public function removePostPipeline(pipeline:Dynamic):Dynamic;
    /**
     * Gets the name of the WebGL Pipeline this Game Object is currently using.
     *
     * @method Phaser.GameObjects.Components.Pipeline#getPipelineName
     * @webglOnly
     * @since 3.0.0
     *
     * @return {string} The string-based name of the pipeline being used by this Game Object.
     */
    public function getPipelineName():String;
}
