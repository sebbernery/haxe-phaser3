package phaser.gameobjects;

/**
 * @classdesc
 * A Layer Game Object.
 *
 * A Layer is a special type of Game Object that acts as a Display List. You can add any type of Game Object
 * to a Layer, just as you would to a Scene. Layers can be used to visually group together 'layers' of Game
 * Objects:
 *
 * ```javascript
 * const spaceman = this.add.sprite(150, 300, 'spaceman');
 * const bunny = this.add.sprite(400, 300, 'bunny');
 * const elephant = this.add.sprite(650, 300, 'elephant');
 *
 * const layer = this.add.layer();
 *
 * layer.add([ spaceman, bunny, elephant ]);
 * ```
 *
 * The 3 sprites in the example above will now be managed by the Layer they were added to. Therefore,
 * if you then set `layer.setVisible(false)` they would all vanish from the display.
 *
 * You can also control the depth of the Game Objects within the Layer. For example, calling the
 * `setDepth` method of a child of a Layer will allow you to adjust the depth of that child _within the
 * Layer itself_, rather than the whole Scene. The Layer, too, can have its depth set as well.
 *
 * The Layer class also offers many different methods for manipulating the list, such as the
 * methods `moveUp`, `moveDown`, `sendToBack`, `bringToTop` and so on. These allow you to change the
 * display list position of the Layers children, causing it to adjust the order in which they are
 * rendered. Using `setDepth` on a child allows you to override this.
 *
 * Layers can have Post FX Pipelines set, which allows you to easily enable a post pipeline across
 * a whole range of children, which, depending on the effect, can often be far more efficient that doing so
 * on a per-child basis.
 *
 * Layers have no position or size within the Scene. This means you cannot enable a Layer for
 * physics or input, or change the position, rotation or scale of a Layer. They also have no scroll
 * factor, texture, tint, origin, crop or bounds.
 *
 * If you need those kind of features then you should use a Container instead. Containers can be added
 * to Layers, but Layers cannot be added to Containers.
 *
 * However, you can set the Alpha, Blend Mode, Depth, Mask and Visible state of a Layer. These settings
 * will impact all children being rendered by the Layer.
 *
 * @class Layer
 * @extends Phaser.Structs.List.<Phaser.GameObjects.GameObject>
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.50.0
 *
 * @extends Phaser.GameObjects.Components.AlphaSingle
 * @extends Phaser.GameObjects.Components.BlendMode
 * @extends Phaser.GameObjects.Components.Depth
 * @extends Phaser.GameObjects.Components.Mask
 * @extends Phaser.GameObjects.Components.Pipeline
 * @extends Phaser.GameObjects.Components.Visible
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {Phaser.GameObjects.GameObject[]} [children] - An optional array of Game Objects to add to this Layer.
 */
