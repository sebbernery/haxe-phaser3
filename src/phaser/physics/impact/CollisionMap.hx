package phaser.physics.impact;

/**
 * @classdesc
 * [description]
 *
 * @class CollisionMap
 * @memberof Phaser.Physics.Impact
 * @constructor
 * @since 3.0.0
 *
 * @param {integer} [tilesize=32] - [description]
 * @param {array} [data] - [description]
 */
@:native("Phaser.Physics.Impact.CollisionMap")
extern class CollisionMap {
    public function new(?tilesize:Int, ?data:Array<Dynamic>);
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.CollisionMap#tilesize
     * @type {integer}
     * @default 32
     * @since 3.0.0
     */
    public var tilesize:Int;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.CollisionMap#data
     * @type {array}
     * @since 3.0.0
     */
    public var data:Array<Dynamic>;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.CollisionMap#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.CollisionMap#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.CollisionMap#lastSlope
     * @type {integer}
     * @default 55
     * @since 3.0.0
     */
    public var lastSlope:Int;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.CollisionMap#tiledef
     * @type {object}
     * @since 3.0.0
     */
    public var tiledef:Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.CollisionMap#trace
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} y - [description]
     * @param {number} vx - [description]
     * @param {number} vy - [description]
     * @param {number} objectWidth - [description]
     * @param {number} objectHeight - [description]
     *
     * @return {boolean} [description]
     */
    public function trace(x:Float, y:Float, vx:Float, vy:Float, objectWidth:Float, objectHeight:Float):Bool;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.CollisionMap#step
     * @since 3.0.0
     *
     * @param {object} res - [description]
     * @param {number} x - [description]
     * @param {number} y - [description]
     * @param {number} vx - [description]
     * @param {number} vy - [description]
     * @param {number} width - [description]
     * @param {number} height - [description]
     * @param {number} rvx - [description]
     * @param {number} rvy - [description]
     * @param {number} step - [description]
     */
    public function step(res:Dynamic, x:Float, y:Float, vx:Float, vy:Float, width:Float, height:Float, rvx:Float, rvy:Float, step:Float):Void;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.CollisionMap#checkDef
     * @since 3.0.0
     *
     * @param {object} res - [description]
     * @param {number} t - [description]
     * @param {number} x - [description]
     * @param {number} y - [description]
     * @param {number} vx - [description]
     * @param {number} vy - [description]
     * @param {number} width - [description]
     * @param {number} height - [description]
     * @param {number} tileX - [description]
     * @param {number} tileY - [description]
     *
     * @return {boolean} [description]
     */
    public function checkDef(res:Dynamic, t:Float, x:Float, y:Float, vx:Float, vy:Float, width:Float, height:Float, tileX:Float, tileY:Float):Bool;
}
