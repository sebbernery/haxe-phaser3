package phaser.cameras.scene2d;

/**
 * @classdesc
 * A Base Camera class.
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
 * The Base Camera is extended by the Camera class, which adds in special effects including Fade,
 * Flash and Camera Shake, as well as the ability to follow Game Objects.
 *
 * The Base Camera was introduced in Phaser 3.12. It was split off from the Camera class, to allow
 * you to isolate special effects as needed. Therefore the 'since' values for properties of this class relate
 * to when they were added to the Camera class.
 *
 * @class BaseCamera
 * @memberof Phaser.Cameras.Scene2D
 * @constructor
 * @since 3.12.0
 *
 * @extends Phaser.Events.EventEmitter
 * @extends Phaser.GameObjects.Components.Alpha
 * @extends Phaser.GameObjects.Components.Visible
 *
 * @param {number} x - The x position of the Camera, relative to the top-left of the game canvas.
 * @param {number} y - The y position of the Camera, relative to the top-left of the game canvas.
 * @param {number} width - The width of the Camera, in pixels.
 * @param {number} height - The height of the Camera, in pixels.
 */
@:native("Phaser.Cameras.Scene2D.BaseCamera")
extern class BaseCamera extends phaser.events.EventEmitter {
    public function new(x:Float, y:Float, width:Float, height:Float);
    /**
     * A reference to the Scene this camera belongs to.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * A reference to the Game Scene Manager.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#sceneManager
     * @type {Phaser.Scenes.SceneManager}
     * @since 3.12.0
     */
    public var sceneManager:phaser.scenes.SceneManager;
    /**
     * A reference to the Game Config.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#config
     * @type {object}
     * @readonly
     * @since 3.12.0
     */
    public var config:Dynamic;
    /**
     * The Camera ID. Assigned by the Camera Manager and used to handle camera exclusion.
     * This value is a bitmask.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#id
     * @type {integer}
     * @readonly
     * @since 3.11.0
     */
    public var id:Int;
    /**
     * The name of the Camera. This is left empty for your own use.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#name
     * @type {string}
     * @default ''
     * @since 3.0.0
     */
    public var name:String;
    /**
     * The resolution of the Game, used in most Camera calculations.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#resolution
     * @type {number}
     * @readonly
     * @since 3.12.0
     */
    public var resolution:Float;
    /**
     * Should this camera round its pixel values to integers?
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#roundPixels
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var roundPixels:Bool;
    /**
     * Is this Camera using a bounds to restrict scrolling movement?
     *
     * Set this property along with the bounds via `Camera.setBounds`.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#useBounds
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var useBounds:Bool;
    /**
     * The World View is a Rectangle that defines the area of the 'world' the Camera is currently looking at.
     * This factors in the Camera viewport size, zoom and scroll position and is updated in the Camera preRender step.
     * If you have enabled Camera bounds the worldview will be clamped to those bounds accordingly.
     * You can use it for culling or intersection checks.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#worldView
     * @type {Phaser.Geom.Rectangle}
     * @readonly
     * @since 3.11.0
     */
    public var worldView:phaser.geom.Rectangle;
    /**
     * Is this Camera dirty?
     *
     * A dirty Camera has had either its viewport size, bounds, scroll, rotation or zoom levels changed since the last frame.
     *
     * This flag is cleared during the `postRenderCamera` method of the renderer.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#dirty
     * @type {boolean}
     * @default true
     * @since 3.11.0
     */
    public var dirty:Bool;
    /**
     * Does this Camera have a transparent background?
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#transparent
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var transparent:Bool;
    /**
     * The background color of this Camera. Only used if `transparent` is `false`.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#backgroundColor
     * @type {Phaser.Display.Color}
     * @since 3.0.0
     */
    public var backgroundColor:phaser.display.Color;
    /**
     * Should the camera cull Game Objects before checking them for input hit tests?
     * In some special cases it may be beneficial to disable this.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#disableCull
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var disableCull:Bool;
    /**
     * The mid-point of the Camera in 'world' coordinates.
     *
     * Use it to obtain exactly where in the world the center of the camera is currently looking.
     *
     * This value is updated in the preRender method, after the scroll values and follower
     * have been processed.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#midPoint
     * @type {Phaser.Math.Vector2}
     * @readonly
     * @since 3.11.0
     */
    public var midPoint:phaser.math.Vector2;
    /**
     * The horizontal origin of rotation for this Camera.
     *
     * By default the camera rotates around the center of the viewport.
     *
     * Changing the origin allows you to adjust the point in the viewport from which rotation happens.
     * A value of 0 would rotate from the top-left of the viewport. A value of 1 from the bottom right.
     *
     * See `setOrigin` to set both origins in a single, chainable call.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#originX
     * @type {number}
     * @default 0.5
     * @since 3.11.0
     */
    public var originX:Float;
    /**
     * The vertical origin of rotation for this Camera.
     *
     * By default the camera rotates around the center of the viewport.
     *
     * Changing the origin allows you to adjust the point in the viewport from which rotation happens.
     * A value of 0 would rotate from the top-left of the viewport. A value of 1 from the bottom right.
     *
     * See `setOrigin` to set both origins in a single, chainable call.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#originY
     * @type {number}
     * @default 0.5
     * @since 3.11.0
     */
    public var originY:Float;
    /**
     * The x position of the Camera viewport, relative to the top-left of the game canvas.
     * The viewport is the area into which the camera renders.
     * To adjust the position the camera is looking at in the game world, see the `scrollX` value.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#x
     * @type {number}
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y position of the Camera viewport, relative to the top-left of the game canvas.
     * The viewport is the area into which the camera renders.
     * To adjust the position the camera is looking at in the game world, see the `scrollY` value.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#y
     * @type {number}
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The width of the Camera viewport, in pixels.
     *
     * The viewport is the area into which the Camera renders. Setting the viewport does
     * not restrict where the Camera can scroll to.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The height of the Camera viewport, in pixels.
     *
     * The viewport is the area into which the Camera renders. Setting the viewport does
     * not restrict where the Camera can scroll to.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The horizontal scroll position of this Camera.
     *
     * Change this value to cause the Camera to scroll around your Scene.
     *
     * Alternatively, setting the Camera to follow a Game Object, via the `startFollow` method,
     * will automatically adjust the Camera scroll values accordingly.
     *
     * You can set the bounds within which the Camera can scroll via the `setBounds` method.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#scrollX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var scrollX:Float;
    /**
     * The vertical scroll position of this Camera.
     *
     * Change this value to cause the Camera to scroll around your Scene.
     *
     * Alternatively, setting the Camera to follow a Game Object, via the `startFollow` method,
     * will automatically adjust the Camera scroll values accordingly.
     *
     * You can set the bounds within which the Camera can scroll via the `setBounds` method.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#scrollY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var scrollY:Float;
    /**
     * The Camera zoom value. Change this value to zoom in, or out of, a Scene.
     *
     * A value of 0.5 would zoom the Camera out, so you can now see twice as much
     * of the Scene as before. A value of 2 would zoom the Camera in, so every pixel
     * now takes up 2 pixels when rendered.
     *
     * Set to 1 to return to the default zoom level.
     *
     * Be careful to never set this value to zero.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#zoom
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var zoom:Float;
    /**
     * The x position of the center of the Camera's viewport, relative to the top-left of the game canvas.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#centerX
     * @type {number}
     * @readonly
     * @since 3.10.0
     */
    public var centerX:Float;
    /**
     * The y position of the center of the Camera's viewport, relative to the top-left of the game canvas.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#centerY
     * @type {number}
     * @readonly
     * @since 3.10.0
     */
    public var centerY:Float;
    /**
     * The displayed width of the camera viewport, factoring in the camera zoom level.
     *
     * If a camera has a viewport width of 800 and a zoom of 0.5 then its display width
     * would be 1600, as it's displaying twice as many pixels as zoom level 1.
     *
     * Equally, a camera with a width of 800 and zoom of 2 would have a display width
     * of 400 pixels.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#displayWidth
     * @type {number}
     * @readonly
     * @since 3.11.0
     */
    public var displayWidth:Float;
    /**
     * The displayed height of the camera viewport, factoring in the camera zoom level.
     *
     * If a camera has a viewport height of 600 and a zoom of 0.5 then its display height
     * would be 1200, as it's displaying twice as many pixels as zoom level 1.
     *
     * Equally, a camera with a height of 600 and zoom of 2 would have a display height
     * of 300 pixels.
     *
     * @name Phaser.Cameras.Scene2D.BaseCamera#displayHeight
     * @type {number}
     * @readonly
     * @since 3.11.0
     */
    public var displayHeight:Float;
    /**
     * Sets the rotation origin of this Camera.
     *
     * The values are given in the range 0 to 1 and are only used when calculating Camera rotation.
     *
     * By default the camera rotates around the center of the viewport.
     *
     * Changing the origin allows you to adjust the point in the viewport from which rotation happens.
     * A value of 0 would rotate from the top-left of the viewport. A value of 1 from the bottom right.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#setOrigin
     * @since 3.11.0
     *
     * @param {number} [x=0.5] - The horizontal origin value.
     * @param {number} [y=x] - The vertical origin value. If not defined it will be set to the value of `x`.
     *
     * @return {this} This Camera instance.
     */
    public function setOrigin(?x:Float, ?y:Float):Dynamic;
    /**
     * Calculates what the Camera.scrollX and scrollY values would need to be in order to move
     * the Camera so it is centered on the given x and y coordinates, without actually moving
     * the Camera there. The results are clamped based on the Camera bounds, if set.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#getScroll
     * @since 3.11.0
     *
     * @param {number} x - The horizontal coordinate to center on.
     * @param {number} y - The vertical coordinate to center on.
     * @param {Phaser.Math.Vector2} [out] - A Vec2 to store the values in. If not given a new Vec2 is created.
     *
     * @return {Phaser.Math.Vector2} The scroll coordinates stored in the `x` abd `y` properties.
     */
    public function getScroll(x:Float, y:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Moves the Camera so that it is centered on the given coordinates, bounds allowing.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#centerOn
     * @since 3.11.0
     *
     * @param {number} x - The horizontal coordinate to center on.
     * @param {number} y - The vertical coordinate to center on.
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function centerOn(x:Float, y:Float):phaser.cameras.scene2d.BaseCamera;
    /**
     * Moves the Camera so that it is looking at the center of the Camera Bounds, if enabled.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#centerToBounds
     * @since 3.0.0
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function centerToBounds():phaser.cameras.scene2d.BaseCamera;
    /**
     * Moves the Camera so that it is re-centered based on its viewport size.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#centerToSize
     * @since 3.0.0
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function centerToSize():phaser.cameras.scene2d.BaseCamera;
    /**
     * Takes an array of Game Objects and returns a new array featuring only those objects
     * visible by this camera.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#cull
     * @since 3.0.0
     *
     * @generic {Phaser.GameObjects.GameObject[]} G - [renderableObjects,$return]
     *
     * @param {Phaser.GameObjects.GameObject[]} renderableObjects - An array of Game Objects to cull.
     *
     * @return {Phaser.GameObjects.GameObject[]} An array of Game Objects visible to this Camera.
     */
    public function cull(renderableObjects:Array<phaser.gameobjects.GameObject>):Array<phaser.gameobjects.GameObject>;
    /**
     * Converts the given `x` and `y` coordinates into World space, based on this Cameras transform.
     * You can optionally provide a Vector2, or similar object, to store the results in.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#getWorldPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {number} x - The x position to convert to world space.
     * @param {number} y - The y position to convert to world space.
     * @param {(object|Phaser.Math.Vector2)} [output] - An optional object to store the results in. If not provided a new Vector2 will be created.
     *
     * @return {Phaser.Math.Vector2} An object holding the converted values in its `x` and `y` properties.
     */
    public function getWorldPoint(x:Float, y:Float, ?output:Dynamic):phaser.math.Vector2;
    /**
     * Given a Game Object, or an array of Game Objects, it will update all of their camera filter settings
     * so that they are ignored by this Camera. This means they will not be rendered by this Camera.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#ignore
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[]|Phaser.GameObjects.Group)} entries - The Game Object, or array of Game Objects, to be ignored by this Camera.
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function ignore(entries:Dynamic):phaser.cameras.scene2d.BaseCamera;
    /**
     * Internal preRender step.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#preRender
     * @protected
     * @since 3.0.0
     *
     * @param {number} baseScale - The base scale, as set in the Camera Manager.
     * @param {number} resolution - The game resolution.
     */
    public function preRender(baseScale:Float, resolution:Float):Void;
    /**
     * Takes an x value and checks it's within the range of the Camera bounds, adjusting if required.
     * Do not call this method if you are not using camera bounds.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#clampX
     * @since 3.11.0
     *
     * @param {number} x - The value to horizontally scroll clamp.
     *
     * @return {number} The adjusted value to use as scrollX.
     */
    public function clampX(x:Float):Float;
    /**
     * Takes a y value and checks it's within the range of the Camera bounds, adjusting if required.
     * Do not call this method if you are not using camera bounds.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#clampY
     * @since 3.11.0
     *
     * @param {number} y - The value to vertically scroll clamp.
     *
     * @return {number} The adjusted value to use as scrollY.
     */
    public function clampY(y:Float):Float;
    /**
     * If this Camera has previously had movement bounds set on it, this will remove them.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#removeBounds
     * @since 3.0.0
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function removeBounds():phaser.cameras.scene2d.BaseCamera;
    /**
     * Set the rotation of this Camera. This causes everything it renders to appear rotated.
     *
     * Rotating a camera does not rotate the viewport itself, it is applied during rendering.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#setAngle
     * @since 3.0.0
     *
     * @param {number} [value=0] - The cameras angle of rotation, given in degrees.
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function setAngle(?value:Float):phaser.cameras.scene2d.BaseCamera;
    /**
     * Sets the background color for this Camera.
     *
     * By default a Camera has a transparent background but it can be given a solid color, with any level
     * of transparency, via this method.
     *
     * The color value can be specified using CSS color notation, hex or numbers.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#setBackgroundColor
     * @since 3.0.0
     *
     * @param {(string|number|InputColorObject)} [color='rgba(0,0,0,0)'] - The color value. In CSS, hex or numeric color notation.
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function setBackgroundColor(?color:Dynamic):phaser.cameras.scene2d.BaseCamera;
    /**
     * Set the bounds of the Camera. The bounds are an axis-aligned rectangle.
     *
     * The Camera bounds controls where the Camera can scroll to, stopping it from scrolling off the
     * edges and into blank space. It does not limit the placement of Game Objects, or where
     * the Camera viewport can be positioned.
     *
     * Temporarily disable the bounds by changing the boolean `Camera.useBounds`.
     *
     * Clear the bounds entirely by calling `Camera.removeBounds`.
     *
     * If you set bounds that are smaller than the viewport it will stop the Camera from being
     * able to scroll. The bounds can be positioned where-ever you wish. By default they are from
     * 0x0 to the canvas width x height. This means that the coordinate 0x0 is the top left of
     * the Camera bounds. However, you can position them anywhere. So if you wanted a game world
     * that was 2048x2048 in size, with 0x0 being the center of it, you can set the bounds x/y
     * to be -1024, -1024, with a width and height of 2048. Depending on your game you may find
     * it easier for 0x0 to be the top-left of the bounds, or you may wish 0x0 to be the middle.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#setBounds
     * @since 3.0.0
     *
     * @param {integer} x - The top-left x coordinate of the bounds.
     * @param {integer} y - The top-left y coordinate of the bounds.
     * @param {integer} width - The width of the bounds, in pixels.
     * @param {integer} height - The height of the bounds, in pixels.
     * @param {boolean} [centerOn] - If `true` the Camera will automatically be centered on the new bounds.
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function setBounds(x:Int, y:Int, width:Int, height:Int, ?centerOn:Bool):phaser.cameras.scene2d.BaseCamera;
    /**
     * Sets the name of this Camera.
     * This value is for your own use and isn't used internally.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#setName
     * @since 3.0.0
     *
     * @param {string} [value=''] - The name of the Camera.
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function setName(?value:String):phaser.cameras.scene2d.BaseCamera;
    /**
     * Set the position of the Camera viewport within the game.
     *
     * This does not change where the camera is 'looking'. See `setScroll` to control that.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#setPosition
     * @since 3.0.0
     *
     * @param {number} x - The top-left x coordinate of the Camera viewport.
     * @param {number} [y=x] - The top-left y coordinate of the Camera viewport.
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function setPosition(x:Float, ?y:Float):phaser.cameras.scene2d.BaseCamera;
    /**
     * Set the rotation of this Camera. This causes everything it renders to appear rotated.
     *
     * Rotating a camera does not rotate the viewport itself, it is applied during rendering.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#setRotation
     * @since 3.0.0
     *
     * @param {number} [value=0] - The rotation of the Camera, in radians.
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function setRotation(?value:Float):phaser.cameras.scene2d.BaseCamera;
    /**
     * Should the Camera round pixel values to whole integers when rendering Game Objects?
     *
     * In some types of game, especially with pixel art, this is required to prevent sub-pixel aliasing.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#setRoundPixels
     * @since 3.0.0
     *
     * @param {boolean} value - `true` to round Camera pixels, `false` to not.
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function setRoundPixels(value:Bool):phaser.cameras.scene2d.BaseCamera;
    /**
     * Sets the Scene the Camera is bound to.
     *
     * Also populates the `resolution` property and updates the internal size values.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#setScene
     * @since 3.0.0
     *
     * @param {Phaser.Scene} scene - The Scene the camera is bound to.
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function setScene(scene:phaser.Scene):phaser.cameras.scene2d.BaseCamera;
    /**
     * Set the position of where the Camera is looking within the game.
     * You can also modify the properties `Camera.scrollX` and `Camera.scrollY` directly.
     * Use this method, or the scroll properties, to move your camera around the game world.
     *
     * This does not change where the camera viewport is placed. See `setPosition` to control that.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#setScroll
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate of the Camera in the game world.
     * @param {number} [y=x] - The y coordinate of the Camera in the game world.
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function setScroll(x:Float, ?y:Float):phaser.cameras.scene2d.BaseCamera;
    /**
     * Set the size of the Camera viewport.
     *
     * By default a Camera is the same size as the game, but can be made smaller via this method,
     * allowing you to create mini-cam style effects by creating and positioning a smaller Camera
     * viewport within your game.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#setSize
     * @since 3.0.0
     *
     * @param {integer} width - The width of the Camera viewport.
     * @param {integer} [height=width] - The height of the Camera viewport.
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function setSize(width:Int, ?height:Int):phaser.cameras.scene2d.BaseCamera;
    /**
     * This method sets the position and size of the Camera viewport in a single call.
     *
     * If you're trying to change where the Camera is looking at in your game, then see
     * the method `Camera.setScroll` instead. This method is for changing the viewport
     * itself, not what the camera can see.
     *
     * By default a Camera is the same size as the game, but can be made smaller via this method,
     * allowing you to create mini-cam style effects by creating and positioning a smaller Camera
     * viewport within your game.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#setViewport
     * @since 3.0.0
     *
     * @param {number} x - The top-left x coordinate of the Camera viewport.
     * @param {number} y - The top-left y coordinate of the Camera viewport.
     * @param {integer} width - The width of the Camera viewport.
     * @param {integer} [height=width] - The height of the Camera viewport.
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function setViewport(x:Float, y:Float, width:Int, ?height:Int):phaser.cameras.scene2d.BaseCamera;
    /**
     * Set the zoom value of the Camera.
     *
     * Changing to a smaller value, such as 0.5, will cause the camera to 'zoom out'.
     * Changing to a larger value, such as 2, will cause the camera to 'zoom in'.
     *
     * A value of 1 means 'no zoom' and is the default.
     *
     * Changing the zoom does not impact the Camera viewport in any way, it is only applied during rendering.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#setZoom
     * @since 3.0.0
     *
     * @param {number} [value=1] - The zoom value of the Camera. The minimum it can be is 0.001.
     *
     * @return {Phaser.Cameras.Scene2D.BaseCamera} This Camera instance.
     */
    public function setZoom(?value:Float):phaser.cameras.scene2d.BaseCamera;
    /**
     * Returns an Object suitable for JSON storage containing all of the Camera viewport and rendering properties.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#toJSON
     * @since 3.0.0
     *
     * @return {JSONCamera} A well-formed object suitable for conversion to JSON.
     */
    public function toJSON():JSONCamera;
    /**
     * Internal method called automatically by the Camera Manager.
     *
     * @method Phaser.Cameras.Scene2D.BaseCamera#update
     * @protected
     * @since 3.0.0
     *
     * @param {integer} time - The current timestamp as generated by the Request Animation Frame or SetTimeout.
     * @param {number} delta - The delta time, in ms, elapsed since the last frame.
     */
    public function update(time:Int, delta:Float):Void;
    /**
     * The alpha value of the Game Object.
     *
     * This is a global value, impacting the entire Game Object, not just a region of it.
     *
     * @name Phaser.GameObjects.Components.Alpha#alpha
     * @type {number}
     * @since 3.0.0
     */
    public var alpha:Float;
    /**
     * The alpha value starting from the top-left of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Alpha#alphaTopLeft
     * @type {number}
     * @webglOnly
     * @since 3.0.0
     */
    public var alphaTopLeft:Float;
    /**
     * The alpha value starting from the top-right of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Alpha#alphaTopRight
     * @type {number}
     * @webglOnly
     * @since 3.0.0
     */
    public var alphaTopRight:Float;
    /**
     * The alpha value starting from the bottom-left of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Alpha#alphaBottomLeft
     * @type {number}
     * @webglOnly
     * @since 3.0.0
     */
    public var alphaBottomLeft:Float;
    /**
     * The alpha value starting from the bottom-right of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Alpha#alphaBottomRight
     * @type {number}
     * @webglOnly
     * @since 3.0.0
     */
    public var alphaBottomRight:Float;
    /**
     * Clears all alpha values associated with this Game Object.
     *
     * Immediately sets the alpha levels back to 1 (fully opaque).
     *
     * @method Phaser.GameObjects.Components.Alpha#clearAlpha
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function clearAlpha():Dynamic;
    /**
     * Set the Alpha level of this Game Object. The alpha controls the opacity of the Game Object as it renders.
     * Alpha values are provided as a float between 0, fully transparent, and 1, fully opaque.
     *
     * If your game is running under WebGL you can optionally specify four different alpha values, each of which
     * correspond to the four corners of the Game Object. Under Canvas only the `topLeft` value given is used.
     *
     * @method Phaser.GameObjects.Components.Alpha#setAlpha
     * @since 3.0.0
     *
     * @param {number} [topLeft=1] - The alpha value used for the top-left of the Game Object. If this is the only value given it's applied across the whole Game Object.
     * @param {number} [topRight] - The alpha value used for the top-right of the Game Object. WebGL only.
     * @param {number} [bottomLeft] - The alpha value used for the bottom-left of the Game Object. WebGL only.
     * @param {number} [bottomRight] - The alpha value used for the bottom-right of the Game Object. WebGL only.
     *
     * @return {this} This Game Object instance.
     */
    public function setAlpha(?topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):Dynamic;
    /**
     * The visible state of the Game Object.
     *
     * An invisible Game Object will skip rendering, but will still process update logic.
     *
     * @name Phaser.GameObjects.Components.Visible#visible
     * @type {boolean}
     * @since 3.0.0
     */
    public var visible:Bool;
    /**
     * Sets the visibility of this Game Object.
     *
     * An invisible Game Object will skip rendering, but will still process update logic.
     *
     * @method Phaser.GameObjects.Components.Visible#setVisible
     * @since 3.0.0
     *
     * @param {boolean} value - The visible state of the Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setVisible(value:Bool):Dynamic;
}
