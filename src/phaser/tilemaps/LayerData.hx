package phaser.tilemaps;

/**
 * @classdesc
 * A class for representing data about about a layer in a map. Maps are parsed from CSV, Tiled,
 * etc. into this format. Tilemap and TilemapLayer objects have a reference
 * to this data and use it to look up and perform operations on tiles.
 *
 * @class LayerData
 * @memberof Phaser.Tilemaps
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Types.Tilemaps.LayerDataConfig} [config] - The Layer Data configuration object.
 */
@:native("Phaser.Tilemaps.LayerData")
extern class LayerData {
    public function new(?config:phaser.types.tilemaps.LayerDataConfig);
    /**
     * The name of the layer, if specified in Tiled.
     *
     * @name Phaser.Tilemaps.LayerData#name
     * @type {string}
     * @since 3.0.0
     */
    public var name:String;
    /**
     * The x offset of where to draw from the top left.
     *
     * @name Phaser.Tilemaps.LayerData#x
     * @type {number}
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y offset of where to draw from the top left.
     *
     * @name Phaser.Tilemaps.LayerData#y
     * @type {number}
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The width of the layer in tiles.
     *
     * @name Phaser.Tilemaps.LayerData#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The height of the layer in tiles.
     *
     * @name Phaser.Tilemaps.LayerData#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The pixel width of the tiles.
     *
     * @name Phaser.Tilemaps.LayerData#tileWidth
     * @type {number}
     * @since 3.0.0
     */
    public var tileWidth:Float;
    /**
     * The pixel height of the tiles.
     *
     * @name Phaser.Tilemaps.LayerData#tileHeight
     * @type {number}
     * @since 3.0.0
     */
    public var tileHeight:Float;
    /**
     * The base tile width.
     *
     * @name Phaser.Tilemaps.LayerData#baseTileWidth
     * @type {number}
     * @since 3.0.0
     */
    public var baseTileWidth:Float;
    /**
     * The base tile height.
     *
     * @name Phaser.Tilemaps.LayerData#baseTileHeight
     * @type {number}
     * @since 3.0.0
     */
    public var baseTileHeight:Float;
    /**
     * The layers orientation, necessary to be able to determine a tiles pixelX and pixelY as well as the layers width and height.
     *
     * @name Phaser.Tilemaps.LayerData#orientation
     * @type {Phaser.Tilemaps.OrientationType}
     * @since 3.50.0
     */
    public var orientation:phaser.tilemaps.OrientationType;
    /**
     * The width in pixels of the entire layer.
     *
     * @name Phaser.Tilemaps.LayerData#widthInPixels
     * @type {number}
     * @since 3.0.0
     */
    public var widthInPixels:Float;
    /**
     * The height in pixels of the entire layer.
     *
     * @name Phaser.Tilemaps.LayerData#heightInPixels
     * @type {number}
     * @since 3.0.0
     */
    public var heightInPixels:Float;
    /**
     * The alpha value of the layer.
     *
     * @name Phaser.Tilemaps.LayerData#alpha
     * @type {number}
     * @since 3.0.0
     */
    public var alpha:Float;
    /**
     * Is the layer visible or not?
     *
     * @name Phaser.Tilemaps.LayerData#visible
     * @type {boolean}
     * @since 3.0.0
     */
    public var visible:Bool;
    /**
     * Layer specific properties (can be specified in Tiled)
     *
     * @name Phaser.Tilemaps.LayerData#properties
     * @type {object[]}
     * @since 3.0.0
     */
    public var properties:Array<Dynamic>;
    /**
     * Tile ID index map.
     *
     * @name Phaser.Tilemaps.LayerData#indexes
     * @type {array}
     * @since 3.0.0
     */
    public var indexes:Array<Dynamic>;
    /**
     * Tile Collision ID index map.
     *
     * @name Phaser.Tilemaps.LayerData#collideIndexes
     * @type {array}
     * @since 3.0.0
     */
    public var collideIndexes:Array<Dynamic>;
    /**
     * An array of callbacks.
     *
     * @name Phaser.Tilemaps.LayerData#callbacks
     * @type {array}
     * @since 3.0.0
     */
    public var callbacks:Array<Dynamic>;
    /**
     * An array of physics bodies.
     *
     * @name Phaser.Tilemaps.LayerData#bodies
     * @type {array}
     * @since 3.0.0
     */
    public var bodies:Array<Dynamic>;
    /**
     * An array of the tile data indexes.
     *
     * @name Phaser.Tilemaps.LayerData#data
     * @type {Phaser.Tilemaps.Tile[][]}
     * @since 3.0.0
     */
    public var data:Array<Array<phaser.tilemaps.Tile>>;
    /**
     * A reference to the Tilemap layer that owns this data.
     *
     * @name Phaser.Tilemaps.LayerData#tilemapLayer
     * @type {Phaser.Tilemaps.TilemapLayer}
     * @since 3.0.0
     */
    public var tilemapLayer:phaser.tilemaps.TilemapLayer;
    /**
     * The length of the horizontal sides of the hexagon.
     * Only used for hexagonal orientation Tilemaps.
     *
     * @name Phaser.Tilemaps.LayerData#hexSideLength
     * @type {number}
     * @since 3.50.0
     */
    public var hexSideLength:Float;
}
