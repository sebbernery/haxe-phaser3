package phaser.types.tilemaps;

/**
 * @typedef {object} Phaser.Types.Tilemaps.TiledObject
 * @since 3.0.0
 *
 * @property {number} id - The unique object ID.
 * @property {string} name - The name this object was assigned in Tiled.
 * @property {string} type - The string type of this instance, as assigned in Tiled. Tiled supports inheriting instance types from tilesets; in that case, the type will be set in the tile's data, but will be `''` here; use the `gid` to fetch the tile data or properties.
 * @property {boolean} [visible] - The visible state of this object.
 * @property {number} [x] - The horizontal position of this object, in pixels, relative to the tilemap.
 * @property {number} [y] - The vertical position of this object, in pixels, relative to the tilemap.
 * @property {number} [width] - The width of this object, in pixels.
 * @property {number} [height] - The height of this object, in pixels.
 * @property {number} [rotation] - The rotation of the object in clockwise degrees.
 * @property {any} [properties] - Custom properties object.
 * @property {number} [gid] - Only set if of type 'tile'.
 * @property {boolean} [flippedHorizontal] - Only set if a tile object. The horizontal flip value.
 * @property {boolean} [flippedVertical] - Only set if a tile object. The vertical flip value.
 * @property {boolean} [flippedAntiDiagonal] - Only set if a tile object. The diagonal flip value.
 * @property {Phaser.Types.Math.Vector2Like[]} [polyline] - Only set if a polyline object. An array of objects corresponding to points, where each point has an `x` property and a `y` property.
 * @property {Phaser.Types.Math.Vector2Like[]} [polygon] - Only set if a polygon object. An array of objects corresponding to points, where each point has an `x` property and a `y` property.
 * @property {any} [text] - Only set if a text object. Contains the text objects properties.
 * @property {boolean} [rectangle] - Only set, and set to `true`, if a rectangle object.
 * @property {boolean} [ellipse] - Only set, and set to `true`, if a ellipse object.
 * @property {boolean} [point] - Only set, and set to `true`, if a point object.
 */
typedef TiledObject = {
var id:Float;
var name:String;
var type:String;
    @:optional var visible:Bool;
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var width:Float;
    @:optional var height:Float;
    @:optional var rotation:Float;
    @:optional var properties:Dynamic;
    @:optional var gid:Float;
    @:optional var flippedHorizontal:Bool;
    @:optional var flippedVertical:Bool;
    @:optional var flippedAntiDiagonal:Bool;
    @:optional var polyline:Array<phaser.types.math.Vector2Like>;
    @:optional var polygon:Array<phaser.types.math.Vector2Like>;
    @:optional var text:Dynamic;
    @:optional var rectangle:Bool;
    @:optional var ellipse:Bool;
    @:optional var point:Bool;
};
