package phaser.geom;

/**
 * @classdesc
 * [description]
 *
 * @class Polygon
 * @memberof Phaser.Geom
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Geom.Point[]} [points] - [description]
 */
@:native("Phaser.Geom.Polygon")
extern class Polygon {
    public function new(?points:Array<phaser.geom.Point>);
    /**
     * The area of this Polygon.
     *
     * @name Phaser.Geom.Polygon#area
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var area:Float;
    /**
     * An array of number pair objects that make up this polygon. I.e. [ {x,y}, {x,y}, {x,y} ]
     *
     * @name Phaser.Geom.Polygon#points
     * @type {Phaser.Geom.Point[]}
     * @since 3.0.0
     */
    public var points:Array<phaser.geom.Point>;
    /**
     * [description]
     *
     * @function Phaser.Geom.Polygon.Clone
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Polygon} polygon - [description]
     *
     * @return {Phaser.Geom.Polygon} [description]
     */
    public function Clone(polygon:phaser.geom.Polygon):phaser.geom.Polygon;
    /**
     * Checks if a point is within the bounds of a Polygon.
     *
     * @function Phaser.Geom.Polygon.Contains
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Polygon} polygon - The Polygon to check against.
     * @param {number} x - The X coordinate of the point to check.
     * @param {number} y - The Y coordinate of the point to check.
     *
     * @return {boolean} `true` if the point is within the bounds of the Polygon, otherwise `false`.
     */
    public function Contains(polygon:phaser.geom.Polygon, x:Float, y:Float):Bool;
    /**
     * [description]
     *
     * @function Phaser.Geom.Polygon.ContainsPoint
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Polygon} polygon - [description]
     * @param {Phaser.Geom.Point} point - [description]
     *
     * @return {boolean} [description]
     */
    public function ContainsPoint(polygon:phaser.geom.Polygon, point:phaser.geom.Point):Bool;
    /**
     * [description]
     *
     * @function Phaser.Geom.Polygon.GetAABB
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [out,$return]
     *
     * @param {Phaser.Geom.Polygon} polygon - [description]
     * @param {(Phaser.Geom.Rectangle|object)} [out] - [description]
     *
     * @return {(Phaser.Geom.Rectangle|object)} [description]
     */
    public function GetAABB(polygon:phaser.geom.Polygon, ?out:Dynamic):phaser.geom.Rectangle;
    /**
     * Stores all of the points of a Polygon into a flat array of numbers following the sequence [ x,y, x,y, x,y ],
     * i.e. each point of the Polygon, in the order it's defined, corresponds to two elements of the resultant
     * array for the point's X and Y coordinate.
     *
     * @function Phaser.Geom.Polygon.GetNumberArray
     * @since 3.0.0
     *
     * @generic {number[]} O - [output,$return]
     *
     * @param {Phaser.Geom.Polygon} polygon - The Polygon whose points to export.
     * @param {(array|number[])} [output] - An array to which the points' coordinates should be appended.
     *
     * @return {(array|number[])} The modified `output` array, or a new array if none was given.
     */
    public function GetNumberArray(polygon:phaser.geom.Polygon, ?output:Dynamic):Array<Dynamic>;
    /**
     * Returns an array of Point objects containing the coordinates of the points around the perimeter of the Polygon,
     * based on the given quantity or stepRate values.
     *
     * @function Phaser.Geom.Polygon.GetPoints
     * @since 3.12.0
     *
     * @param {Phaser.Geom.Polygon} polygon - The Polygon to get the points from.
     * @param {integer} quantity - The amount of points to return. If a falsey value the quantity will be derived from the `stepRate` instead.
     * @param {number} [stepRate] - Sets the quantity by getting the perimeter of the Polygon and dividing it by the stepRate.
     * @param {array} [output] - An array to insert the points in to. If not provided a new array will be created.
     *
     * @return {Phaser.Geom.Point[]} An array of Point objects pertaining to the points around the perimeter of the Polygon.
     */
    public function GetPoints(polygon:phaser.geom.Polygon, quantity:Int, ?stepRate:Float, ?output:Array<Dynamic>):Array<phaser.geom.Point>;
    /**
     * Returns the perimeter of the given Polygon.
     *
     * @function Phaser.Geom.Polygon.Perimeter
     * @since 3.12.0
     *
     * @param {Phaser.Geom.Polygon} polygon - The Polygon to get the perimeter of.
     *
     * @return {number} The perimeter of the Polygon.
     */
    public function Perimeter(polygon:phaser.geom.Polygon):Float;
    /**
     * Check to see if the Polygon contains the given x / y coordinates.
     *
     * @method Phaser.Geom.Polygon#contains
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate to check within the polygon.
     * @param {number} y - The y coordinate to check within the polygon.
     *
     * @return {boolean} `true` if the coordinates are within the polygon, otherwise `false`.
     */
    public function contains(x:Float, y:Float):Bool;
    /**
     * Sets this Polygon to the given points.
     *
     * The points can be set from a variety of formats:
     *
     * - A string containing paired values separated by a single space: `'40 0 40 20 100 20 100 80 40 80 40 100 0 50'`
     * - An array of Point objects: `[new Phaser.Point(x1, y1), ...]`
     * - An array of objects with public x/y properties: `[obj1, obj2, ...]`
     * - An array of paired numbers that represent point coordinates: `[x1,y1, x2,y2, ...]`
     * - An array of arrays with two elements representing x/y coordinates: `[[x1, y1], [x2, y2], ...]`
     *
     * `setTo` may also be called without any arguments to remove all points.
     *
     * @method Phaser.Geom.Polygon#setTo
     * @since 3.0.0
     *
     * @param {array} points - [description]
     *
     * @return {Phaser.Geom.Polygon} This Polygon object.
     */
    public function setTo(points:Array<Dynamic>):phaser.geom.Polygon;
    /**
     * Calculates the area of the Polygon. This is available in the property Polygon.area
     *
     * @method Phaser.Geom.Polygon#calculateArea
     * @since 3.0.0
     *
     * @return {number} The area of the polygon.
     */
    public function calculateArea():Float;
    /**
     * Returns an array of Point objects containing the coordinates of the points around the perimeter of the Polygon,
     * based on the given quantity or stepRate values.
     *
     * @method Phaser.Geom.Polygon#getPoints
     * @since 3.12.0
     *
     * @param {integer} quantity - The amount of points to return. If a falsey value the quantity will be derived from the `stepRate` instead.
     * @param {number} [stepRate] - Sets the quantity by getting the perimeter of the Polygon and dividing it by the stepRate.
     * @param {array} [output] - An array to insert the points in to. If not provided a new array will be created.
     *
     * @return {Phaser.Geom.Point[]} An array of Point objects pertaining to the points around the perimeter of the Polygon.
     */
    public function getPoints(quantity:Int, ?stepRate:Float, ?output:Array<Dynamic>):Array<phaser.geom.Point>;
    /**
     * [description]
     *
     * @function Phaser.Geom.Polygon.Reverse
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Polygon} O - [polygon,$return]
     *
     * @param {Phaser.Geom.Polygon} polygon - [description]
     *
     * @return {Phaser.Geom.Polygon} [description]
     */
    public function Reverse(polygon:phaser.geom.Polygon):phaser.geom.Polygon;
    /**
     * Takes a Polygon object and applies Chaikin's smoothing algorithm on its points.
     *
     * @function Phaser.Geom.Polygon.Smooth
     * @since 3.13.0
     *
     * @generic {Phaser.Geom.Polygon} O - [polygon,$return]
     *
     * @param {Phaser.Geom.Polygon} polygon - The polygon to be smoothed. The polygon will be modified in-place and returned.
     *
     * @return {Phaser.Geom.Polygon} The input polygon.
     */
    public function Smooth(polygon:phaser.geom.Polygon):phaser.geom.Polygon;
}
