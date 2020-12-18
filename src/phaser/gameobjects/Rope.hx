package phaser.gameobjects;

/**
 * @classdesc
 * A Rope Game Object.
 *
 * The Rope object is WebGL only and does not have a Canvas counterpart.
 *
 * A Rope is a special kind of Game Object that has a texture that repeats along its entire length.
 * Unlike a Sprite, it isn't restricted to using just a quad and can have as many vertices as you define
 * when creating it. The vertices can be arranged in a horizontal or vertical strip and have their own
 * color and alpha values as well.
 *
 * A Ropes origin is always 0.5 x 0.5 and cannot be changed.
 *
 * @class Rope
 * @extends Phaser.GameObjects.GameObject
 * @memberof Phaser.GameObjects
 * @constructor
 * @webglOnly
 * @since 3.23.0
 *
 * @extends Phaser.GameObjects.Components.AlphaSingle
 * @extends Phaser.GameObjects.Components.BlendMode
 * @extends Phaser.GameObjects.Components.Depth
 * @extends Phaser.GameObjects.Components.Flip
 * @extends Phaser.GameObjects.Components.Mask
 * @extends Phaser.GameObjects.Components.Pipeline
 * @extends Phaser.GameObjects.Components.Size
 * @extends Phaser.GameObjects.Components.Texture
 * @extends Phaser.GameObjects.Components.Transform
 * @extends Phaser.GameObjects.Components.Visible
 * @extends Phaser.GameObjects.Components.ScrollFactor
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} [x=0] - The horizontal position of this Game Object in the world.
 * @param {number} [y=0] - The vertical position of this Game Object in the world.
 * @param {string} [texture] - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager. If not given, `__DEFAULT` is used.
 * @param {(string|integer|null)} [frame] - An optional frame from the Texture this Game Object is rendering with.
 * @param {(integer|Phaser.Types.Math.Vector2Like[])} [points=2] - An array containing the vertices data for this Rope, or a number that indicates how many segments to split the texture frame into. If none is provided a simple quad is created. See `setPoints` to set this post-creation.
 * @param {boolean} [horizontal=true] - Should the vertices of this Rope be aligned horizontally (`true`), or vertically (`false`)?
 * @param {number[]} [colors] - An optional array containing the color data for this Rope. You should provide one color value per pair of vertices.
 * @param {number[]} [alphas] - An optional array containing the alpha data for this Rope. You should provide one alpha value per pair of vertices.
 */
