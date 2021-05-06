package phaser.textures;

/**
 * @classdesc
 * A Frame is a section of a Texture.
 *
 * @class Frame
 * @memberof Phaser.Textures
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Textures.Texture} texture - The Texture this Frame is a part of.
 * @param {(number|string)} name - The name of this Frame. The name is unique within the Texture.
 * @param {number} sourceIndex - The index of the TextureSource that this Frame is a part of.
 * @param {number} x - The x coordinate of the top-left of this Frame.
 * @param {number} y - The y coordinate of the top-left of this Frame.
 * @param {number} width - The width of this Frame.
 * @param {number} height - The height of this Frame.
 */
@:native("Phaser.Textures.Frame")
extern class Frame {
    public function new(texture:phaser.textures.Texture, name:Dynamic, sourceIndex:Float, x:Float, y:Float, width:Float, height:Float);
    /**
     * The Texture this Frame is a part of.
     *
     * @name Phaser.Textures.Frame#texture
     * @type {Phaser.Textures.Texture}
     * @since 3.0.0
     */
    public var texture:phaser.textures.Texture;
    /**
     * The name of this Frame.
     * The name is unique within the Texture.
     *
     * @name Phaser.Textures.Frame#name
     * @type {string}
     * @since 3.0.0
     */
    public var name:String;
    /**
     * The TextureSource this Frame is part of.
     *
     * @name Phaser.Textures.Frame#source
     * @type {Phaser.Textures.TextureSource}
     * @since 3.0.0
     */
    public var source:phaser.textures.TextureSource;
    /**
     * The index of the TextureSource in the Texture sources array.
     *
     * @name Phaser.Textures.Frame#sourceIndex
     * @type {number}
     * @since 3.0.0
     */
    public var sourceIndex:Float;
    /**
     * A reference to the Texture Source WebGL Texture that this Frame is using.
     *
     * @name Phaser.Textures.Frame#glTexture
     * @type {?WebGLTexture}
     * @default null
     * @since 3.11.0
     */
    public var glTexture:js.html.webgl.Texture;
    /**
     * X position within the source image to cut from.
     *
     * @name Phaser.Textures.Frame#cutX
     * @type {number}
     * @since 3.0.0
     */
    public var cutX:Float;
    /**
     * Y position within the source image to cut from.
     *
     * @name Phaser.Textures.Frame#cutY
     * @type {number}
     * @since 3.0.0
     */
    public var cutY:Float;
    /**
     * The width of the area in the source image to cut.
     *
     * @name Phaser.Textures.Frame#cutWidth
     * @type {number}
     * @since 3.0.0
     */
    public var cutWidth:Float;
    /**
     * The height of the area in the source image to cut.
     *
     * @name Phaser.Textures.Frame#cutHeight
     * @type {number}
     * @since 3.0.0
     */
    public var cutHeight:Float;
    /**
     * The X rendering offset of this Frame, taking trim into account.
     *
     * @name Phaser.Textures.Frame#x
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The Y rendering offset of this Frame, taking trim into account.
     *
     * @name Phaser.Textures.Frame#y
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The rendering width of this Frame, taking trim into account.
     *
     * @name Phaser.Textures.Frame#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The rendering height of this Frame, taking trim into account.
     *
     * @name Phaser.Textures.Frame#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * Half the width, floored.
     * Precalculated for the renderer.
     *
     * @name Phaser.Textures.Frame#halfWidth
     * @type {number}
     * @since 3.0.0
     */
    public var halfWidth:Float;
    /**
     * Half the height, floored.
     * Precalculated for the renderer.
     *
     * @name Phaser.Textures.Frame#halfHeight
     * @type {number}
     * @since 3.0.0
     */
    public var halfHeight:Float;
    /**
     * The x center of this frame, floored.
     *
     * @name Phaser.Textures.Frame#centerX
     * @type {number}
     * @since 3.0.0
     */
    public var centerX:Float;
    /**
     * The y center of this frame, floored.
     *
     * @name Phaser.Textures.Frame#centerY
     * @type {number}
     * @since 3.0.0
     */
    public var centerY:Float;
    /**
     * The horizontal pivot point of this Frame.
     *
     * @name Phaser.Textures.Frame#pivotX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var pivotX:Float;
    /**
     * The vertical pivot point of this Frame.
     *
     * @name Phaser.Textures.Frame#pivotY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var pivotY:Float;
    /**
     * Does this Frame have a custom pivot point?
     *
     * @name Phaser.Textures.Frame#customPivot
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var customPivot:Bool;
    /**
     * **CURRENTLY UNSUPPORTED**
     *
     * Is this frame is rotated or not in the Texture?
     * Rotation allows you to use rotated frames in texture atlas packing.
     * It has nothing to do with Sprite rotation.
     *
     * @name Phaser.Textures.Frame#rotated
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var rotated:Bool;
    /**
     * Over-rides the Renderer setting.
     * -1 = use Renderer Setting
     * 0 = No rounding
     * 1 = Round
     *
     * @name Phaser.Textures.Frame#autoRound
     * @type {number}
     * @default -1
     * @since 3.0.0
     */
    public var autoRound:Float;
    /**
     * Any Frame specific custom data can be stored here.
     *
     * @name Phaser.Textures.Frame#customData
     * @type {object}
     * @since 3.0.0
     */
    public var customData:Dynamic;
    /**
     * WebGL UV u0 value.
     *
     * @name Phaser.Textures.Frame#u0
     * @type {number}
     * @default 0
     * @since 3.11.0
     */
    public var u0:Float;
    /**
     * WebGL UV v0 value.
     *
     * @name Phaser.Textures.Frame#v0
     * @type {number}
     * @default 0
     * @since 3.11.0
     */
    public var v0:Float;
    /**
     * WebGL UV u1 value.
     *
     * @name Phaser.Textures.Frame#u1
     * @type {number}
     * @default 0
     * @since 3.11.0
     */
    public var u1:Float;
    /**
     * WebGL UV v1 value.
     *
     * @name Phaser.Textures.Frame#v1
     * @type {number}
     * @default 0
     * @since 3.11.0
     */
    public var v1:Float;
    /**
     * The width of the Frame in its un-trimmed, un-padded state, as prepared in the art package,
     * before being packed.
     *
     * @name Phaser.Textures.Frame#realWidth
     * @type {number}
     * @readonly
     * @since 3.0.0
     */
    public var realWidth:Float;
    /**
     * The height of the Frame in its un-trimmed, un-padded state, as prepared in the art package,
     * before being packed.
     *
     * @name Phaser.Textures.Frame#realHeight
     * @type {number}
     * @readonly
     * @since 3.0.0
     */
    public var realHeight:Float;
    /**
     * The radius of the Frame (derived from sqrt(w * w + h * h) / 2)
     *
     * @name Phaser.Textures.Frame#radius
     * @type {number}
     * @readonly
     * @since 3.0.0
     */
    public var radius:Float;
    /**
     * Is the Frame trimmed or not?
     *
     * @name Phaser.Textures.Frame#trimmed
     * @type {boolean}
     * @readonly
     * @since 3.0.0
     */
    public var trimmed:Bool;
    /**
     * The Canvas drawImage data object.
     *
     * @name Phaser.Textures.Frame#canvasData
     * @type {object}
     * @readonly
     * @since 3.0.0
     */
    public var canvasData:Dynamic;
    /**
     * Sets the width, height, x and y of this Frame.
     *
     * This is called automatically by the constructor
     * and should rarely be changed on-the-fly.
     *
     * @method Phaser.Textures.Frame#setSize
     * @since 3.7.0
     *
     * @param {number} width - The width of the frame before being trimmed.
     * @param {number} height - The height of the frame before being trimmed.
     * @param {number} [x=0] - The x coordinate of the top-left of this Frame.
     * @param {number} [y=0] - The y coordinate of the top-left of this Frame.
     *
     * @return {Phaser.Textures.Frame} This Frame object.
     */
    public function setSize(width:Float, height:Float, ?x:Float, ?y:Float):phaser.textures.Frame;
    /**
     * If the frame was trimmed when added to the Texture Atlas, this records the trim and source data.
     *
     * @method Phaser.Textures.Frame#setTrim
     * @since 3.0.0
     *
     * @param {number} actualWidth - The width of the frame before being trimmed.
     * @param {number} actualHeight - The height of the frame before being trimmed.
     * @param {number} destX - The destination X position of the trimmed frame for display.
     * @param {number} destY - The destination Y position of the trimmed frame for display.
     * @param {number} destWidth - The destination width of the trimmed frame for display.
     * @param {number} destHeight - The destination height of the trimmed frame for display.
     *
     * @return {Phaser.Textures.Frame} This Frame object.
     */
    public function setTrim(actualWidth:Float, actualHeight:Float, destX:Float, destY:Float, destWidth:Float, destHeight:Float):phaser.textures.Frame;
    /**
     * Takes a crop data object and, based on the rectangular region given, calculates the
     * required UV coordinates in order to crop this Frame for WebGL and Canvas rendering.
     *
     * This is called directly by the Game Object Texture Components `setCrop` method.
     * Please use that method to crop a Game Object.
     *
     * @method Phaser.Textures.Frame#setCropUVs
     * @since 3.11.0
     *
     * @param {object} crop - The crop data object. This is the `GameObject._crop` property.
     * @param {number} x - The x coordinate to start the crop from. Cannot be negative or exceed the Frame width.
     * @param {number} y - The y coordinate to start the crop from. Cannot be negative or exceed the Frame height.
     * @param {number} width - The width of the crop rectangle. Cannot exceed the Frame width.
     * @param {number} height - The height of the crop rectangle. Cannot exceed the Frame height.
     * @param {boolean} flipX - Does the parent Game Object have flipX set?
     * @param {boolean} flipY - Does the parent Game Object have flipY set?
     *
     * @return {object} The updated crop data object.
     */
    public function setCropUVs(crop:Dynamic, x:Float, y:Float, width:Float, height:Float, flipX:Bool, flipY:Bool):Dynamic;
    /**
     * Takes a crop data object and recalculates the UVs based on the dimensions inside the crop object.
     * Called automatically by `setFrame`.
     *
     * @method Phaser.Textures.Frame#updateCropUVs
     * @since 3.11.0
     *
     * @param {object} crop - The crop data object. This is the `GameObject._crop` property.
     * @param {boolean} flipX - Does the parent Game Object have flipX set?
     * @param {boolean} flipY - Does the parent Game Object have flipY set?
     *
     * @return {object} The updated crop data object.
     */
    public function updateCropUVs(crop:Dynamic, flipX:Bool, flipY:Bool):Dynamic;
    /**
     * Directly sets the canvas and WebGL UV data for this frame.
     *
     * Use this if you need to override the values that are generated automatically
     * when the Frame is created.
     *
     * @method Phaser.Textures.Frame#setUVs
     * @since 3.50.0
     *
     * @param {number} width - Width of this frame for the Canvas data.
     * @param {number} height - Height of this frame for the Canvas data.
     * @param {number} u0 - UV u0 value.
     * @param {number} v0 - UV v0 value.
     * @param {number} u1 - UV u1 value.
     * @param {number} v1 - UV v1 value.
     *
     * @return {Phaser.Textures.Frame} This Frame object.
     */
    public function setUVs(width:Float, height:Float, u0:Float, v0:Float, u1:Float, v1:Float):phaser.textures.Frame;
    /**
     * Updates the internal WebGL UV cache and the drawImage cache.
     *
     * @method Phaser.Textures.Frame#updateUVs
     * @since 3.0.0
     *
     * @return {Phaser.Textures.Frame} This Frame object.
     */
    public function updateUVs():phaser.textures.Frame;
    /**
     * Updates the internal WebGL UV cache.
     *
     * @method Phaser.Textures.Frame#updateUVsInverted
     * @since 3.0.0
     *
     * @return {Phaser.Textures.Frame} This Frame object.
     */
    public function updateUVsInverted():phaser.textures.Frame;
    /**
     * Clones this Frame into a new Frame object.
     *
     * @method Phaser.Textures.Frame#clone
     * @since 3.0.0
     *
     * @return {Phaser.Textures.Frame} A clone of this Frame.
     */
    public function clone():phaser.textures.Frame;
    /**
     * Destroys this Frame by nulling its reference to the parent Texture and and data objects.
     *
     * @method Phaser.Textures.Frame#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
