package phaser.gameobjects.blitter;

/**
 * @classdesc
 * A Bob Game Object.
 *
 * A Bob belongs to a Blitter Game Object. The Blitter is responsible for managing and rendering this object.
 *
 * A Bob has a position, alpha value and a frame from a texture that it uses to render with. You can also toggle
 * the flipped and visible state of the Bob. The Frame the Bob uses to render can be changed dynamically, but it
 * must be a Frame within the Texture used by the parent Blitter.
 *
 * Bob positions are relative to the Blitter parent. So if you move the Blitter parent, all Bob children will
 * have their positions impacted by this change as well.
 *
 * You can manipulate Bob objects directly from your game code, but the creation and destruction of them should be
 * handled via the Blitter parent.
 *
 * @class Bob
 * @memberof Phaser.GameObjects.Blitter
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.GameObjects.Blitter} blitter - The parent Blitter object is responsible for updating this Bob.
 * @param {number} x - The horizontal position of this Game Object in the world, relative to the parent Blitter position.
 * @param {number} y - The vertical position of this Game Object in the world, relative to the parent Blitter position.
 * @param {(string|integer)} frame - The Frame this Bob will render with, as defined in the Texture the parent Blitter is using.
 * @param {boolean} visible - Should the Bob render visible or not to start with?
 */
