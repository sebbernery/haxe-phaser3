package phaser.cameras.scene2d;

/**
 * @classdesc
 * The Camera Manager is a plugin that belongs to a Scene and is responsible for managing all of the Scene Cameras.
 *
 * By default you can access the Camera Manager from within a Scene using `this.cameras`, although this can be changed
 * in your game config.
 *
 * Create new Cameras using the `add` method. Or extend the Camera class with your own addition code and then add
 * the new Camera in using the `addExisting` method.
 *
 * Cameras provide a view into your game world, and can be positioned, rotated, zoomed and scrolled accordingly.
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
 * allowing you to filter Game Objects out on a per-Camera basis. The Camera Manager can manage up to 31 unique
 * 'Game Object ignore capable' Cameras. Any Cameras beyond 31 that you create will all be given a Camera ID of
 * zero, meaning that they cannot be used for Game Object exclusion. This means if you need your Camera to ignore
 * Game Objects, make sure it's one of the first 31 created.
 *
 * A Camera also has built-in special effects including Fade, Flash, Camera Shake, Pan and Zoom.
 *
 * @class CameraManager
 * @memberof Phaser.Cameras.Scene2D
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene that owns the Camera Manager plugin.
 */
@:native("Phaser.Cameras.Scene2D.CameraManager")
extern class CameraManager {
    public function new(scene:phaser.Scene);
    /**
     * The Scene that owns the Camera Manager plugin.
     *
     * @name Phaser.Cameras.Scene2D.CameraManager#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * A reference to the Scene.Systems handler for the Scene that owns the Camera Manager.
     *
     * @name Phaser.Cameras.Scene2D.CameraManager#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * All Cameras created by, or added to, this Camera Manager, will have their `roundPixels`
     * property set to match this value. By default it is set to match the value set in the
     * game configuration, but can be changed at any point. Equally, individual cameras can
     * also be changed as needed.
     *
     * @name Phaser.Cameras.Scene2D.CameraManager#roundPixels
     * @type {boolean}
     * @since 3.11.0
     */
    public var roundPixels:Bool;
    /**
     * An Array of the Camera objects being managed by this Camera Manager.
     * The Cameras are updated and rendered in the same order in which they appear in this array.
     * Do not directly add or remove entries to this array. However, you can move the contents
     * around the array should you wish to adjust the display order.
     *
     * @name Phaser.Cameras.Scene2D.CameraManager#cameras
     * @type {Phaser.Cameras.Scene2D.Camera[]}
     * @since 3.0.0
     */
    public var cameras:Array<phaser.cameras.scene2d.Camera>;
    /**
     * A handy reference to the 'main' camera. By default this is the first Camera the
     * Camera Manager creates. You can also set it directly, or use the `makeMain` argument
     * in the `add` and `addExisting` methods. It allows you to access it from your game:
     *
     * ```javascript
     * var cam = this.cameras.main;
     * ```
     *
     * Also see the properties `camera1`, `camera2` and so on.
     *
     * @name Phaser.Cameras.Scene2D.CameraManager#main
     * @type {Phaser.Cameras.Scene2D.Camera}
     * @since 3.0.0
     */
    public var main:phaser.cameras.scene2d.Camera;
    /**
     * This scale affects all cameras. It's used by the Scale Manager.
     *
     * @name Phaser.Cameras.Scene2D.CameraManager#baseScale
     * @type {number}
     * @since 3.0.0
     */
    public var baseScale:Float;
    /**
     * Adds a new Camera into the Camera Manager. The Camera Manager can support up to 31 different Cameras.
     *
     * Each Camera has its own viewport, which controls the size of the Camera and its position within the canvas.
     *
     * Use the `Camera.scrollX` and `Camera.scrollY` properties to change where the Camera is looking, or the
     * Camera methods such as `centerOn`. Cameras also have built in special effects, such as fade, flash, shake,
     * pan and zoom.
     *
     * By default Cameras are transparent and will render anything that they can see based on their `scrollX`
     * and `scrollY` values. Game Objects can be set to be ignored by a Camera by using the `Camera.ignore` method.
     *
     * The Camera will have its `roundPixels` propery set to whatever `CameraManager.roundPixels` is. You can change
     * it after creation if required.
     *
     * See the Camera class documentation for more details.
     *
     * @method Phaser.Cameras.Scene2D.CameraManager#add
     * @since 3.0.0
     *
     * @param {integer} [x=0] - The horizontal position of the Camera viewport.
     * @param {integer} [y=0] - The vertical position of the Camera viewport.
     * @param {integer} [width] - The width of the Camera viewport. If not given it'll be the game config size.
     * @param {integer} [height] - The height of the Camera viewport. If not given it'll be the game config size.
     * @param {boolean} [makeMain=false] - Set this Camera as being the 'main' camera. This just makes the property `main` a reference to it.
     * @param {string} [name=''] - The name of the Camera.
     *
     * @return {Phaser.Cameras.Scene2D.Camera} The newly created Camera.
     */
    public function add(?x:Int, ?y:Int, ?width:Int, ?height:Int, ?makeMain:Bool, ?name:String):phaser.cameras.scene2d.Camera;
    /**
     * Adds an existing Camera into the Camera Manager.
     *
     * The Camera should either be a `Phaser.Cameras.Scene2D.Camera` instance, or a class that extends from it.
     *
     * The Camera will have its `roundPixels` propery set to whatever `CameraManager.roundPixels` is. You can change
     * it after addition if required.
     *
     * The Camera will be assigned an ID, which is used for Game Object exclusion and then added to the
     * manager. As long as it doesn't already exist in the manager it will be added then returned.
     *
     * If this method returns `null` then the Camera already exists in this Camera Manager.
     *
     * @method Phaser.Cameras.Scene2D.CameraManager#addExisting
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to be added to the Camera Manager.
     * @param {boolean} [makeMain=false] - Set this Camera as being the 'main' camera. This just makes the property `main` a reference to it.
     *
     * @return {?Phaser.Cameras.Scene2D.Camera} The Camera that was added to the Camera Manager, or `null` if it couldn't be added.
     */
    public function addExisting(camera:phaser.cameras.scene2d.Camera, ?makeMain:Bool):phaser.cameras.scene2d.Camera;
    /**
     * Gets the total number of Cameras in this Camera Manager.
     *
     * If the optional `isVisible` argument is set it will only count Cameras that are currently visible.
     *
     * @method Phaser.Cameras.Scene2D.CameraManager#getTotal
     * @since 3.11.0
     *
     * @param {boolean} [isVisible=false] - Set the `true` to only include visible Cameras in the total.
     *
     * @return {integer} The total number of Cameras in this Camera Manager.
     */
    public function getTotal(?isVisible:Bool):Int;
    /**
     * Populates this Camera Manager based on the given configuration object, or an array of config objects.
     *
     * See the `InputJSONCameraObject` documentation for details of the object structure.
     *
     * @method Phaser.Cameras.Scene2D.CameraManager#fromJSON
     * @since 3.0.0
     *
     * @param {(InputJSONCameraObject|InputJSONCameraObject[])} config - A Camera configuration object, or an array of them, to be added to this Camera Manager.
     *
     * @return {Phaser.Cameras.Scene2D.CameraManager} This Camera Manager instance.
     */
    public function fromJSON(config:Dynamic):phaser.cameras.scene2d.CameraManager;
    /**
     * Gets a Camera based on its name.
     *
     * Camera names are optional and don't have to be set, so this method is only of any use if you
     * have given your Cameras unique names.
     *
     * @method Phaser.Cameras.Scene2D.CameraManager#getCamera
     * @since 3.0.0
     *
     * @param {string} name - The name of the Camera.
     *
     * @return {?Phaser.Cameras.Scene2D.Camera} The first Camera with a name matching the given string, otherwise `null`.
     */
    public function getCamera(name:String):phaser.cameras.scene2d.Camera;
    /**
     * Returns an array of all cameras below the given Pointer.
     *
     * The first camera in the array is the top-most camera in the camera list.
     *
     * @method Phaser.Cameras.Scene2D.CameraManager#getCamerasBelowPointer
     * @since 3.10.0
     *
     * @param {Phaser.Input.Pointer} pointer - The Pointer to check against.
     *
     * @return {Phaser.Cameras.Scene2D.Camera[]} An array of cameras below the Pointer.
     */
    public function getCamerasBelowPointer(pointer:phaser.input.Pointer):Array<phaser.cameras.scene2d.Camera>;
    /**
     * Removes the given Camera, or an array of Cameras, from this Camera Manager.
     *
     * If found in the Camera Manager it will be immediately removed from the local cameras array.
     * If also currently the 'main' camera, 'main' will be reset to be camera 0.
     *
     * The removed Cameras are automatically destroyed if the `runDestroy` argument is `true`, which is the default.
     * If you wish to re-use the cameras then set this to `false`, but know that they will retain their references
     * and internal data until destroyed or re-added to a Camera Manager.
     *
     * @method Phaser.Cameras.Scene2D.CameraManager#remove
     * @since 3.0.0
     *
     * @param {(Phaser.Cameras.Scene2D.Camera|Phaser.Cameras.Scene2D.Camera[])} camera - The Camera, or an array of Cameras, to be removed from this Camera Manager.
     * @param {boolean} [runDestroy=true] - Automatically call `Camera.destroy` on each Camera removed from this Camera Manager.
     *
     * @return {integer} The total number of Cameras removed.
     */
    public function remove(camera:Dynamic, ?runDestroy:Bool):Int;
    /**
     * The internal render method. This is called automatically by the Scene and should not be invoked directly.
     *
     * It will iterate through all local cameras and render them in turn, as long as they're visible and have
     * an alpha level > 0.
     *
     * @method Phaser.Cameras.Scene2D.CameraManager#render
     * @protected
     * @since 3.0.0
     *
     * @param {(Phaser.Renderer.Canvas.CanvasRenderer|Phaser.Renderer.WebGL.WebGLRenderer)} renderer - The Renderer that will render the children to this camera.
     * @param {Phaser.GameObjects.GameObject[]} children - An array of renderable Game Objects.
     * @param {number} interpolation - Interpolation value. Reserved for future use.
     */
    public function render(renderer:Dynamic, children:Array<phaser.gameobjects.GameObject>, interpolation:Float):Void;
    /**
     * Resets this Camera Manager.
     *
     * This will iterate through all current Cameras, destroying them all, then it will reset the
     * cameras array, reset the ID counter and create 1 new single camera using the default values.
     *
     * @method Phaser.Cameras.Scene2D.CameraManager#resetAll
     * @since 3.0.0
     *
     * @return {Phaser.Cameras.Scene2D.Camera} The freshly created main Camera.
     */
    public function resetAll():phaser.cameras.scene2d.Camera;
    /**
     * The main update loop. Called automatically when the Scene steps.
     *
     * @method Phaser.Cameras.Scene2D.CameraManager#update
     * @protected
     * @since 3.0.0
     *
     * @param {number} timestep - The timestep value.
     * @param {number} delta - The delta value since the last frame.
     */
    public function update(timestep:Float, delta:Float):Void;
    /**
     * Resizes all cameras to the given dimensions.
     *
     * @method Phaser.Cameras.Scene2D.CameraManager#resize
     * @since 3.2.0
     *
     * @param {number} width - The new width of the camera.
     * @param {number} height - The new height of the camera.
     */
    public function resize(width:Float, height:Float):Void;
}
