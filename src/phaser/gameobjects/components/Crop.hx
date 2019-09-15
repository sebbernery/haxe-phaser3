package phaser.gameobjects.components;

/**
 * Provides methods used for getting and setting the texture of a Game Object.
 *
 * @namespace Phaser.GameObjects.Components.Crop
 * @since 3.12.0
 */
@:native("Phaser.GameObjects.Components.Crop")
extern class Crop {
    public function new();
    /**
     * The Texture this Game Object is using to render with.
     *
     * @name Phaser.GameObjects.Components.Crop#texture
     * @type {Phaser.Textures.Texture|Phaser.Textures.CanvasTexture}
     * @since 3.0.0
     */
    public var texture:Dynamic;
    /**
     * The Texture Frame this Game Object is using to render with.
     *
     * @name Phaser.GameObjects.Components.Crop#frame
     * @type {Phaser.Textures.Frame}
     * @since 3.0.0
     */
    public var frame:phaser.textures.Frame;
    /**
     * A boolean flag indicating if this Game Object is being cropped or not.
     * You can toggle this at any time after `setCrop` has been called, to turn cropping on or off.
     * Equally, calling `setCrop` with no arguments will reset the crop and disable it.
     *
     * @name Phaser.GameObjects.Components.Crop#isCropped
     * @type {boolean}
     * @since 3.11.0
     */
    public var isCropped:Bool;
    /**
     * Applies a crop to a texture based Game Object, such as a Sprite or Image.
     *
     * The crop is a rectangle that limits the area of the texture frame that is visible during rendering.
     *
     * Cropping a Game Object does not change its size, dimensions, physics body or hit area, it just
     * changes what is shown when rendered.
     *
     * The crop coordinates are relative to the texture frame, not the Game Object, meaning 0 x 0 is the top-left.
     *
     * Therefore, if you had a Game Object that had an 800x600 sized texture, and you wanted to show only the left
     * half of it, you could call `setCrop(0, 0, 400, 600)`.
     *
     * It is also scaled to match the Game Object scale automatically. Therefore a crop rect of 100x50 would crop
     * an area of 200x100 when applied to a Game Object that had a scale factor of 2.
     *
     * You can either pass in numeric values directly, or you can provide a single Rectangle object as the first argument.
     *
     * Call this method with no arguments at all to reset the crop, or toggle the property `isCropped` to `false`.
     *
     * You should do this if the crop rectangle becomes the same size as the frame itself, as it will allow
     * the renderer to skip several internal calculations.
     *
     * @method Phaser.GameObjects.Components.Crop#setCrop
     * @since 3.11.0
     *
     * @param {(number|Phaser.Geom.Rectangle)} [x] - The x coordinate to start the crop from. Or a Phaser.Geom.Rectangle object, in which case the rest of the arguments are ignored.
     * @param {number} [y] - The y coordinate to start the crop from.
     * @param {number} [width] - The width of the crop rectangle in pixels.
     * @param {number} [height] - The height of the crop rectangle in pixels.
     *
     * @return {this} This Game Object instance.
     */
    public function setCrop(?x:Dynamic, ?y:Float, ?width:Float, ?height:Float):Dynamic;
}