@:native("Phaser.GameObjects.Blitter.Bob")
extern class Bob {
    public function new(blitter:phaser.gameobjects.Blitter, x:Float, y:Float, frame:Dynamic, visible:Bool);
    /**
     * The Blitter object that this Bob belongs to.
     *
     * @name Phaser.GameObjects.Blitter.Bob#parent
     * @type {Phaser.GameObjects.Blitter}
     * @since 3.0.0
     */
    public var parent:phaser.gameobjects.Blitter;
    /**
     * The x position of this Bob, relative to the x position of the Blitter.
     *
     * @name Phaser.GameObjects.Blitter.Bob#x
     * @type {number}
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y position of this Bob, relative to the y position of the Blitter.
     *
     * @name Phaser.GameObjects.Blitter.Bob#y
     * @type {number}
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The frame that the Bob uses to render with.
     * To change the frame use the `Bob.setFrame` method.
     *
     * @name Phaser.GameObjects.Blitter.Bob#frame
     * @type {Phaser.Textures.Frame}
     * @protected
     * @since 3.0.0
     */
    public var frame:phaser.textures.Frame;
    /**
     * A blank object which can be used to store data related to this Bob in.
     *
     * @name Phaser.GameObjects.Blitter.Bob#data
     * @type {object}
     * @default {}
     * @since 3.0.0
     */
    public var data:Dynamic;
    /**
     * The horizontally flipped state of the Bob.
     * A Bob that is flipped horizontally will render inversed on the horizontal axis.
     * Flipping always takes place from the middle of the texture.
     *
     * @name Phaser.GameObjects.Blitter.Bob#flipX
     * @type {boolean}
     * @since 3.0.0
     */
    public var flipX:Bool;
    /**
     * The vertically flipped state of the Bob.
     * A Bob that is flipped vertically will render inversed on the vertical axis (i.e. upside down)
     * Flipping always takes place from the middle of the texture.
     *
     * @name Phaser.GameObjects.Blitter.Bob#flipY
     * @type {boolean}
     * @since 3.0.0
     */
    public var flipY:Bool;
    /**
     * The visible state of the Bob.
     *
     * An invisible Bob will skip rendering.
     *
     * @name Phaser.GameObjects.Blitter.Bob#visible
     * @type {boolean}
     * @since 3.0.0
     */
    public var visible:Bool;
    /**
     * The alpha value of the Bob, between 0 and 1.
     *
     * A Bob with alpha 0 will skip rendering.
     *
     * @name Phaser.GameObjects.Blitter.Bob#alpha
     * @type {number}
     * @since 3.0.0
     */
    public var alpha:Float;
    /**
     * Changes the Texture Frame being used by this Bob.
     * The frame must be part of the Texture the parent Blitter is using.
     * If no value is given it will use the default frame of the Blitter parent.
     *
     * @method Phaser.GameObjects.Blitter.Bob#setFrame
     * @since 3.0.0
     *
     * @param {(string|integer|Phaser.Textures.Frame)} [frame] - The frame to be used during rendering.
     *
     * @return {Phaser.GameObjects.Blitter.Bob} This Bob Game Object.
     */
    public function setFrame(?frame:Dynamic):phaser.gameobjects.blitter.Bob;
    /**
     * Resets the horizontal and vertical flipped state of this Bob back to their default un-flipped state.
     *
     * @method Phaser.GameObjects.Blitter.Bob#resetFlip
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.Blitter.Bob} This Bob Game Object.
     */
    public function resetFlip():phaser.gameobjects.blitter.Bob;
    /**
     * Resets this Bob.
     *
     * Changes the position to the values given, and optionally changes the frame.
     *
     * Also resets the flipX and flipY values, sets alpha back to 1 and visible to true.
     *
     * @method Phaser.GameObjects.Blitter.Bob#reset
     * @since 3.0.0
     *
     * @param {number} x - The x position of the Bob. Bob coordinate are relative to the position of the Blitter object.
     * @param {number} y - The y position of the Bob. Bob coordinate are relative to the position of the Blitter object.
     * @param {(string|integer|Phaser.Textures.Frame)} [frame] - The Frame the Bob will use. It _must_ be part of the Texture the parent Blitter object is using.
     *
     * @return {Phaser.GameObjects.Blitter.Bob} This Bob Game Object.
     */
    public function reset(x:Float, y:Float, ?frame:Dynamic):phaser.gameobjects.blitter.Bob;
    /**
     * Sets the horizontal flipped state of this Bob.
     *
     * @method Phaser.GameObjects.Blitter.Bob#setFlipX
     * @since 3.0.0
     *
     * @param {boolean} value - The flipped state. `false` for no flip, or `true` to be flipped.
     *
     * @return {Phaser.GameObjects.Blitter.Bob} This Bob Game Object.
     */
    public function setFlipX(value:Bool):phaser.gameobjects.blitter.Bob;
    /**
     * Sets the vertical flipped state of this Bob.
     *
     * @method Phaser.GameObjects.Blitter.Bob#setFlipY
     * @since 3.0.0
     *
     * @param {boolean} value - The flipped state. `false` for no flip, or `true` to be flipped.
     *
     * @return {Phaser.GameObjects.Blitter.Bob} This Bob Game Object.
     */
    public function setFlipY(value:Bool):phaser.gameobjects.blitter.Bob;
    /**
     * Sets the horizontal and vertical flipped state of this Bob.
     *
     * @method Phaser.GameObjects.Blitter.Bob#setFlip
     * @since 3.0.0
     *
     * @param {boolean} x - The horizontal flipped state. `false` for no flip, or `true` to be flipped.
     * @param {boolean} y - The horizontal flipped state. `false` for no flip, or `true` to be flipped.
     *
     * @return {Phaser.GameObjects.Blitter.Bob} This Bob Game Object.
     */
    public function setFlip(x:Bool, y:Bool):phaser.gameobjects.blitter.Bob;
    /**
     * Sets the visibility of this Bob.
     *
     * An invisible Bob will skip rendering.
     *
     * @method Phaser.GameObjects.Blitter.Bob#setVisible
     * @since 3.0.0
     *
     * @param {boolean} value - The visible state of the Game Object.
     *
     * @return {Phaser.GameObjects.Blitter.Bob} This Bob Game Object.
     */
    public function setVisible(value:Bool):phaser.gameobjects.blitter.Bob;
    /**
     * Set the Alpha level of this Bob. The alpha controls the opacity of the Game Object as it renders.
     * Alpha values are provided as a float between 0, fully transparent, and 1, fully opaque.
     *
     * A Bob with alpha 0 will skip rendering.
     *
     * @method Phaser.GameObjects.Blitter.Bob#setAlpha
     * @since 3.0.0
     *
     * @param {number} value - The alpha value used for this Bob. Between 0 and 1.
     *
     * @return {Phaser.GameObjects.Blitter.Bob} This Bob Game Object.
     */
    public function setAlpha(value:Float):phaser.gameobjects.blitter.Bob;
    /**
     * Destroys this Bob instance.
     * Removes itself from the Blitter and clears the parent, frame and data properties.
     *
     * @method Phaser.GameObjects.Blitter.Bob#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
