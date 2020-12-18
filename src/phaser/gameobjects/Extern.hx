package phaser.gameobjects;

/**
 * @classdesc
 * An Extern Game Object is a special type of Game Object that allows you to pass
 * rendering off to a 3rd party.
 *
 * When you create an Extern and place it in the display list of a Scene, the renderer will
 * process the list as usual. When it finds an Extern it will flush the current batch,
 * clear down the pipeline and prepare a transform matrix which your render function can
 * take advantage of, if required.
 *
 * The WebGL context is then left is a 'clean' state, ready for you to bind your own shaders,
 * or draw to it, whatever you wish to do. Once you've finished, you should free-up any
 * of your resources. The Extern will then rebind the Phaser pipeline and carry on
 * rendering the display list.
 *
 * Although this object has lots of properties such as Alpha, Blend Mode and Tint, none of
 * them are used during rendering unless you take advantage of them in your own render code.
 *
 * @class Extern
 * @extends Phaser.GameObjects.GameObject
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.16.0
 *
 * @extends Phaser.GameObjects.Components.Alpha
 * @extends Phaser.GameObjects.Components.BlendMode
 * @extends Phaser.GameObjects.Components.Depth
 * @extends Phaser.GameObjects.Components.Flip
 * @extends Phaser.GameObjects.Components.Origin
 * @extends Phaser.GameObjects.Components.ScrollFactor
 * @extends Phaser.GameObjects.Components.Size
 * @extends Phaser.GameObjects.Components.Texture
 * @extends Phaser.GameObjects.Components.Tint
 * @extends Phaser.GameObjects.Components.Transform
 * @extends Phaser.GameObjects.Components.Visible
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 */
@:native("Phaser.GameObjects.Extern")
extern class Extern extends phaser.gameobjects.GameObject {
    public function new(scene:phaser.Scene);
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
     * The horizontal origin of this Game Object.
     * The origin maps the relationship between the size and position of the Game Object.
     * The default value is 0.5, meaning all Game Objects are positioned based on their center.
     * Setting the value to 0 means the position now relates to the left of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Origin#originX
     * @type {number}
     * @default 0.5
     * @since 3.0.0
     */
    public var originX:Float;
    /**
     * The vertical origin of this Game Object.
     * The origin maps the relationship between the size and position of the Game Object.
     * The default value is 0.5, meaning all Game Objects are positioned based on their center.
     * Setting the value to 0 means the position now relates to the top of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Origin#originY
     * @type {number}
     * @default 0.5
     * @since 3.0.0
     */
    public var originY:Float;
    /**
     * The horizontal display origin of this Game Object.
     * The origin is a normalized value between 0 and 1.
     * The displayOrigin is a pixel value, based on the size of the Game Object combined with the origin.
     *
     * @name Phaser.GameObjects.Components.Origin#displayOriginX
     * @type {number}
     * @since 3.0.0
     */
    public var displayOriginX:Float;
    /**
     * The vertical display origin of this Game Object.
     * The origin is a normalized value between 0 and 1.
     * The displayOrigin is a pixel value, based on the size of the Game Object combined with the origin.
     *
     * @name Phaser.GameObjects.Components.Origin#displayOriginY
     * @type {number}
     * @since 3.0.0
     */
    public var displayOriginY:Float;
    /**
     * Sets the origin of this Game Object.
     *
     * The values are given in the range 0 to 1.
     *
     * @method Phaser.GameObjects.Components.Origin#setOrigin
     * @since 3.0.0
     *
     * @param {number} [x=0.5] - The horizontal origin value.
     * @param {number} [y=x] - The vertical origin value. If not defined it will be set to the value of `x`.
     *
     * @return {this} This Game Object instance.
     */
    public function setOrigin(?x:Float, ?y:Float):Dynamic;
    /**
     * Sets the origin of this Game Object based on the Pivot values in its Frame.
     *
     * @method Phaser.GameObjects.Components.Origin#setOriginFromFrame
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function setOriginFromFrame():Dynamic;
    /**
     * Sets the display origin of this Game Object.
     * The difference between this and setting the origin is that you can use pixel values for setting the display origin.
     *
     * @method Phaser.GameObjects.Components.Origin#setDisplayOrigin
     * @since 3.0.0
     *
     * @param {number} [x=0] - The horizontal display origin value.
     * @param {number} [y=x] - The vertical display origin value. If not defined it will be set to the value of `x`.
     *
     * @return {this} This Game Object instance.
     */
    public function setDisplayOrigin(?x:Float, ?y:Float):Dynamic;
    /**
     * Updates the Display Origin cached values internally stored on this Game Object.
     * You don't usually call this directly, but it is exposed for edge-cases where you may.
     *
     * @method Phaser.GameObjects.Components.Origin#updateDisplayOrigin
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function updateDisplayOrigin():Dynamic;
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
     * Fill or additive?
     *
     * @name Phaser.GameObjects.Components.Tint#tintFill
     * @type {boolean}
     * @default false
     * @since 3.11.0
     */
    public var tintFill:Bool;
    /**
     * The tint value being applied to the top-left of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Tint#tintTopLeft
     * @type {integer}
     * @webglOnly
     * @since 3.0.0
     */
    public var tintTopLeft:Int;
    /**
     * The tint value being applied to the top-right of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Tint#tintTopRight
     * @type {integer}
     * @webglOnly
     * @since 3.0.0
     */
    public var tintTopRight:Int;
    /**
     * The tint value being applied to the bottom-left of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Tint#tintBottomLeft
     * @type {integer}
     * @webglOnly
     * @since 3.0.0
     */
    public var tintBottomLeft:Int;
    /**
     * The tint value being applied to the bottom-right of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Tint#tintBottomRight
     * @type {integer}
     * @webglOnly
     * @since 3.0.0
     */
    public var tintBottomRight:Int;
    /**
     * The tint value being applied to the whole of the Game Object.
     * This property is a setter-only. Use the properties `tintTopLeft` etc to read the current tint value.
     *
     * @name Phaser.GameObjects.Components.Tint#tint
     * @type {integer}
     * @webglOnly
     * @since 3.0.0
     */
    public var tint:Int;
    /**
     * Does this Game Object have a tint applied to it or not?
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
     * @param {integer} [topLeft=0xffffff] - The tint being applied to the top-left of the Game Object. If no other values are given this value is applied evenly, tinting the whole Game Object.
     * @param {integer} [topRight] - The tint being applied to the top-right of the Game Object.
     * @param {integer} [bottomLeft] - The tint being applied to the bottom-left of the Game Object.
     * @param {integer} [bottomRight] - The tint being applied to the bottom-right of the Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setTint(?topLeft:Int, ?topRight:Int, ?bottomLeft:Int, ?bottomRight:Int):Dynamic;
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
     * @param {integer} [topLeft=0xffffff] - The tint being applied to the top-left of the Game Object. If not other values are given this value is applied evenly, tinting the whole Game Object.
     * @param {integer} [topRight] - The tint being applied to the top-right of the Game Object.
     * @param {integer} [bottomLeft] - The tint being applied to the bottom-left of the Game Object.
     * @param {integer} [bottomRight] - The tint being applied to the bottom-right of the Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setTintFill(?topLeft:Int, ?topRight:Int, ?bottomLeft:Int, ?bottomRight:Int):Dynamic;
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
}
