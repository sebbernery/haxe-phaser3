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
 * @param {object} [config] - [description]
 */
@:native("Phaser.Tilemaps.MapData")
extern class MapData {
    public function new(?config:Dynamic);
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#name
     * @type {string}
     * @since 3.0.0
     */
    public var name:String;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#tileWidth
     * @type {number}
     * @since 3.0.0
     */
    public var tileWidth:Float;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#tileHeight
     * @type {number}
     * @since 3.0.0
     */
    public var tileHeight:Float;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#widthInPixels
     * @type {number}
     * @since 3.0.0
     */
    public var widthInPixels:Float;
    /**
     * [description]
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
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#orientation
     * @type {string}
     * @since 3.0.0
     */
    public var orientation:String;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#renderOrder
     * @type {string}
     * @since 3.12.0
     */
    public var renderOrder:String;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#version
     * @type {string}
     * @since 3.0.0
     */
    public var version:String;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#properties
     * @type {object}
     * @since 3.0.0
     */
    public var properties:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#layers
     * @type {array}
     * @since 3.0.0
     */
    public var layers:Array<Dynamic>;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#images
     * @type {array}
     * @since 3.0.0
     */
    public var images:Array<Dynamic>;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#objects
     * @type {object}
     * @since 3.0.0
     */
    public var objects:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#collision
     * @type {object}
     * @since 3.0.0
     */
    public var collision:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.MapData#tilesets
     * @type {array}
     * @since 3.0.0
     */
    public var tilesets:Array<Dynamic>;
    /**
     * [description]
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
