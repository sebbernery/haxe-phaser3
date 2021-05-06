package phaser.geom;

/**
 * @classdesc
 * A Polygon object
 *
 * The polygon is a closed shape consists of a series of connected straight lines defined by list of ordered points.
 * Several formats are supported to define the list of points, check the setTo method for details.
 * This is a geometry object allowing you to define and inspect the shape.
 * It is not a Game Object, in that you cannot add it to the display list, and it has no texture.
 * To render a Polygon you should look at the capabilities of the Graphics class.
 *
 * @class Polygon
 * @memberof Phaser.Geom
 * @constructor
 * @since 3.0.0
 *
 * @param {(string|number[]|Phaser.Types.Math.Vector2Like[])} [points] - List of points defining the perimeter of this Polygon. Several formats are supported:
 * - A string containing paired x y values separated by a single space: `'40 0 40 20 100 20 100 80 40 80 40 100 0 50'`
 * - An array of Point objects: `[new Phaser.Point(x1, y1), ...]`
 * - An array of objects with public x y properties: `[obj1, obj2, ...]`
 * - An array of paired numbers that represent point coordinates: `[x1,y1, x2,y2, ...]`
 * - An array of arrays with two elements representing x/y coordinates: `[[x1, y1], [x2, y2], ...]`
 */
