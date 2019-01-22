package phaser.tilemaps;

/**
 * @classdesc
 * A class for representing a Tiled object layer in a map. This mirrors the structure of a Tiled
 * object layer, except:
 *  - "x" & "y" properties are ignored since these cannot be changed in Tiled.
 *  - "offsetx" & "offsety" are applied to the individual object coordinates directly, so they
 *    are ignored as well.
 *  - "draworder" is ignored.
 *
 * @class ObjectLayer
 * @memberof Phaser.Tilemaps
 * @constructor
 * @since 3.0.0
 *
 * @param {object} [config] - [description]
 */
@:native("Phaser.Tilemaps.ObjectLayer")
extern class ObjectLayer {
    public function new(?config:Dynamic);
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.ObjectLayer#name
     * @type {string}
     * @since 3.0.0
     */
    public var name:String;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.ObjectLayer#opacity
     * @type {number}
     * @since 3.0.0
     */
    public var opacity:Float;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.ObjectLayer#properties
     * @type {object}
     * @since 3.0.0
     */
    public var properties:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.ObjectLayer#propertyTypes
     * @type {object}
     * @since 3.0.0
     */
    public var propertyTypes:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.ObjectLayer#type
     * @type {string}
     * @since 3.0.0
     */
    public var type:String;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.ObjectLayer#visible
     * @type {boolean}
     * @since 3.0.0
     */
    public var visible:Bool;
    /**
     * [description]
     *
     * @name Phaser.Tilemaps.ObjectLayer#objects
     * @type {Phaser.GameObjects.GameObject[]}
     * @since 3.0.0
     */
    public var objects:Array<Dynamic>;
}