@:native("Phaser.GameObjects.Rope")
extern class Rope extends phaser.gameobjects.GameObject {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?texture:String, ?frame:Dynamic, ?points:Dynamic, ?horizontal:Bool, ?colors:Array<Float>, ?alphas:Array<Float>);
    /**
     * The Animation Controller of this Rope.
     *
     * @name Phaser.GameObjects.Rope#anims
     * @type {Phaser.GameObjects.Components.Animation}
     * @since 3.23.0
     */
    public var anims:phaser.gameobjects.components.Animation;
    /**
     * An array containing the points data for this Rope.
     *
     * Each point should be given as a Vector2Like object (i.e. a Vector2, Geom.Point or object with public x/y properties).
     *
     * The point coordinates are given in local space, where 0 x 0 is the start of the Rope strip.
     *
     * You can modify the contents of this array directly in real-time to create interesting effects.
     * If you do so, be sure to call `setDirty` _after_ modifying this array, so that the vertices data is
     * updated before the next render. Alternatively, you can use the `setPoints` method instead.
     *
     * Should you need to change the _size_ of this array, then you should always use the `setPoints` method.
     *
     * @name Phaser.GameObjects.Rope#points
     * @type {Phaser.Types.Math.Vector2Like[]}
     * @since 3.23.0
     */
    public var points:Array<phaser.types.math.Vector2Like>;
    /**
     * An array containing the vertices data for this Rope.
     *
     * This data is calculated automatically in the `updateVertices` method, based on the points provided.
     *
     * @name Phaser.GameObjects.Rope#vertices
     * @type {Float32Array}
     * @since 3.23.0
     */
    public var vertices:js.lib.Float32Array;
    /**
     * An array containing the uv data for this Rope.
     *
     * This data is calculated automatically in the `setPoints` method, based on the points provided.
     *
     * @name Phaser.GameObjects.Rope#uv
     * @type {Float32Array}
     * @since 3.23.0
     */
    public var uv:js.lib.Float32Array;
    /**
     * An array containing the color data for this Rope.
     *
     * Colors should be given as numeric RGB values, such as 0xff0000.
     * You should provide _two_ color values for every point in the Rope, one for the top and one for the bottom of each quad.
     *
     * You can modify the contents of this array directly in real-time, however, should you need to change the _size_
     * of the array, then you should use the `setColors` method instead.
     *
     * @name Phaser.GameObjects.Rope#colors
     * @type {Uint32Array}
     * @since 3.23.0
     */
    public var colors:js.lib.Uint32Array;
    /**
     * An array containing the alpha data for this Rope.
     *
     * Alphas should be given as float values, such as 0.5.
     * You should provide _two_ alpha values for every point in the Rope, one for the top and one for the bottom of each quad.
     *
     * You can modify the contents of this array directly in real-time, however, should you need to change the _size_
     * of the array, then you should use the `setAlphas` method instead.
     *
     * @name Phaser.GameObjects.Rope#alphas
     * @type {Float32Array}
     * @since 3.23.0
     */
    public var alphas:js.lib.Float32Array;
    /**
     * The tint fill mode.
     *
     * 0 = An additive tint (the default), where vertices colors are blended with the texture.
     * 1 = A fill tint, where the vertices colors replace the texture, but respects texture alpha.
     * 2 = A complete tint, where the vertices colors replace the texture, including alpha, entirely.
     *
     * @name Phaser.GameObjects.Rope#tintFill
     * @type {integer}
     * @since 3.23.0
     */
    public var tintFill:Int;
    /**
     * If the Rope is marked as `dirty` it will automatically recalculate its vertices
     * the next time it renders. You can also force this by calling `updateVertices`.
     *
     * @name Phaser.GameObjects.Rope#dirty
     * @type {boolean}
     * @since 3.23.0
     */
    public var dirty:Bool;
    /**
     * Are the Rope vertices aligned horizontally, in a strip, or vertically, in a column?
     *
     * This property is set during instantiation and cannot be changed directly.
     * See the `setVertical` and `setHorizontal` methods.
     *
     * @name Phaser.GameObjects.Rope#horizontal
     * @type {boolean}
     * @readonly
     * @since 3.23.0
     */
    public var horizontal:Bool;
    /**
     * You can optionally choose to render the vertices of this Rope to a Graphics instance.
     *
     * Achieve this by setting the `debugCallback` and the `debugGraphic` properties.
     *
     * You can do this in a single call via the `Rope.setDebug` method, which will use the
     * built-in debug function. You can also set it to your own callback. The callback
     * will be invoked _once per render_ and sent the following parameters:
     *
     * `debugCallback(src, meshLength, verts)`
     *
     * `src` is the Rope instance being debugged.
     * `meshLength` is the number of mesh vertices in total.
     * `verts` is an array of the translated vertex coordinates.
     *
     * To disable rendering, set this property back to `null`.
     *
     * @name Phaser.GameObjects.Rope#debugCallback
     * @type {function}
     * @since 3.23.0
     */
    public var debugCallback:Dynamic;
    /**
     * The Graphics instance that the debug vertices will be drawn to, if `setDebug` has
     * been called.
     *
     * @name Phaser.GameObjects.Rope#debugGraphic
     * @type {Phaser.GameObjects.Graphics}
     * @since 3.23.0
     */
    public var debugGraphic:phaser.gameobjects.Graphics;
    /**
     * The Rope update loop.
     *
     * @method Phaser.GameObjects.Rope#preUpdate
     * @protected
     * @since 3.23.0
     *
     * @param {number} time - The current timestamp.
     * @param {number} delta - The delta time, in ms, elapsed since the last frame.
     */
    public function preUpdate(time:Float, delta:Float):Void;
    /**
     * Start playing the given animation.
     *
     * @method Phaser.GameObjects.Rope#play
     * @since 3.23.0
     *
     * @param {string} key - The string-based key of the animation to play.
     * @param {boolean} [ignoreIfPlaying=false] - If an animation is already playing then ignore this call.
     * @param {integer} [startFrame=0] - Optionally start the animation playing from this frame index.
     *
     * @return {this} This Game Object.
     */
    public function play(key:String, ?ignoreIfPlaying:Bool, ?startFrame:Int):Dynamic;
    /**
     * Flags this Rope as being dirty. A dirty rope will recalculate all of its vertices data
     * the _next_ time it renders. You should set this rope as dirty if you update the points
     * array directly.
     *
     * @method Phaser.GameObjects.Rope#setDirty
     * @since 3.23.0
     *
     * @return {this} This Game Object instance.
     */
    public function setDirty():Dynamic;
    /**
     * Sets the alignment of the points in this Rope to be horizontal, in a strip format.
     *
     * Calling this method will reset this Rope. The current points, vertices, colors and alpha
     * values will be reset to thoes values given as parameters.
     *
     * @method Phaser.GameObjects.Rope#setHorizontal
     * @since 3.23.0
     *
     * @param {(integer|Phaser.Types.Math.Vector2Like[])} [points] - An array containing the vertices data for this Rope, or a number that indicates how many segments to split the texture frame into. If none is provided the current points length is used.
     * @param {(number|number[])} [colors] - Either a single color value, or an array of values.
     * @param {(number|number[])} [alphas] - Either a single alpha value, or an array of values.
     *
     * @return {this} This Game Object instance.
     */
    public function setHorizontal(?points:Dynamic, ?colors:Dynamic, ?alphas:Dynamic):Dynamic;
    /**
     * Sets the alignment of the points in this Rope to be vertical, in a column format.
     *
     * Calling this method will reset this Rope. The current points, vertices, colors and alpha
     * values will be reset to thoes values given as parameters.
     *
     * @method Phaser.GameObjects.Rope#setVertical
     * @since 3.23.0
     *
     * @param {(integer|Phaser.Types.Math.Vector2Like[])} [points] - An array containing the vertices data for this Rope, or a number that indicates how many segments to split the texture frame into. If none is provided the current points length is used.
     * @param {(number|number[])} [colors] - Either a single color value, or an array of values.
     * @param {(number|number[])} [alphas] - Either a single alpha value, or an array of values.
     *
     * @return {this} This Game Object instance.
     */
    public function setVertical(?points:Dynamic, ?colors:Dynamic, ?alphas:Dynamic):Dynamic;
    /**
     * Sets the tint fill mode.
     *
     * Mode 0 is an additive tint, the default, which blends the vertices colors with the texture.
     * This mode respects the texture alpha.
     *
     * Mode 1 is a fill tint. Unlike an additive tint, a fill-tint literally replaces the pixel colors
     * from the texture with those in the tint. You can use this for effects such as making a player flash 'white'
     * if hit by something. This mode respects the texture alpha.
     *
     * Mode 2 is a complete tint. The texture colors and alpha are replaced entirely by the vertices colors.
     *
     * See the `setColors` method for details of how to color each of the vertices.
     *
     * @method Phaser.GameObjects.Rope#setTintFill
     * @webglOnly
     * @since 3.23.0
     *
     * @param {integer} [value=0] - Set to 0 for an Additive tint, 1 for a fill tint with alpha, or 2 for a fill tint without alpha.
     *
     * @return {this} This Game Object instance.
     */
    public function setTintFill(?value:Int):Dynamic;
    /**
     * Set the alpha values used by the Rope during rendering.
     *
     * You can provide the values in a number of ways:
     *
     * 1) One single numeric value: `setAlphas(0.5)` - This will set a single alpha for the whole Rope.
     * 2) Two numeric value: `setAlphas(1, 0.5)` - This will set a 'top' and 'bottom' alpha value across the whole Rope.
     * 3) An array of values: `setAlphas([ 1, 0.5, 0.2 ])`
     *
     * If you provide an array of values and the array has exactly the same number of values as `points` in the Rope, it
     * will use each alpha value per rope segment.
     *
     * If the provided array has a different number of values than `points` then it will use the values in order, from
     * the first Rope segment and on, until it runs out of values. This allows you to control the alpha values at all
     * vertices in the Rope.
     *
     * Note this method is called `setAlphas` (plural) and not `setAlpha`.
     *
     * @method Phaser.GameObjects.Rope#setAlphas
     * @since 3.23.0
     *
     * @param {(number|number[])} [alphas] - Either a single alpha value, or an array of values. If nothing is provided alpha is reset to 1.
     * @param {number} [bottomAlpha] - An optional bottom alpha value. See the method description for details.
     *
     * @return {this} This Game Object instance.
     */
    public function setAlphas(?alphas:Dynamic, ?bottomAlpha:Float):Dynamic;
    /**
     * Set the color values used by the Rope during rendering.
     *
     * Colors are used to control the level of tint applied across the Rope texture.
     *
     * You can provide the values in a number of ways:
     *
     * * One single numeric value: `setColors(0xff0000)` - This will set a single color tint for the whole Rope.
     * * An array of values: `setColors([ 0xff0000, 0x00ff00, 0x0000ff ])`
     *
     * If you provide an array of values and the array has exactly the same number of values as `points` in the Rope, it
     * will use each color per rope segment.
     *
     * If the provided array has a different number of values than `points` then it will use the values in order, from
     * the first Rope segment and on, until it runs out of values. This allows you to control the color values at all
     * vertices in the Rope.
     *
     * @method Phaser.GameObjects.Rope#setColors
     * @since 3.23.0
     *
     * @param {(number|number[])} [colors] - Either a single color value, or an array of values. If nothing is provided color is reset to 0xffffff.
     *
     * @return {this} This Game Object instance.
     */
    public function setColors(?colors:Dynamic):Dynamic;
    /**
     * Sets the points used by this Rope.
     *
     * The points should be provided as an array of Vector2, or vector2-like objects (i.e. those with public x/y properties).
     *
     * Each point corresponds to one segment of the Rope. The more points in the array, the more segments the rope has.
     *
     * Point coordinates are given in local-space, not world-space, and are directly related to the size of the texture
     * this Rope object is using.
     *
     * For example, a Rope using a 512 px wide texture, split into 4 segments (128px each) would use the following points:
     *
     * ```javascript
     * rope.setPoints([
     *   { x: 0, y: 0 },
     *   { x: 128, y: 0 },
     *   { x: 256, y: 0 },
     *   { x: 384, y: 0 }
     * ]);
     * ```
     *
     * Or, you can provide an integer to do the same thing:
     *
     * ```javascript
     * rope.setPoints(4);
     * ```
     *
     * Which will divide the Rope into 4 equally sized segments based on the frame width.
     *
     * Note that calling this method with a different number of points than the Rope has currently will
     * _reset_ the color and alpha values, unless you provide them as arguments to this method.
     *
     * @method Phaser.GameObjects.Rope#setPoints
     * @since 3.23.0
     *
     * @param {(integer|Phaser.Types.Math.Vector2Like[])} [points=2] - An array containing the vertices data for this Rope, or a number that indicates how many segments to split the texture frame into. If none is provided a simple quad is created.
     * @param {(number|number[])} [colors] - Either a single color value, or an array of values.
     * @param {(number|number[])} [alphas] - Either a single alpha value, or an array of values.
     *
     * @return {this} This Game Object instance.
     */
    public function setPoints(?points:Dynamic, ?colors:Dynamic, ?alphas:Dynamic):Dynamic;
    /**
     * Updates all of the UVs based on the Rope.points and `flipX` and `flipY` settings.
     *
     * @method Phaser.GameObjects.Rope#updateUVs
     * @since 3.23.0
     *
     * @return {this} This Game Object instance.
     */
    public function updateUVs():Dynamic;
    /**
     * Resizes all of the internal arrays: `vertices`, `uv`, `colors` and `alphas` to the new
     * given Rope segment total.
     *
     * @method Phaser.GameObjects.Rope#resizeArrays
     * @since 3.23.0
     *
     * @param {integer} newSize - The amount of segments to split the Rope in to.
     *
     * @return {this} This Game Object instance.
     */
    public function resizeArrays(newSize:Int):Dynamic;
    /**
     * Updates the vertices based on the Rope points.
     *
     * This method is called automatically during rendering if `Rope.dirty` is `true`, which is set
     * by the `setPoints` and `setDirty` methods. You should flag the Rope as being dirty if you modify
     * the Rope points directly.
     *
     * @method Phaser.GameObjects.Rope#updateVertices
     * @since 3.23.0
     *
     * @return {this} This Game Object instance.
     */
    public function updateVertices():Dynamic;
    /**
     * This method enables rendering of the Rope vertices to the given Graphics instance.
     *
     * If you enable this feature, you must call `Graphics.clear()` in your Scene `update`,
     * otherwise the Graphics instance will fill-in with draw calls. This is not done automatically
     * to allow for you to debug render multiple Rope objects to a single Graphics instance.
     *
     * The Rope class has a built-in debug rendering callback `Rope.renderDebugVerts`, however
     * you can also provide your own callback to be used instead. Do this by setting the `callback` parameter.
     *
     * The callback is invoked _once per render_ and sent the following parameters:
     *
     * `callback(src, meshLength, verts)`
     *
     * `src` is the Rope instance being debugged.
     * `meshLength` is the number of mesh vertices in total.
     * `verts` is an array of the translated vertex coordinates.
     *
     * If using your own callback you do not have to provide a Graphics instance to this method.
     *
     * To disable debug rendering, to either your own callback or the built-in one, call this method
     * with no arguments.
     *
     * @method Phaser.GameObjects.Rope#setDebug
     * @since 3.23.0
     *
     * @param {Phaser.GameObjects.Graphics} [graphic] - The Graphic instance to render to if using the built-in callback.
     * @param {function} [callback] - The callback to invoke during debug render. Leave as undefined to use the built-in callback.
     *
     * @return {this} This Game Object instance.
     */
    public function setDebug(?graphic:phaser.gameobjects.Graphics, ?callback:Dynamic):Dynamic;
    /**
     * The built-in Rope vertices debug rendering method.
     *
     * See `Rope.setDebug` for more details.
     *
     * @method Phaser.GameObjects.Rope#renderDebugVerts
     * @since 3.23.0
     *
     * @param {Phaser.GameObjects.Rope} src - The Rope object being rendered.
     * @param {integer} meshLength - The number of vertices in the mesh.
     * @param {number[]} verts - An array of translated vertex coordinates.
     */
    public function renderDebugVerts(src:phaser.gameobjects.Rope, meshLength:Int, verts:Array<Float>):Void;
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
     * The depth starts from zero (the default value) and increases from that point. A Game Object with a higher depth
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
     * The depth starts from zero (the default value) and increases from that point. A Game Object with a higher depth
     * value will always render in front of one with a lower value.
     *
     * Setting the depth will queue a depth sort event within the Scene.
     *
     * @method Phaser.GameObjects.Components.Depth#setDepth
     * @since 3.0.0
     *
     * @param {integer} value - The depth of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDepth(value:Int):Dynamic;
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
     * Sets the initial WebGL Pipeline of this Game Object.
     * This should only be called during the instantiation of the Game Object.
     *
     * @method Phaser.GameObjects.Components.Pipeline#initPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {string} [pipelineName=TextureTintPipeline] - The name of the pipeline to set on this Game Object. Defaults to the Texture Tint Pipeline.
     *
     * @return {boolean} `true` if the pipeline was set successfully, otherwise `false`.
     */
    public function initPipeline(?pipelineName:String):Bool;
    /**
     * Sets the active WebGL Pipeline of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {string} pipelineName - The name of the pipeline to set on this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setPipeline(pipelineName:String):Dynamic;
    /**
     * Resets the WebGL Pipeline of this Game Object back to the default it was created with.
     *
     * @method Phaser.GameObjects.Components.Pipeline#resetPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @return {boolean} `true` if the pipeline was set successfully, otherwise `false`.
     */
    public function resetPipeline():Bool;
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
     * The native (un-scaled) width of this Game Object.
     *
     * Changing this value will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or use
     * the `displayWidth` property.
     *
     * @name Phaser.GameObjects.Components.Size#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The native (un-scaled) height of this Game Object.
     *
     * Changing this value will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or use
     * the `displayHeight` property.
     *
     * @name Phaser.GameObjects.Components.Size#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The displayed width of this Game Object.
     *
     * This value takes into account the scale factor.
     *
     * Setting this value will adjust the Game Object's scale property.
     *
     * @name Phaser.GameObjects.Components.Size#displayWidth
     * @type {number}
     * @since 3.0.0
     */
    public var displayWidth:Float;
    /**
     * The displayed height of this Game Object.
     *
     * This value takes into account the scale factor.
     *
     * Setting this value will adjust the Game Object's scale property.
     *
     * @name Phaser.GameObjects.Components.Size#displayHeight
     * @type {number}
     * @since 3.0.0
     */
    public var displayHeight:Float;
    /**
     * Sets the size of this Game Object to be that of the given Frame.
     *
     * This will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or call the
     * `setDisplaySize` method, which is the same thing as changing the scale but allows you
     * to do so by giving pixel values.
     *
     * If you have enabled this Game Object for input, changing the size will _not_ change the
     * size of the hit area. To do this you should adjust the `input.hitArea` object directly.
     *
     * @method Phaser.GameObjects.Components.Size#setSizeToFrame
     * @since 3.0.0
     *
     * @param {Phaser.Textures.Frame} frame - The frame to base the size of this Game Object on.
     *
     * @return {this} This Game Object instance.
     */
    public function setSizeToFrame(frame:phaser.textures.Frame):Dynamic;
    /**
     * Sets the internal size of this Game Object, as used for frame or physics body creation.
     *
     * This will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or call the
     * `setDisplaySize` method, which is the same thing as changing the scale but allows you
     * to do so by giving pixel values.
     *
     * If you have enabled this Game Object for input, changing the size will _not_ change the
     * size of the hit area. To do this you should adjust the `input.hitArea` object directly.
     *
     * @method Phaser.GameObjects.Components.Size#setSize
     * @since 3.0.0
     *
     * @param {number} width - The width of this Game Object.
     * @param {number} height - The height of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setSize(width:Float, height:Float):Dynamic;
    /**
     * Sets the display size of this Game Object.
     *
     * Calling this will adjust the scale.
     *
     * @method Phaser.GameObjects.Components.Size#setDisplaySize
     * @since 3.0.0
     *
     * @param {number} width - The width of this Game Object.
     * @param {number} height - The height of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDisplaySize(width:Float, height:Float):Dynamic;
    /**
     * The Texture this Game Object is using to render with.
     *
     * @name Phaser.GameObjects.Components.Texture#texture
     * @type {Phaser.Textures.Texture|Phaser.Textures.CanvasTexture}
     * @since 3.0.0
     */
    public var texture:Dynamic;
    /**
     * The Texture Frame this Game Object is using to render with.
     *
     * @name Phaser.GameObjects.Components.Texture#frame
     * @type {Phaser.Textures.Frame}
     * @since 3.0.0
     */
    public var frame:phaser.textures.Frame;
    /**
     * Sets the texture and frame this Game Object will use to render with.
     *
     * Textures are referenced by their string-based keys, as stored in the Texture Manager.
     *
     * @method Phaser.GameObjects.Components.Texture#setTexture
     * @since 3.0.0
     *
     * @param {(string|Phaser.Textures.Texture)} key - The key of the texture to be used, as stored in the Texture Manager, or a Texture instance.
     * @param {(string|integer)} [frame] - The name or index of the frame within the Texture.
     *
     * @return {this} This Game Object instance.
     */
    public function setTexture(key:Dynamic, ?frame:Dynamic):Dynamic;
    /**
     * Sets the frame this Game Object will use to render with.
     *
     * The Frame has to belong to the current Texture being used.
     *
     * It can be either a string or an index.
     *
     * Calling `setFrame` will modify the `width` and `height` properties of your Game Object.
     * It will also change the `origin` if the Frame has a custom pivot point, as exported from packages like Texture Packer.
     *
     * @method Phaser.GameObjects.Components.Texture#setFrame
     * @since 3.0.0
     *
     * @param {(string|integer)} frame - The name or index of the frame within the Texture.
     * @param {boolean} [updateSize=true] - Should this call adjust the size of the Game Object?
     * @param {boolean} [updateOrigin=true] - Should this call adjust the origin of the Game Object?
     *
     * @return {this} This Game Object instance.
     */
    public function setFrame(frame:Dynamic, ?updateSize:Bool, ?updateOrigin:Bool):Dynamic;
    /**
     * The x position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#x
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#y
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The z position of this Game Object.
     *
     * Note: The z position does not control the rendering order of 2D Game Objects. Use
     * {@link Phaser.GameObjects.Components.Depth#depth} instead.
     *
     * @name Phaser.GameObjects.Components.Transform#z
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var z:Float;
    /**
     * The w position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#w
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var w:Float;
    /**
     * This is a special setter that allows you to set both the horizontal and vertical scale of this Game Object
     * to the same value, at the same time. When reading this value the result returned is `(scaleX + scaleY) / 2`.
     *
     * Use of this property implies you wish the horizontal and vertical scales to be equal to each other. If this
     * isn't the case, use the `scaleX` or `scaleY` properties instead.
     *
     * @name Phaser.GameObjects.Components.Transform#scale
     * @type {number}
     * @default 1
     * @since 3.18.0
     */
    public var scale:Float;
    /**
     * The horizontal scale of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#scaleX
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scaleX:Float;
    /**
     * The vertical scale of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#scaleY
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scaleY:Float;
    /**
     * The angle of this Game Object as expressed in degrees.
     *
     * Phaser uses a right-hand clockwise rotation system, where 0 is right, 90 is down, 180/-180 is left
     * and -90 is up.
     *
     * If you prefer to work in radians, see the `rotation` property instead.
     *
     * @name Phaser.GameObjects.Components.Transform#angle
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var angle:Int;
    /**
     * The angle of this Game Object in radians.
     *
     * Phaser uses a right-hand clockwise rotation system, where 0 is right, PI/2 is down, +-PI is left
     * and -PI/2 is up.
     *
     * If you prefer to work in degrees, see the `angle` property instead.
     *
     * @name Phaser.GameObjects.Components.Transform#rotation
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var rotation:Float;
    /**
     * Sets the position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setPosition
     * @since 3.0.0
     *
     * @param {number} [x=0] - The x position of this Game Object.
     * @param {number} [y=x] - The y position of this Game Object. If not set it will use the `x` value.
     * @param {number} [z=0] - The z position of this Game Object.
     * @param {number} [w=0] - The w position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setPosition(?x:Float, ?y:Float, ?z:Float, ?w:Float):Dynamic;
    /**
     * Sets the position of this Game Object to be a random position within the confines of
     * the given area.
     *
     * If no area is specified a random position between 0 x 0 and the game width x height is used instead.
     *
     * The position does not factor in the size of this Game Object, meaning that only the origin is
     * guaranteed to be within the area.
     *
     * @method Phaser.GameObjects.Components.Transform#setRandomPosition
     * @since 3.8.0
     *
     * @param {number} [x=0] - The x position of the top-left of the random area.
     * @param {number} [y=0] - The y position of the top-left of the random area.
     * @param {number} [width] - The width of the random area.
     * @param {number} [height] - The height of the random area.
     *
     * @return {this} This Game Object instance.
     */
    public function setRandomPosition(?x:Float, ?y:Float, ?width:Float, ?height:Float):Dynamic;
    /**
     * Sets the rotation of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setRotation
     * @since 3.0.0
     *
     * @param {number} [radians=0] - The rotation of this Game Object, in radians.
     *
     * @return {this} This Game Object instance.
     */
    public function setRotation(?radians:Float):Dynamic;
    /**
     * Sets the angle of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setAngle
     * @since 3.0.0
     *
     * @param {number} [degrees=0] - The rotation of this Game Object, in degrees.
     *
     * @return {this} This Game Object instance.
     */
    public function setAngle(?degrees:Float):Dynamic;
    /**
     * Sets the scale of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setScale
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scale of this Game Object.
     * @param {number} [y=x] - The vertical scale of this Game Object. If not set it will use the `x` value.
     *
     * @return {this} This Game Object instance.
     */
    public function setScale(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the x position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setX
     * @since 3.0.0
     *
     * @param {number} [value=0] - The x position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setX(?value:Float):Dynamic;
    /**
     * Sets the y position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setY
     * @since 3.0.0
     *
     * @param {number} [value=0] - The y position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setY(?value:Float):Dynamic;
    /**
     * Sets the z position of this Game Object.
     *
     * Note: The z position does not control the rendering order of 2D Game Objects. Use
     * {@link Phaser.GameObjects.Components.Depth#setDepth} instead.
     *
     * @method Phaser.GameObjects.Components.Transform#setZ
     * @since 3.0.0
     *
     * @param {number} [value=0] - The z position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setZ(?value:Float):Dynamic;
    /**
     * Sets the w position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setW
     * @since 3.0.0
     *
     * @param {number} [value=0] - The w position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setW(?value:Float):Dynamic;
    /**
     * Gets the local transform matrix for this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#getLocalTransformMatrix
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.Components.TransformMatrix} [tempMatrix] - The matrix to populate with the values from this Game Object.
     *
     * @return {Phaser.GameObjects.Components.TransformMatrix} The populated Transform Matrix.
     */
    public function getLocalTransformMatrix(?tempMatrix:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    /**
     * Gets the world transform matrix for this Game Object, factoring in any parent Containers.
     *
     * @method Phaser.GameObjects.Components.Transform#getWorldTransformMatrix
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.Components.TransformMatrix} [tempMatrix] - The matrix to populate with the values from this Game Object.
     * @param {Phaser.GameObjects.Components.TransformMatrix} [parentMatrix] - A temporary matrix to hold parent values during the calculations.
     *
     * @return {Phaser.GameObjects.Components.TransformMatrix} The populated Transform Matrix.
     */
    public function getWorldTransformMatrix(?tempMatrix:phaser.gameobjects.components.TransformMatrix, ?parentMatrix:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    /**
     * Gets the sum total rotation of all of this Game Objects parent Containers.
     *
     * The returned value is in radians and will be zero if this Game Object has no parent container.
     *
     * @method Phaser.GameObjects.Components.Transform#getParentRotation
     * @since 3.18.0
     *
     * @return {number} The sum total rotation, in radians, of all parent containers of this Game Object.
     */
    public function getParentRotation():Float;
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
    /**
     * The horizontal scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @name Phaser.GameObjects.Components.ScrollFactor#scrollFactorX
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scrollFactorX:Float;
    /**
     * The vertical scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @name Phaser.GameObjects.Components.ScrollFactor#scrollFactorY
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scrollFactorY:Float;
    /**
     * Sets the scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @method Phaser.GameObjects.Components.ScrollFactor#setScrollFactor
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scroll factor of this Game Object.
     * @param {number} [y=x] - The vertical scroll factor of this Game Object. If not set it will use the `x` value.
     *
     * @return {this} This Game Object instance.
     */
    public function setScrollFactor(x:Float, ?y:Float):Dynamic;
}