@:native("Phaser.Geom.Polygon")
extern class Polygon {
    public function new(?points:Dynamic);
    /**
     * The geometry constant type of this object: `GEOM_CONST.POLYGON`.
     * Used for fast type comparisons.
     *
     * @name Phaser.Geom.Polygon#type
     * @type {number}
     * @readonly
     * @since 3.19.0
     */
    public var type:Float;
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
     * Create a new polygon which is a copy of the specified polygon
     *
     * @function Phaser.Geom.Polygon.Clone
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Polygon} polygon - The polygon to create a clone of
     *
     * @return {Phaser.Geom.Polygon} A new separate Polygon cloned from the specified polygon, based on the same points.
     */
    static public function Clone(polygon:phaser.geom.Polygon):phaser.geom.Polygon;
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
    static public function Contains(polygon:phaser.geom.Polygon, x:Float, y:Float):Bool;
    /**
     * Checks the given Point again the Polygon to see if the Point lays within its vertices.
     *
     * @function Phaser.Geom.Polygon.ContainsPoint
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Polygon} polygon - The Polygon to check.
     * @param {Phaser.Geom.Point} point - The Point to check if it's within the Polygon.
     *
     * @return {boolean} `true` if the Point is within the Polygon, otherwise `false`.
     */
    static public function ContainsPoint(polygon:phaser.geom.Polygon, point:phaser.geom.Point):Bool;
    /**
     * This module implements a modified ear slicing algorithm, optimized by z-order curve hashing and extended to
     * handle holes, twisted polygons, degeneracies and self-intersections in a way that doesn't guarantee correctness
     * of triangulation, but attempts to always produce acceptable results for practical data.
     *
     * Example:
     *
     * ```javascript
     * const triangles = Phaser.Geom.Polygon.Earcut([10,0, 0,50, 60,60, 70,10]); // returns [1,0,3, 3,2,1]
     * ```
     *
     * Each group of three vertex indices in the resulting array forms a triangle.
     *
     * ```javascript
     * // triangulating a polygon with a hole
     * earcut([0,0, 100,0, 100,100, 0,100,  20,20, 80,20, 80,80, 20,80], [4]);
     * // [3,0,4, 5,4,0, 3,4,7, 5,0,1, 2,3,7, 6,5,1, 2,7,6, 6,1,2]
     *
     * // triangulating a polygon with 3d coords
     * earcut([10,0,1, 0,50,2, 60,60,3, 70,10,4], null, 3);
     * // [1,0,3, 3,2,1]
     * ```
     *
     * If you pass a single vertex as a hole, Earcut treats it as a Steiner point.
     *
     * If your input is a multi-dimensional array (e.g. GeoJSON Polygon), you can convert it to the format
     * expected by Earcut with `Phaser.Geom.Polygon.Earcut.flatten`:
     *
     * ```javascript
     * var data = earcut.flatten(geojson.geometry.coordinates);
     * var triangles = earcut(data.vertices, data.holes, data.dimensions);
     * ```
     *
     * After getting a triangulation, you can verify its correctness with `Phaser.Geom.Polygon.Earcut.deviation`:
     *
     * ```javascript
     * var deviation = earcut.deviation(vertices, holes, dimensions, triangles);
     * ```
     * Returns the relative difference between the total area of triangles and the area of the input polygon.
     * 0 means the triangulation is fully correct.
     *
     * For more information see https://github.com/mapbox/earcut
     *
     * @function Phaser.Geom.Polygon.Earcut
     * @since 3.50.0
     *
     * @param {number[]} data - A flat array of vertex coordinate, like [x0,y0, x1,y1, x2,y2, ...]
     * @param {number[]} [holeIndices] - An array of hole indices if any (e.g. [5, 8] for a 12-vertex input would mean one hole with vertices 5–7 and another with 8–11).
     * @param {number} [dimensions=2] - The number of coordinates per vertex in the input array (2 by default).
     *
     * @return {number[]} An array of triangulated data.
     */
    static public function Earcut(data:Array<Float>, ?holeIndices:Array<Float>, ?dimensions:Float):Array<Float>;
    /**
     * Calculates the bounding AABB rectangle of a polygon.
     *
     * @function Phaser.Geom.Polygon.GetAABB
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [out,$return]
     *
     * @param {Phaser.Geom.Polygon} polygon - The polygon that should be calculated.
     * @param {(Phaser.Geom.Rectangle|object)} [out] - The rectangle or object that has x, y, width, and height properties to store the result. Optional.
     *
     * @return {(Phaser.Geom.Rectangle|object)} The resulting rectangle or object that is passed in with position and dimensions of the polygon's AABB.
     */
    static public function GetAABB(polygon:phaser.geom.Polygon, ?out:Dynamic):phaser.geom.Rectangle;
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
    static public function GetNumberArray(polygon:phaser.geom.Polygon, ?output:Dynamic):Array<Dynamic>;
    /**
     * Returns an array of Point objects containing the coordinates of the points around the perimeter of the Polygon,
     * based on the given quantity or stepRate values.
     *
     * @function Phaser.Geom.Polygon.GetPoints
     * @since 3.12.0
     *
     * @param {Phaser.Geom.Polygon} polygon - The Polygon to get the points from.
     * @param {number} quantity - The amount of points to return. If a falsey value the quantity will be derived from the `stepRate` instead.
     * @param {number} [stepRate] - Sets the quantity by getting the perimeter of the Polygon and dividing it by the stepRate.
     * @param {array} [output] - An array to insert the points in to. If not provided a new array will be created.
     *
     * @return {Phaser.Geom.Point[]} An array of Point objects pertaining to the points around the perimeter of the Polygon.
     */
    static public function GetPoints(polygon:phaser.geom.Polygon, quantity:Float, ?stepRate:Float, ?output:Array<Dynamic>):Array<phaser.geom.Point>;
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
    static public function Perimeter(polygon:phaser.geom.Polygon):Float;
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
     * @param {(string|number[]|Phaser.Types.Math.Vector2Like[])} [points] - Points defining the perimeter of this polygon. Please check function description above for the different supported formats.
     *
     * @return {this} This Polygon object.
     */
    public function setTo(?points:Dynamic):Dynamic;
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
     * @generic {Phaser.Geom.Point[]} O - [output,$return]
     *
     * @param {number} quantity - The amount of points to return. If a falsey value the quantity will be derived from the `stepRate` instead.
     * @param {number} [stepRate] - Sets the quantity by getting the perimeter of the Polygon and dividing it by the stepRate.
     * @param {(array|Phaser.Geom.Point[])} [output] - An array to insert the points in to. If not provided a new array will be created.
     *
     * @return {(array|Phaser.Geom.Point[])} An array of Point objects pertaining to the points around the perimeter of the Polygon.
     */
    public function getPoints(quantity:Float, ?stepRate:Float, ?output:Dynamic):Array<Dynamic>;
    /**
     * Reverses the order of the points of a Polygon.
     *
     * @function Phaser.Geom.Polygon.Reverse
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Polygon} O - [polygon,$return]
     *
     * @param {Phaser.Geom.Polygon} polygon - The Polygon to modify.
     *
     * @return {Phaser.Geom.Polygon} The modified Polygon.
     */
    static public function Reverse(polygon:phaser.geom.Polygon):phaser.geom.Polygon;
    /**
     * Takes a Polygon object and simplifies the points by running them through a combination of
     * Douglas-Peucker and Radial Distance algorithms. Simplification dramatically reduces the number of
     * points in a polygon while retaining its shape, giving a huge performance boost when processing
     * it and also reducing visual noise.
     *
     * @function Phaser.Geom.Polygon.Simplify
     * @since 3.50.0
     *
     * @generic {Phaser.Geom.Polygon} O - [polygon,$return]
     *
     * @param {Phaser.Geom.Polygon} polygon - The polygon to be simplified. The polygon will be modified in-place and returned.
     * @param {number} [tolerance=1] - Affects the amount of simplification (in the same metric as the point coordinates).
     * @param {boolean} [highestQuality=false] - Excludes distance-based preprocessing step which leads to highest quality simplification but runs ~10-20 times slower.
     *
     * @return {Phaser.Geom.Polygon} The input polygon.
     */
    static public function Simplify(polygon:phaser.geom.Polygon, ?tolerance:Float, ?highestQuality:Bool):phaser.geom.Polygon;
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
    static public function Smooth(polygon:phaser.geom.Polygon):phaser.geom.Polygon;
    /**
     * Tranlates the points of the given Polygon.
     *
     * @function Phaser.Geom.Polygon.Translate
     * @since 3.50.0
     *
     * @generic {Phaser.Geom.Polygon} O - [polygon,$return]
     *
     * @param {Phaser.Geom.Polygon} polygon - The Polygon to modify.
     * @param {number} x - The amount to horizontally translate the points by.
     * @param {number} y - The amount to vertically translate the points by.
     *
     * @return {Phaser.Geom.Polygon} The modified Polygon.
     */
    static public function Translate(polygon:phaser.geom.Polygon, x:Float, y:Float):phaser.geom.Polygon;
}
