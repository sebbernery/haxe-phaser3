package phaser.tilemaps;

/**
 * @classdesc
 * A Tileset is a combination of an image containing the tiles and a container for data about
 * each tile.
 *
 * @class Tileset
 * @memberof Phaser.Tilemaps
 * @constructor
 * @since 3.0.0
 *
 * @param {string} name - The name of the tileset in the map data.
 * @param {integer} firstgid - The first tile index this tileset contains.
 * @param {integer} [tileWidth=32] - Width of each tile (in pixels).
 * @param {integer} [tileHeight=32] - Height of each tile (in pixels).
 * @param {integer} [tileMargin=0] - The margin around all tiles in the sheet (in pixels).
 * @param {integer} [tileSpacing=0] - The spacing between each tile in the sheet (in pixels).
 * @param {object} [tileProperties={}] - Custom properties defined per tile in the Tileset.
 * These typically are custom properties created in Tiled when editing a tileset.
 * @param {object} [tileData={}] - Data stored per tile. These typically are created in Tiled
 * when editing a tileset, e.g. from Tiled's tile collision editor or terrain editor.
 */
@:native("Phaser.Tilemaps.Tileset")
extern class Tileset {
    public function new(name:String, firstgid:Int, ?tileWidth:Int, ?tileHeight:Int, ?tileMargin:Int, ?tileSpacing:Int, ?tileProperties:Dynamic, ?tileData:Dynamic);
    /**
     * The name of the Tileset.
     *
     * @name Phaser.Tilemaps.Tileset#name
     * @type {string}
     * @since 3.0.0
     */
    public var name:String;
    /**
     * The starting index of the first tile index this Tileset contains.
     *
     * @name Phaser.Tilemaps.Tileset#firstgid
     * @type {integer}
     * @since 3.0.0
     */
    public var firstgid:Int;
    /**
     * The width of each tile (in pixels). Use setTileSize to change.
     *
     * @name Phaser.Tilemaps.Tileset#tileWidth
     * @type {integer}
     * @readonly
     * @since 3.0.0
     */
    public var tileWidth:Int;
    /**
     * The height of each tile (in pixels). Use setTileSize to change.
     *
     * @name Phaser.Tilemaps.Tileset#tileHeight
     * @type {integer}
     * @readonly
     * @since 3.0.0
     */
    public var tileHeight:Int;
    /**
     * The margin around the tiles in the sheet (in pixels). Use `setSpacing` to change.
     *
     * @name Phaser.Tilemaps.Tileset#tileMargin
     * @type {integer}
     * @readonly
     * @since 3.0.0
     */
    public var tileMargin:Int;
    /**
     * The spacing between each the tile in the sheet (in pixels). Use `setSpacing` to change.
     *
     * @name Phaser.Tilemaps.Tileset#tileSpacing
     * @type {integer}
     * @readonly
     * @since 3.0.0
     */
    public var tileSpacing:Int;
    /**
     * Tileset-specific properties per tile that are typically defined in the Tiled editor in the
     * Tileset editor.
     *
     * @name Phaser.Tilemaps.Tileset#tileProperties
     * @type {object}
     * @since 3.0.0
     */
    public var tileProperties:Dynamic;
    /**
     * Tileset-specific data per tile that are typically defined in the Tiled editor, e.g. within
     * the Tileset collision editor. This is where collision objects and terrain are stored.
     *
     * @name Phaser.Tilemaps.Tileset#tileData
     * @type {object}
     * @since 3.0.0
     */
    public var tileData:Dynamic;
    /**
     * The cached image that contains the individual tiles. Use setImage to set.
     *
     * @name Phaser.Tilemaps.Tileset#image
     * @type {?Phaser.Textures.Texture}
     * @readonly
     * @since 3.0.0
     */
    public var image:phaser.textures.Texture;
    /**
     * The gl texture used by the WebGL renderer.
     *
     * @name Phaser.Tilemaps.Tileset#glTexture
     * @type {?WebGLTexture}
     * @readonly
     * @since 3.11.0
     */
    public var glTexture:js.html.webgl.Texture;
    /**
     * The number of tile rows in the the tileset.
     *
     * @name Phaser.Tilemaps.Tileset#rows
     * @type {integer}
     * @readonly
     * @since 3.0.0
     */
    public var rows:Int;
    /**
     * The number of tile columns in the tileset.
     *
     * @name Phaser.Tilemaps.Tileset#columns
     * @type {integer}
     * @readonly
     * @since 3.0.0
     */
    public var columns:Int;
    /**
     * The total number of tiles in the tileset.
     *
     * @name Phaser.Tilemaps.Tileset#total
     * @type {integer}
     * @readonly
     * @since 3.0.0
     */
    public var total:Int;
    /**
     * The look-up table to specific tile image texture coordinates (UV in pixels). Each element
     * contains the coordinates for a tile in an object of the form {x, y}.
     *
     * @name Phaser.Tilemaps.Tileset#texCoordinates
     * @type {object[]}
     * @readonly
     * @since 3.0.0
     */
    public var texCoordinates:Array<Dynamic>;
    /**
     * Get a tiles properties that are stored in the Tileset. Returns null if tile index is not
     * contained in this Tileset. This is typically defined in Tiled under the Tileset editor.
     *
     * @method Phaser.Tilemaps.Tileset#getTileProperties
     * @since 3.0.0
     *
     * @param {integer} tileIndex - The unique id of the tile across all tilesets in the map.
     *
     * @return {?(object|undefined)}
     */
    public function getTileProperties(tileIndex:Int):Dynamic;
    /**
     * Get a tile's data that is stored in the Tileset. Returns null if tile index is not contained
     * in this Tileset. This is typically defined in Tiled and will contain both Tileset collision
     * info and terrain mapping.
     *
     * @method Phaser.Tilemaps.Tileset#getTileData
     * @since 3.0.0
     *
     * @param {integer} tileIndex - The unique id of the tile across all tilesets in the map.
     *
     * @return {?object|undefined}
     */
    public function getTileData(tileIndex:Int):Dynamic;
    /**
     * Get a tile's collision group that is stored in the Tileset. Returns null if tile index is not
     * contained in this Tileset. This is typically defined within Tiled's tileset collision editor.
     *
     * @method Phaser.Tilemaps.Tileset#getTileCollisionGroup
     * @since 3.0.0
     *
     * @param {integer} tileIndex - The unique id of the tile across all tilesets in the map.
     *
     * @return {?object}
     */
    public function getTileCollisionGroup(tileIndex:Int):Dynamic;
    /**
     * Returns true if and only if this Tileset contains the given tile index.
     *
     * @method Phaser.Tilemaps.Tileset#containsTileIndex
     * @since 3.0.0
     *
     * @param {integer} tileIndex - The unique id of the tile across all tilesets in the map.
     *
     * @return {boolean}
     */
    public function containsTileIndex(tileIndex:Int):Bool;
    /**
     * Returns the texture coordinates (UV in pixels) in the Tileset image for the given tile index.
     * Returns null if tile index is not contained in this Tileset.
     *
     * @method Phaser.Tilemaps.Tileset#getTileTextureCoordinates
     * @since 3.0.0
     *
     * @param {integer} tileIndex - The unique id of the tile across all tilesets in the map.
     *
     * @return {?object} Object in the form { x, y } representing the top-left UV coordinate
     * within the Tileset image.
     */
    public function getTileTextureCoordinates(tileIndex:Int):Dynamic;
    /**
     * Sets the image associated with this Tileset and updates the tile data (rows, columns, etc.).
     *
     * @method Phaser.Tilemaps.Tileset#setImage
     * @since 3.0.0
     *
     * @param {Phaser.Textures.Texture} texture - The image that contains the tiles.
     *
     * @return {Phaser.Tilemaps.Tileset} This Tileset object.
     */
    public function setImage(texture:phaser.textures.Texture):phaser.tilemaps.Tileset;
    /**
     * Sets the tile width & height and updates the tile data (rows, columns, etc.).
     *
     * @method Phaser.Tilemaps.Tileset#setTileSize
     * @since 3.0.0
     *
     * @param {integer} [tileWidth] - The width of a tile in pixels.
     * @param {integer} [tileHeight] - The height of a tile in pixels.
     *
     * @return {Phaser.Tilemaps.Tileset} This Tileset object.
     */
    public function setTileSize(?tileWidth:Int, ?tileHeight:Int):phaser.tilemaps.Tileset;
    /**
     * Sets the tile margin & spacing and updates the tile data (rows, columns, etc.).
     *
     * @method Phaser.Tilemaps.Tileset#setSpacing
     * @since 3.0.0
     *
     * @param {integer} [margin] - The margin around the tiles in the sheet (in pixels).
     * @param {integer} [spacing] - The spacing between the tiles in the sheet (in pixels).
     *
     * @return {Phaser.Tilemaps.Tileset} This Tileset object.
     */
    public function setSpacing(?margin:Int, ?spacing:Int):phaser.tilemaps.Tileset;
    /**
     * Updates tile texture coordinates and tileset data.
     *
     * @method Phaser.Tilemaps.Tileset#updateTileData
     * @since 3.0.0
     *
     * @param {integer} imageWidth - The (expected) width of the image to slice.
     * @param {integer} imageHeight - The (expected) height of the image to slice.
     *
     * @return {Phaser.Tilemaps.Tileset} This Tileset object.
     */
    public function updateTileData(imageWidth:Int, imageHeight:Int):phaser.tilemaps.Tileset;
}
