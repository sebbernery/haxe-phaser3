package phaser.tilemaps;

/**
 * @classdesc
 * An Image Collection is a special Tile Set containing multiple images, with no slicing into each image.
 *
 * Image Collections are normally created automatically when Tiled data is loaded.
 *
 * @class ImageCollection
 * @memberof Phaser.Tilemaps
 * @constructor
 * @since 3.0.0
 *
 * @param {string} name - The name of the image collection in the map data.
 * @param {integer} firstgid - The first image index this image collection contains.
 * @param {integer} [width=32] - Width of widest image (in pixels).
 * @param {integer} [height=32] - Height of tallest image (in pixels).
 * @param {integer} [margin=0] - The margin around all images in the collection (in pixels).
 * @param {integer} [spacing=0] - The spacing between each image in the collection (in pixels).
 * @param {object} [properties={}] - Custom Image Collection properties.
 */
@:native("Phaser.Tilemaps.ImageCollection")
extern class ImageCollection {
    public function new(name:String, firstgid:Int, ?width:Int, ?height:Int, ?margin:Int, ?spacing:Int, ?properties:Dynamic);
    /**
     * The name of the Image Collection.
     *
     * @name Phaser.Tilemaps.ImageCollection#name
     * @type {string}
     * @since 3.0.0
     */
    public var name:String;
    /**
     * The Tiled firstgid value.
     * This is the starting index of the first image index this Image Collection contains.
     *
     * @name Phaser.Tilemaps.ImageCollection#firstgid
     * @type {integer}
     * @since 3.0.0
     */
    public var firstgid:Int;
    /**
     * The width of the widest image (in pixels).
     *
     * @name Phaser.Tilemaps.ImageCollection#imageWidth
     * @type {integer}
     * @readonly
     * @since 3.0.0
     */
    public var imageWidth:Int;
    /**
     * The height of the tallest image (in pixels).
     *
     * @name Phaser.Tilemaps.ImageCollection#imageHeight
     * @type {integer}
     * @readonly
     * @since 3.0.0
     */
    public var imageHeight:Int;
    /**
     * The margin around the images in the collection (in pixels).
     * Use `setSpacing` to change.
     *
     * @name Phaser.Tilemaps.ImageCollection#imageMarge
     * @type {integer}
     * @readonly
     * @since 3.0.0
     */
    public var imageMarge:Int;
    /**
     * The spacing between each image in the collection (in pixels).
     * Use `setSpacing` to change.
     *
     * @name Phaser.Tilemaps.ImageCollection#imageSpacing
     * @type {integer}
     * @readonly
     * @since 3.0.0
     */
    public var imageSpacing:Int;
    /**
     * Image Collection-specific properties that are typically defined in the Tiled editor.
     *
     * @name Phaser.Tilemaps.ImageCollection#properties
     * @type {object}
     * @since 3.0.0
     */
    public var properties:Dynamic;
    /**
     * The cached images that are a part of this collection.
     *
     * @name Phaser.Tilemaps.ImageCollection#images
     * @type {array}
     * @readonly
     * @since 3.0.0
     */
    public var images:Array<Dynamic>;
    /**
     * The total number of images in the image collection.
     *
     * @name Phaser.Tilemaps.ImageCollection#total
     * @type {integer}
     * @readonly
     * @since 3.0.0
     */
    public var total:Int;
    /**
     * Returns true if and only if this image collection contains the given image index.
     *
     * @method Phaser.Tilemaps.ImageCollection#containsImageIndex
     * @since 3.0.0
     *
     * @param {integer} imageIndex - The image index to search for.
     *
     * @return {boolean} True if this Image Collection contains the given index.
     */
    public function containsImageIndex(imageIndex:Int):Bool;
    /**
     * Add an image to this Image Collection.
     *
     * @method Phaser.Tilemaps.ImageCollection#addImage
     * @since 3.0.0
     *
     * @param {integer} gid - The gid of the image in the Image Collection.
     * @param {string} image - The the key of the image in the Image Collection and in the cache.
     *
     * @return {Phaser.Tilemaps.ImageCollection} This ImageCollection object.
     */
    public function addImage(gid:Int, image:String):phaser.tilemaps.ImageCollection;
}
