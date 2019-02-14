package phaser.tilemaps;

/**
 * @classdesc
 * A class for representing data about a map. Maps are parsed from CSV, Tiled, etc. into this
 * format. A Tilemap object get a copy of this data and then unpacks the needed properties into
 * itself.
 *
 * @class MapData
 * @memberof Phaser.Tilemaps
 * @constructor
 * @since 3.0.0
 *
 * @param {MapDataConfig} [config] - [description]
 */
@:native("Phaser.Tilemaps.MapData")
extern class MapData {
    public function new(?config:MapDataConfig);
    /**
     * The key in the Phaser cache that corresponds to the loaded tilemap data.
     *
     * @name Phaser.Tilemaps.MapData#name
     * @type {string}
     * @since 3.0.0
     */
    public var name:String;
    /**
     * The width of the entire tilemap.
     *
     * @name Phaser.Tilemaps.MapData#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The height of the entire tilemap.
     *
     * @name Phaser.Tilemaps.MapData#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The width of the tiles.
     *
     * @name Phaser.Tilemaps.MapData#tileWidth
     * @type {number}
     * @since 3.0.0
     */
    public var tileWidth:Float;
    /**
     * The height of the tiles.
     *
     * @name Phaser.Tilemaps.MapData#tileHeight
     * @type {number}
     * @since 3.0.0
     */
    public var tileHeight:Float;
    /**
     * The width in pixels of the entire tilemap.
     *
     * @name Phaser.Tilemaps.MapData#widthInPixels
     * @type {number}
     * @since 3.0.0
     */
    public var widthInPixels:Float;
    /**
     * The height in pixels of the entire tilemap.
     *
     * @name Phaser.Tilemaps.MapData#heightInPixels
     * @type {number}
     * @since 3.0.0
     */
    public var heightInPixels:Float;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#format
     * @type {integer}
     * @since 3.0.0
     */
    public var format:Int;
    /**
     * The orientation of the map data (i.e. orthogonal, isometric, hexagonal), default 'orthogonal'.
     *
     * @name Phaser.Tilemaps.MapData#orientation
     * @type {string}
     * @since 3.0.0
     */
    public var orientation:String;
    /**
     * Determines the draw order of tilemap. Default is right-down
     *
     * 0, or 'right-down'
     * 1, or 'left-down'
     * 2, or 'right-up'
     * 3, or 'left-up'
     *
     * @name Phaser.Tilemaps.MapData#renderOrder
     * @type {string}
     * @since 3.12.0
     */
    public var renderOrder:String;
    /**
     * The version of the map data (as specified in Tiled).
     *
     * @name Phaser.Tilemaps.MapData#version
     * @type {string}
     * @since 3.0.0
     */
    public var version:String;
    /**
     * Map specific properties (can be specified in Tiled)
     *
     * @name Phaser.Tilemaps.MapData#properties
     * @type {object}
     * @since 3.0.0
     */
    public var properties:Dynamic;
    /**
     * An array with all the layers configured to the MapData.
     *
     * @name Phaser.Tilemaps.MapData#layers
     * @type {(Phaser.Tilemaps.LayerData[]|Phaser.Tilemaps.ObjectLayer)}
     * @since 3.0.0
     */
    public var layers:Dynamic;
    /**
     * An array of Tiled Image Layers.
     *
     * @name Phaser.Tilemaps.MapData#images
     * @type {array}
     * @since 3.0.0
     */
    public var images:Array<Dynamic>;
    /**
     * An object of Tiled Object Layers.
     *
     * @name Phaser.Tilemaps.MapData#objects
     * @type {object}
     * @since 3.0.0
     */
    public var objects:Dynamic;
    /**
     * An object of collision data. Must be created as physics object or will return undefined.
     *
     * @name Phaser.Tilemaps.MapData#collision
     * @type {object}
     * @since 3.0.0
     */
    public var collision:Dynamic;
    /**
     * An array of Tilesets.
     *
     * @name Phaser.Tilemaps.MapData#tilesets
     * @type {Phaser.Tilemaps.Tileset[]}
     * @since 3.0.0
     */
    public var tilesets:Array<phaser.tilemaps.Tileset>;
    /**
     * The collection of images the map uses(specified in Tiled)
     *
     * @name Phaser.Tilemaps.MapData#imageCollections
     * @type {array}
     * @since 3.0.0
     */
    public var imageCollections:Array<Dynamic>;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#tiles
     * @type {array}
     * @since 3.0.0
     */
    public var tiles:Array<Dynamic>;
}