@:native("Phaser.GameObjects.Layer")
extern class Layer {
    public function new(scene:phaser.Scene, ?children:Array<phaser.gameobjects.GameObject>);
    /**
     * A reference to the Scene to which this Game Object belongs.
     *
     * Game Objects can only belong to one Scene.
     *
     * You should consider this property as being read-only. You cannot move a
     * Game Object to another Scene by simply changing it.
     *
     * @name Phaser.GameObjects.Layer#scene
     * @type {Phaser.Scene}
     * @since 3.50.0
     */
    public var scene:phaser.Scene;
    /**
     * Holds a reference to the Display List that contains this Game Object.
     *
     * This is set automatically when this Game Object is added to a Scene or Layer.
     *
     * You should treat this property as being read-only.
     *
     * @name Phaser.GameObjects.Layer#displayList
     * @type {(Phaser.GameObjects.DisplayList|Phaser.GameObjects.Layer)}
     * @default null
     * @since 3.50.0
     */
    public var displayList:Dynamic;
    /**
     * A textual representation of this Game Object, i.e. `sprite`.
     * Used internally by Phaser but is available for your own custom classes to populate.
     *
     * @name Phaser.GameObjects.Layer#type
     * @type {string}
     * @since 3.50.0
     */
    public var type:String;
    /**
     * The current state of this Game Object.
     *
     * Phaser itself will never modify this value, although plugins may do so.
     *
     * Use this property to track the state of a Game Object during its lifetime. For example, it could change from
     * a state of 'moving', to 'attacking', to 'dead'. The state value should be an integer (ideally mapped to a constant
     * in your game code), or a string. These are recommended to keep it light and simple, with fast comparisons.
     * If you need to store complex data about your Game Object, look at using the Data Component instead.
     *
     * @name Phaser.GameObjects.Layer#state
     * @type {(number|string)}
     * @since 3.50.0
     */
    public var state:Dynamic;
    /**
     * The name of this Game Object.
     * Empty by default and never populated by Phaser, this is left for developers to use.
     *
     * @name Phaser.GameObjects.Layer#name
     * @type {string}
     * @default ''
     * @since 3.50.0
     */
    public var name:String;
    /**
     * The active state of this Game Object.
     * A Game Object with an active state of `true` is processed by the Scenes UpdateList, if added to it.
     * An active object is one which is having its logic and internal systems updated.
     *
     * @name Phaser.GameObjects.Layer#active
     * @type {boolean}
     * @default true
     * @since 3.50.0
     */
    public var active:Bool;
    /**
     * A Data Manager.
     * It allows you to store, query and get key/value paired information specific to this Game Object.
     * `null` by default. Automatically created if you use `getData` or `setData` or `setDataEnabled`.
     *
     * @name Phaser.GameObjects.Layer#data
     * @type {Phaser.Data.DataManager}
     * @default null
     * @since 3.50.0
     */
    public var data:phaser.data.DataManager;
    /**
     * The flags that are compared against `RENDER_MASK` to determine if this Game Object will render or not.
     * The bits are 0001 | 0010 | 0100 | 1000 set by the components Visible, Alpha, Transform and Texture respectively.
     * If those components are not used by your custom class then you can use this bitmask as you wish.
     *
     * @name Phaser.GameObjects.Layer#renderFlags
     * @type {number}
     * @default 15
     * @since 3.50.0
     */
    public var renderFlags:Float;
    /**
     * A bitmask that controls if this Game Object is drawn by a Camera or not.
     * Not usually set directly, instead call `Camera.ignore`, however you can
     * set this property directly using the Camera.id property:
     *
     * @example
     * this.cameraFilter |= camera.id
     *
     * @name Phaser.GameObjects.Layer#cameraFilter
     * @type {number}
     * @default 0
     * @since 3.50.0
     */
    public var cameraFilter:Float;
    /**
     * This Game Object will ignore all calls made to its destroy method if this flag is set to `true`.
     * This includes calls that may come from a Group, Container or the Scene itself.
     * While it allows you to persist a Game Object across Scenes, please understand you are entirely
     * responsible for managing references to and from this Game Object.
     *
     * @name Phaser.GameObjects.Layer#ignoreDestroy
     * @type {boolean}
     * @default false
     * @since 3.50.0
     */
    public var ignoreDestroy:Bool;
    /**
     * A reference to the Scene Systems.
     *
     * @name Phaser.GameObjects.Layer#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.50.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * A reference to the Scene Event Emitter.
     *
     * @name Phaser.GameObjects.Layer#events
     * @type {Phaser.Events.EventEmitter}
     * @since 3.50.0
     */
    public var events:phaser.events.EventEmitter;
    /**
     * The flag the determines whether Game Objects should be sorted when `depthSort()` is called.
     *
     * @name Phaser.GameObjects.Layer#sortChildrenFlag
     * @type {boolean}
     * @default false
     * @since 3.50.0
     */
    public var sortChildrenFlag:Bool;
    /**
     * Sets the `active` property of this Game Object and returns this Game Object for further chaining.
     * A Game Object with its `active` property set to `true` will be updated by the Scenes UpdateList.
     *
     * @method Phaser.GameObjects.Layer#setActive
     * @since 3.50.0
     *
     * @param {boolean} value - True if this Game Object should be set as active, false if not.
     *
     * @return {this} This GameObject.
     */
    public function setActive(value:Bool):Dynamic;
    /**
     * Sets the `name` property of this Game Object and returns this Game Object for further chaining.
     * The `name` property is not populated by Phaser and is presented for your own use.
     *
     * @method Phaser.GameObjects.Layer#setName
     * @since 3.50.0
     *
     * @param {string} value - The name to be given to this Game Object.
     *
     * @return {this} This GameObject.
     */
    public function setName(value:String):Dynamic;
    /**
     * Sets the current state of this Game Object.
     *
     * Phaser itself will never modify the State of a Game Object, although plugins may do so.
     *
     * For example, a Game Object could change from a state of 'moving', to 'attacking', to 'dead'.
     * The state value should typically be an integer (ideally mapped to a constant
     * in your game code), but could also be a string. It is recommended to keep it light and simple.
     * If you need to store complex data about your Game Object, look at using the Data Component instead.
     *
     * @method Phaser.GameObjects.Layer#setState
     * @since 3.50.0
     *
     * @param {(number|string)} value - The state of the Game Object.
     *
     * @return {this} This GameObject.
     */
    public function setState(value:Dynamic):Dynamic;
    /**
     * Adds a Data Manager component to this Game Object.
     *
     * @method Phaser.GameObjects.Layer#setDataEnabled
     * @since 3.50.0
     * @see Phaser.Data.DataManager
     *
     * @return {this} This GameObject.
     */
    public function setDataEnabled():Dynamic;
    /**
     * Allows you to store a key value pair within this Game Objects Data Manager.
     *
     * If the Game Object has not been enabled for data (via `setDataEnabled`) then it will be enabled
     * before setting the value.
     *
     * If the key doesn't already exist in the Data Manager then it is created.
     *
     * ```javascript
     * sprite.setData('name', 'Red Gem Stone');
     * ```
     *
     * You can also pass in an object of key value pairs as the first argument:
     *
     * ```javascript
     * sprite.setData({ name: 'Red Gem Stone', level: 2, owner: 'Link', gold: 50 });
     * ```
     *
     * To get a value back again you can call `getData`:
     *
     * ```javascript
     * sprite.getData('gold');
     * ```
     *
     * Or you can access the value directly via the `values` property, where it works like any other variable:
     *
     * ```javascript
     * sprite.data.values.gold += 50;
     * ```
     *
     * When the value is first set, a `setdata` event is emitted from this Game Object.
     *
     * If the key already exists, a `changedata` event is emitted instead, along an event named after the key.
     * For example, if you updated an existing key called `PlayerLives` then it would emit the event `changedata-PlayerLives`.
     * These events will be emitted regardless if you use this method to set the value, or the direct `values` setter.
     *
     * Please note that the data keys are case-sensitive and must be valid JavaScript Object property strings.
     * This means the keys `gold` and `Gold` are treated as two unique values within the Data Manager.
     *
     * @method Phaser.GameObjects.Layer#setData
     * @since 3.50.0
     *
     * @param {(string|object)} key - The key to set the value for. Or an object of key value pairs. If an object the `data` argument is ignored.
     * @param {*} [data] - The value to set for the given key. If an object is provided as the key this argument is ignored.
     *
     * @return {this} This GameObject.
     */
    public function setData(key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Increase a value for the given key within this Game Objects Data Manager. If the key doesn't already exist in the Data Manager then it is increased from 0.
     *
     * If the Game Object has not been enabled for data (via `setDataEnabled`) then it will be enabled
     * before setting the value.
     *
     * If the key doesn't already exist in the Data Manager then it is created.
     *
     * When the value is first set, a `setdata` event is emitted from this Game Object.
     *
     * @method Phaser.GameObjects.Layer#incData
     * @since 3.50.0
     *
     * @param {(string|object)} key - The key to increase the value for.
     * @param {*} [data] - The value to increase for the given key.
     *
     * @return {this} This GameObject.
     */
    public function incData(key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Toggle a boolean value for the given key within this Game Objects Data Manager. If the key doesn't already exist in the Data Manager then it is toggled from false.
     *
     * If the Game Object has not been enabled for data (via `setDataEnabled`) then it will be enabled
     * before setting the value.
     *
     * If the key doesn't already exist in the Data Manager then it is created.
     *
     * When the value is first set, a `setdata` event is emitted from this Game Object.
     *
     * @method Phaser.GameObjects.Layer#toggleData
     * @since 3.50.0
     *
     * @param {(string|object)} key - The key to toggle the value for.
     *
     * @return {this} This GameObject.
     */
    public function toggleData(key:Dynamic):Dynamic;
    /**
     * Retrieves the value for the given key in this Game Objects Data Manager, or undefined if it doesn't exist.
     *
     * You can also access values via the `values` object. For example, if you had a key called `gold` you can do either:
     *
     * ```javascript
     * sprite.getData('gold');
     * ```
     *
     * Or access the value directly:
     *
     * ```javascript
     * sprite.data.values.gold;
     * ```
     *
     * You can also pass in an array of keys, in which case an array of values will be returned:
     *
     * ```javascript
     * sprite.getData([ 'gold', 'armor', 'health' ]);
     * ```
     *
     * This approach is useful for destructuring arrays in ES6.
     *
     * @method Phaser.GameObjects.Layer#getData
     * @since 3.50.0
     *
     * @param {(string|string[])} key - The key of the value to retrieve, or an array of keys.
     *
     * @return {*} The value belonging to the given key, or an array of values, the order of which will match the input array.
     */
    public function getData(key:Dynamic):Dynamic;
    /**
     * This callback is invoked when this Game Object is added to a Scene.
     *
     * Can be overriden by custom Game Objects, but be aware of some Game Objects that
     * will use this, such as Sprites, to add themselves into the Update List.
     *
     * You can also listen for the `ADDED_TO_SCENE` event from this Game Object.
     *
     * @method Phaser.GameObjects.Layer#addedToScene
     * @since 3.50.0
     */
    public function addedToScene():Void;
    /**
     * This callback is invoked when this Game Object is removed from a Scene.
     *
     * Can be overriden by custom Game Objects, but be aware of some Game Objects that
     * will use this, such as Sprites, to removed themselves from the Update List.
     *
     * You can also listen for the `REMOVED_FROM_SCENE` event from this Game Object.
     *
     * @method Phaser.GameObjects.Layer#removedFromScene
     * @since 3.50.0
     */
    public function removedFromScene():Void;
    /**
     * To be overridden by custom GameObjects. Allows base objects to be used in a Pool.
     *
     * @method Phaser.GameObjects.Layer#update
     * @since 3.50.0
     *
     * @param {...*} [args] - args
     */
    public function update(?args:Dynamic):Void;
    /**
     * Returns a JSON representation of the Game Object.
     *
     * @method Phaser.GameObjects.Layer#toJSON
     * @since 3.50.0
     *
     * @return {Phaser.Types.GameObjects.JSONGameObject} A JSON representation of the Game Object.
     */
    public function toJSON():phaser.types.gameobjects.JSONGameObject;
    /**
     * Compares the renderMask with the renderFlags to see if this Game Object will render or not.
     * Also checks the Game Object against the given Cameras exclusion list.
     *
     * @method Phaser.GameObjects.Layer#willRender
     * @since 3.50.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to check against this Game Object.
     *
     * @return {boolean} True if the Game Object should be rendered, otherwise false.
     */
    public function willRender(camera:phaser.cameras.scene2d.Camera):Bool;
    /**
     * Force a sort of the display list on the next call to depthSort.
     *
     * @method Phaser.GameObjects.Layer#queueDepthSort
     * @since 3.50.0
     */
    public function queueDepthSort():Void;
    /**
     * Immediately sorts the display list if the flag is set.
     *
     * @method Phaser.GameObjects.Layer#depthSort
     * @since 3.50.0
     */
    public function depthSort():Void;
    /**
     * Compare the depth of two Game Objects.
     *
     * @method Phaser.GameObjects.Layer#sortByDepth
     * @since 3.50.0
     *
     * @param {Phaser.GameObjects.GameObject} childA - The first Game Object.
     * @param {Phaser.GameObjects.GameObject} childB - The second Game Object.
     *
     * @return {number} The difference between the depths of each Game Object.
     */
    public function sortByDepth(childA:phaser.gameobjects.GameObject, childB:phaser.gameobjects.GameObject):Float;
    /**
     * Returns an array which contains all Game Objects within this Layer.
     *
     * This is a reference to the main list array, not a copy of it, so be careful not to modify it.
     *
     * @method Phaser.GameObjects.Layer#getChildren
     * @since 3.50.0
     *
     * @return {Phaser.GameObjects.GameObject[]} The group members.
     */
    public function getChildren():Array<phaser.gameobjects.GameObject>;
    /**
     * Destroys this Game Object removing it from the Display List and Update List and
     * severing all ties to parent resources.
     *
     * Use this to remove a Game Object from your game if you don't ever plan to use it again.
     * As long as no reference to it exists within your own code it should become free for
     * garbage collection by the browser.
     *
     * If you just want to temporarily disable an object then look at using the
     * Game Object Pool instead of destroying it, as destroyed objects cannot be resurrected.
     *
     * @method Phaser.GameObjects.Layer#destroy
     * @fires Phaser.GameObjects.Events#DESTROY
     * @since 3.50.0
     */
    public function destroy():Void;
    /**
     * The alpha value of the Game Object.
     *
     * This is a global value, impacting the entire Game Object, not just a region of it.
     *
     * @name Phaser.GameObjects.Components.AlphaSingle#alpha
     * @type {number}
     * @since 3.0.0
     */
    public var alpha:Float;
    /**
     * Clears all alpha values associated with this Game Object.
     *
     * Immediately sets the alpha levels back to 1 (fully opaque).
     *
     * @method Phaser.GameObjects.Components.AlphaSingle#clearAlpha
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function clearAlpha():Dynamic;
    /**
     * Set the Alpha level of this Game Object. The alpha controls the opacity of the Game Object as it renders.
     * Alpha values are provided as a float between 0, fully transparent, and 1, fully opaque.
     *
     * @method Phaser.GameObjects.Components.AlphaSingle#setAlpha
     * @since 3.0.0
     *
     * @param {number} [value=1] - The alpha value applied across the whole Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setAlpha(?value:Float):Dynamic;
    /**
     * Sets the Blend Mode being used by this Game Object.
     *
     * This can be a const, such as `Phaser.BlendModes.SCREEN`, or an integer, such as 4 (for Overlay)
     *
     * Under WebGL only the following Blend Modes are available:
     *
     * * ADD
     * * MULTIPLY
     * * SCREEN
     * * ERASE
     *
     * Canvas has more available depending on browser support.
     *
     * You can also create your own custom Blend Modes in WebGL.
     *
     * Blend modes have different effects under Canvas and WebGL, and from browser to browser, depending
     * on support. Blend Modes also cause a WebGL batch flush should it encounter a new blend mode. For these
     * reasons try to be careful about the construction of your Scene and the frequency of which blend modes
     * are used.
     *
     * @name Phaser.GameObjects.Components.BlendMode#blendMode
     * @type {(Phaser.BlendModes|string)}
     * @since 3.0.0
     */
    public var blendMode:Dynamic;
    /**
     * Sets the Blend Mode being used by this Game Object.
     *
     * This can be a const, such as `Phaser.BlendModes.SCREEN`, or an integer, such as 4 (for Overlay)
     *
     * Under WebGL only the following Blend Modes are available:
     *
     * * ADD
     * * MULTIPLY
     * * SCREEN
     * * ERASE (only works when rendering to a framebuffer, like a Render Texture)
     *
     * Canvas has more available depending on browser support.
     *
     * You can also create your own custom Blend Modes in WebGL.
     *
     * Blend modes have different effects under Canvas and WebGL, and from browser to browser, depending
     * on support. Blend Modes also cause a WebGL batch flush should it encounter a new blend mode. For these
     * reasons try to be careful about the construction of your Scene and the frequency in which blend modes
     * are used.
     *
     * @method Phaser.GameObjects.Components.BlendMode#setBlendMode
     * @since 3.0.0
     *
     * @param {(string|Phaser.BlendModes)} value - The BlendMode value. Either a string or a CONST.
     *
     * @return {this} This Game Object instance.
     */
    public function setBlendMode(value:Dynamic):Dynamic;
    /**
     * The depth of this Game Object within the Scene.
     *
     * The depth is also known as the 'z-index' in some environments, and allows you to change the rendering order
     * of Game Objects, without actually moving their position in the display list.
     *
     * The default depth is zero. A Game Object with a higher depth
     * value will always render in front of one with a lower value.
     *
     * Setting the depth will queue a depth sort event within the Scene.
     *
     * @name Phaser.GameObjects.Components.Depth#depth
     * @type {number}
     * @since 3.0.0
     */
    public var depth:Float;
    /**
     * The depth of this Game Object within the Scene.
     *
     * The depth is also known as the 'z-index' in some environments, and allows you to change the rendering order
     * of Game Objects, without actually moving their position in the display list.
     *
     * The default depth is zero. A Game Object with a higher depth
     * value will always render in front of one with a lower value.
     *
     * Setting the depth will queue a depth sort event within the Scene.
     *
     * @method Phaser.GameObjects.Components.Depth#setDepth
     * @since 3.0.0
     *
     * @param {number} value - The depth of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDepth(value:Float):Dynamic;
    /**
     * The Mask this Game Object is using during render.
     *
     * @name Phaser.GameObjects.Components.Mask#mask
     * @type {Phaser.Display.Masks.BitmapMask|Phaser.Display.Masks.GeometryMask}
     * @since 3.0.0
     */
    public var mask:Dynamic;
    /**
     * Sets the mask that this Game Object will use to render with.
     *
     * The mask must have been previously created and can be either a GeometryMask or a BitmapMask.
     * Note: Bitmap Masks only work on WebGL. Geometry Masks work on both WebGL and Canvas.
     *
     * If a mask is already set on this Game Object it will be immediately replaced.
     *
     * Masks are positioned in global space and are not relative to the Game Object to which they
     * are applied. The reason for this is that multiple Game Objects can all share the same mask.
     *
     * Masks have no impact on physics or input detection. They are purely a rendering component
     * that allows you to limit what is visible during the render pass.
     *
     * @method Phaser.GameObjects.Components.Mask#setMask
     * @since 3.6.2
     *
     * @param {Phaser.Display.Masks.BitmapMask|Phaser.Display.Masks.GeometryMask} mask - The mask this Game Object will use when rendering.
     *
     * @return {this} This Game Object instance.
     */
    public function setMask(mask:Dynamic):Dynamic;
    /**
     * Clears the mask that this Game Object was using.
     *
     * @method Phaser.GameObjects.Components.Mask#clearMask
     * @since 3.6.2
     *
     * @param {boolean} [destroyMask=false] - Destroy the mask before clearing it?
     *
     * @return {this} This Game Object instance.
     */
    public function clearMask(?destroyMask:Bool):Dynamic;
    /**
     * Creates and returns a Bitmap Mask. This mask can be used by any Game Object,
     * including this one.
     *
     * Note: Bitmap Masks only work on WebGL. Geometry Masks work on both WebGL and Canvas.
     *
     * To create the mask you need to pass in a reference to a renderable Game Object.
     * A renderable Game Object is one that uses a texture to render with, such as an
     * Image, Sprite, Render Texture or BitmapText.
     *
     * If you do not provide a renderable object, and this Game Object has a texture,
     * it will use itself as the object. This means you can call this method to create
     * a Bitmap Mask from any renderable Game Object.
     *
     * @method Phaser.GameObjects.Components.Mask#createBitmapMask
     * @since 3.6.2
     *
     * @param {Phaser.GameObjects.GameObject} [renderable] - A renderable Game Object that uses a texture, such as a Sprite.
     *
     * @return {Phaser.Display.Masks.BitmapMask} This Bitmap Mask that was created.
     */
    public function createBitmapMask(?renderable:phaser.gameobjects.GameObject):phaser.display.masks.BitmapMask;
    /**
     * Creates and returns a Geometry Mask. This mask can be used by any Game Object,
     * including this one.
     *
     * To create the mask you need to pass in a reference to a Graphics Game Object.
     *
     * If you do not provide a graphics object, and this Game Object is an instance
     * of a Graphics object, then it will use itself to create the mask.
     *
     * This means you can call this method to create a Geometry Mask from any Graphics Game Object.
     *
     * @method Phaser.GameObjects.Components.Mask#createGeometryMask
     * @since 3.6.2
     *
     * @param {Phaser.GameObjects.Graphics} [graphics] - A Graphics Game Object. The geometry within it will be used as the mask.
     *
     * @return {Phaser.Display.Masks.GeometryMask} This Geometry Mask that was created.
     */
    public function createGeometryMask(?graphics:phaser.gameobjects.Graphics):phaser.display.masks.GeometryMask;
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
