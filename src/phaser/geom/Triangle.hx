package phaser.geom;

/**
 * @classdesc
 * A triangle is a plane created by connecting three points.
 * The first two arguments specify the first point, the middle two arguments
 * specify the second point, and the last two arguments specify the third point.
 *
 * @class Triangle
 * @memberof Phaser.Geom
 * @constructor
 * @since 3.0.0
 *
 * @param {number} [x1=0] - `x` coordinate of the first point.
 * @param {number} [y1=0] - `y` coordinate of the first point.
 * @param {number} [x2=0] - `x` coordinate of the second point.
 * @param {number} [y2=0] - `y` coordinate of the second point.
 * @param {number} [x3=0] - `x` coordinate of the third point.
 * @param {number} [y3=0] - `y` coordinate of the third point.
 */
@:native("Phaser.Geom.Triangle")
extern class Triangle {
    public function new(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?x3:Float, ?y3:Float);
    /**
     * `x` coordinate of the first point.
     *
     * @name Phaser.Geom.Triangle#x1
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x1:Float;
    /**
     * `y` coordinate of the first point.
     *
     * @name Phaser.Geom.Triangle#y1
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y1:Float;
    /**
     * `x` coordinate of the second point.
     *
     * @name Phaser.Geom.Triangle#x2
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x2:Float;
    /**
     * `y` coordinate of the second point.
     *
     * @name Phaser.Geom.Triangle#y2
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y2:Float;
    /**
     * `x` coordinate of the third point.
     *
     * @name Phaser.Geom.Triangle#x3
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x3:Float;
    /**
     * `y` coordinate of the third point.
     *
     * @name Phaser.Geom.Triangle#y3
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y3:Float;
    /**
     * Left most X coordinate of the triangle. Setting it moves the triangle on the X axis accordingly.
     *
     * @name Phaser.Geom.Triangle#left
     * @type {number}
     * @since 3.0.0
     */
    public var left:Float;
    /**
     * Right most X coordinate of the triangle. Setting it moves the triangle on the X axis accordingly.
     *
     * @name Phaser.Geom.Triangle#right
     * @type {number}
     * @since 3.0.0
     */
    public var right:Float;
    /**
     * Top most Y coordinate of the triangle. Setting it moves the triangle on the Y axis accordingly.
     *
     * @name Phaser.Geom.Triangle#top
     * @type {number}
     * @since 3.0.0
     */
    public var top:Float;
    /**
     * Bottom most Y coordinate of the triangle. Setting it moves the triangle on the Y axis accordingly.
     *
     * @name Phaser.Geom.Triangle#bottom
     * @type {number}
     * @since 3.0.0
     */
    public var bottom:Float;
    /**
     * Returns the area of a Triangle.
     *
     * @function Phaser.Geom.Triangle.Area
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Triangle} triangle - The Triangle to use.
     *
     * @return {number} The area of the Triangle, always non-negative.
     */
    public function Area(triangle:phaser.geom.Triangle):Float;
    /**
     * Builds an equilateral triangle. In the equilateral triangle, all the sides are the same length (congruent) and all the angles are the same size (congruent).
     * The x/y specifies the top-middle of the triangle (x1/y1) and length is the length of each side.
     *
     * @function Phaser.Geom.Triangle.BuildEquilateral
     * @since 3.0.0
     *
     * @param {number} x - x coordinate of the top point of the triangle.
     * @param {number} y - y coordinate of the top point of the triangle.
     * @param {number} length - Length of each side of the triangle.
     *
     * @return {Phaser.Geom.Triangle} The Triangle object of the given size.
     */
    public function BuildEquilateral(x:Float, y:Float, length:Float):phaser.geom.Triangle;
    /**
     * [description]
     *
     * @function Phaser.Geom.Triangle.BuildFromPolygon
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Triangle[]} O - [out,$return]
     *
     * @param {array} data - A flat array of vertice coordinates like [x0,y0, x1,y1, x2,y2, ...]
     * @param {array} [holes=null] - An array of hole indices if any (e.g. [5, 8] for a 12-vertice input would mean one hole with vertices 5–7 and another with 8–11).
     * @param {number} [scaleX=1] - [description]
     * @param {number} [scaleY=1] - [description]
     * @param {(array|Phaser.Geom.Triangle[])} [out] - [description]
     *
     * @return {(array|Phaser.Geom.Triangle[])} [description]
     */
    public function BuildFromPolygon(data:Array<Dynamic>, ?holes:Array<Dynamic>, ?scaleX:Float, ?scaleY:Float, ?out:Dynamic):Array<Dynamic>;
    /**
     * Builds a right triangle, i.e. one which has a 90-degree angle and two acute angles.
     *
     * @function Phaser.Geom.Triangle.BuildRight
     * @since 3.0.0
     *
     * @param {number} x - The X coordinate of the right angle, which will also be the first X coordinate of the constructed Triangle.
     * @param {number} y - The Y coordinate of the right angle, which will also be the first Y coordinate of the constructed Triangle.
     * @param {number} width - The length of the side which is to the left or to the right of the right angle.
     * @param {number} height - The length of the side which is above or below the right angle.
     *
     * @return {Phaser.Geom.Triangle} The constructed right Triangle.
     */
    public function BuildRight(x:Float, y:Float, width:Float, height:Float):phaser.geom.Triangle;
    /**
     * Positions the Triangle so that it is centered on the given coordinates.
     *
     * @function Phaser.Geom.Triangle.CenterOn
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Triangle} O - [triangle,$return]
     *
     * @param {Phaser.Geom.Triangle} triangle - The triangle to be positioned.
     * @param {number} x - The horizontal coordinate to center on.
     * @param {number} y - The vertical coordinate to center on.
     * @param {CenterFunction} [centerFunc] - The function used to center the triangle. Defaults to Centroid centering.
     *
     * @return {Phaser.Geom.Triangle} The Triangle that was centered.
     */
    public function CenterOn(triangle:phaser.geom.Triangle, x:Float, y:Float, ?centerFunc:CenterFunction):phaser.geom.Triangle;
    /**
     * Calculates the position of a Triangle's centroid, which is also its center of mass (center of gravity).
     *
     * The centroid is the point in a Triangle at which its three medians (the lines drawn from the vertices to the bisectors of the opposite sides) meet. It divides each one in a 2:1 ratio.
     *
     * @function Phaser.Geom.Triangle.Centroid
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Triangle} triangle - The Triangle to use.
     * @param {(Phaser.Geom.Point|object)} [out] - An object to store the coordinates in.
     *
     * @return {(Phaser.Geom.Point|object)} The `out` object with modified `x` and `y` properties, or a new Point if none was provided.
     */
    public function Centroid(triangle:phaser.geom.Triangle, ?out:Dynamic):phaser.geom.Point;
    /**
     * Computes the circumcentre of a triangle. The circumcentre is the centre of
     * the circumcircle, the smallest circle which encloses the triangle. It is also
     * the common intersection point of the perpendicular bisectors of the sides of
     * the triangle, and is the only point which has equal distance to all three
     * vertices of the triangle.
     *
     * @function Phaser.Geom.Triangle.CircumCenter
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {Phaser.Geom.Triangle} triangle - [description]
     * @param {Phaser.Math.Vector2} [out] - [description]
     *
     * @return {Phaser.Math.Vector2} [description]
     */
    public function CircumCenter(triangle:phaser.geom.Triangle, ?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Finds the circumscribed circle (circumcircle) of a Triangle object. The circumcircle is the circle which touches all of the triangle's vertices.
     *
     * @function Phaser.Geom.Triangle.CircumCircle
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Circle} O - [out,$return]
     *
     * @param {Phaser.Geom.Triangle} triangle - The Triangle to use as input.
     * @param {Phaser.Geom.Circle} [out] - An optional Circle to store the result in.
     *
     * @return {Phaser.Geom.Circle} The updated `out` Circle, or a new Circle if none was provided.
     */
    public function CircumCircle(triangle:phaser.geom.Triangle, ?out:phaser.geom.Circle):phaser.geom.Circle;
    /**
     * Clones a Triangle object.
     *
     * @function Phaser.Geom.Triangle.Clone
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Triangle} source - The Triangle to clone.
     *
     * @return {Phaser.Geom.Triangle} A new Triangle identical to the given one but separate from it.
     */
    public function Clone(source:phaser.geom.Triangle):phaser.geom.Triangle;
    /**
     * Checks if a point (as a pair of coordinates) is inside a Triangle's bounds.
     *
     * @function Phaser.Geom.Triangle.Contains
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Triangle} triangle - The Triangle to check.
     * @param {number} x - The X coordinate of the point to check.
     * @param {number} y - The Y coordinate of the point to check.
     *
     * @return {boolean} `true` if the point is inside the Triangle, otherwise `false`.
     */
    public function Contains(triangle:phaser.geom.Triangle, x:Float, y:Float):Bool;
    /**
     * Filters an array of point-like objects to only those contained within a triangle.
     * If `returnFirst` is true, will return an array containing only the first point in the provided array that is within the triangle (or an empty array if there are no such points).
     *
     * @function Phaser.Geom.Triangle.ContainsArray
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Triangle} triangle - The triangle that the points are being checked in.
     * @param {Phaser.Geom.Point[]} points - An array of point-like objects (objects that have an `x` and `y` property)
     * @param {boolean} [returnFirst=false] - If `true`, return an array containing only the first point found that is within the triangle.
     * @param {array} [out] - If provided, the points that are within the triangle will be appended to this array instead of being added to a new array. If `returnFirst` is true, only the first point found within the triangle will be appended. This array will also be returned by this function.
     *
     * @return {Phaser.Geom.Point[]} An array containing all the points from `points` that are within the triangle, if an array was provided as `out`, points will be appended to that array and it will also be returned here.
     */
    public function ContainsArray(triangle:phaser.geom.Triangle, points:Array<phaser.geom.Point>, ?returnFirst:Bool, ?out:Array<Dynamic>):Array<phaser.geom.Point>;
    /**
     * Tests if a triangle contains a point.
     *
     * @function Phaser.Geom.Triangle.ContainsPoint
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Triangle} triangle - The triangle.
     * @param {(Phaser.Geom.Point|Phaser.Math.Vector2|any)} point - The point to test, or any point-like object with public `x` and `y` properties.
     *
     * @return {boolean} `true` if the point is within the triangle, otherwise `false`.
     */
    public function ContainsPoint(triangle:phaser.geom.Triangle, point:Dynamic):Bool;
    /**
     * Copy the values of one Triangle to a destination Triangle.
     *
     * @function Phaser.Geom.Triangle.CopyFrom
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Triangle} O - [dest,$return]
     *
     * @param {Phaser.Geom.Triangle} source - The source Triangle to copy the values from.
     * @param {Phaser.Geom.Triangle} dest - The destination Triangle to copy the values to.
     *
     * @return {Phaser.Geom.Triangle} The destination Triangle.
     */
    public function CopyFrom(source:phaser.geom.Triangle, dest:phaser.geom.Triangle):phaser.geom.Triangle;
    /**
     * Decomposes a Triangle into an array of its points.
     *
     * @function Phaser.Geom.Triangle.Decompose
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Triangle} triangle - The Triangle to decompose.
     * @param {array} [out] - An array to store the points into.
     *
     * @return {array} The provided `out` array, or a new array if none was provided, with three objects with `x` and `y` properties representing each point of the Triangle appended to it.
     */
    public function Decompose(triangle:phaser.geom.Triangle, ?out:Array<Dynamic>):Array<Dynamic>;
    /**
     * Returns true if two triangles have the same coordinates.
     *
     * @function Phaser.Geom.Triangle.Equals
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Triangle} triangle - The first triangle to check.
     * @param {Phaser.Geom.Triangle} toCompare - The second triangle to check.
     *
     * @return {boolean} `true` if the two given triangles have the exact same coordinates, otherwise `false`.
     */
    public function Equals(triangle:phaser.geom.Triangle, toCompare:phaser.geom.Triangle):Bool;
    /**
     * Returns a Point from around the perimeter of a Triangle.
     *
     * @function Phaser.Geom.Triangle.GetPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Triangle} triangle - The Triangle to get the point on its perimeter from.
     * @param {number} position - The position along the perimeter of the triangle. A value between 0 and 1.
     * @param {(Phaser.Geom.Point|object)} [out] - An option Point, or Point-like object to store the value in. If not given a new Point will be created.
     *
     * @return {(Phaser.Geom.Point|object)} A Point object containing the given position from the perimeter of the triangle.
     */
    public function GetPoint(triangle:phaser.geom.Triangle, position:Float, ?out:Dynamic):phaser.geom.Point;
    /**
     * Returns an array of evenly spaced points on the perimeter of a Triangle.
     *
     * @function Phaser.Geom.Triangle.GetPoints
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Triangle} triangle - The Triangle to get the points from.
     * @param {integer} quantity - The number of evenly spaced points to return. Set to 0 to return an arbitrary number of points based on the `stepRate`.
     * @param {number} stepRate - If `quantity` is 0, the distance between each returned point.
     * @param {(array|Phaser.Geom.Point[])} [out] - An array to which the points should be appended.
     *
     * @return {(array|Phaser.Geom.Point[])} The modified `out` array, or a new array if none was provided.
     */
    public function GetPoints(triangle:phaser.geom.Triangle, quantity:Int, stepRate:Float, ?out:Dynamic):Array<Dynamic>;
    /**
     * Calculates the position of the incenter of a Triangle object. This is the point where its three angle bisectors meet and it's also the center of the incircle, which is the circle inscribed in the triangle.
     *
     * @function Phaser.Geom.Triangle.InCenter
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Triangle} triangle - The Triangle to find the incenter of.
     * @param {Phaser.Geom.Point} [out] - An optional Point in which to store the coordinates.
     *
     * @return {Phaser.Geom.Point} Point (x, y) of the center pixel of the triangle.
     */
    public function InCenter(triangle:phaser.geom.Triangle, ?out:phaser.geom.Point):phaser.geom.Point;
    /**
     * Moves each point (vertex) of a Triangle by a given offset, thus moving the entire Triangle by that offset.
     *
     * @function Phaser.Geom.Triangle.Offset
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Triangle} O - [triangle,$return]
     *
     * @param {Phaser.Geom.Triangle} triangle - The Triangle to move.
     * @param {number} x - The horizontal offset (distance) by which to move each point. Can be positive or negative.
     * @param {number} y - The vertical offset (distance) by which to move each point. Can be positive or negative.
     *
     * @return {Phaser.Geom.Triangle} The modified Triangle.
     */
    public function Offset(triangle:phaser.geom.Triangle, x:Float, y:Float):phaser.geom.Triangle;
    /**
     * Gets the length of the perimeter of the given triangle.
     *
     * @function Phaser.Geom.Triangle.Perimeter
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Triangle} triangle - [description]
     *
     * @return {number} [description]
     */
    public function Perimeter(triangle:phaser.geom.Triangle):Float;
    /**
     * [description]
     *
     * @function Phaser.Geom.Triangle.Random
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Triangle} triangle - [description]
     * @param {Phaser.Geom.Point} [out] - [description]
     *
     * @return {Phaser.Geom.Point} [description]
     */
    public function Random(triangle:phaser.geom.Triangle, ?out:phaser.geom.Point):phaser.geom.Point;
    /**
     * Rotates a Triangle about its incenter, which is the point at which its three angle bisectors meet.
     *
     * @function Phaser.Geom.Triangle.Rotate
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Triangle} O - [triangle,$return]
     *
     * @param {Phaser.Geom.Triangle} triangle - The Triangle to rotate.
     * @param {number} angle - The angle by which to rotate the Triangle, in radians.
     *
     * @return {Phaser.Geom.Triangle} The rotated Triangle.
     */
    public function Rotate(triangle:phaser.geom.Triangle, angle:Float):phaser.geom.Triangle;
    /**
     * Rotates a Triangle at a certain angle about a given Point or object with public `x` and `y` properties.
     *
     * @function Phaser.Geom.Triangle.RotateAroundPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Triangle} O - [triangle,$return]
     *
     * @param {Phaser.Geom.Triangle} triangle - The Triangle to rotate.
     * @param {Phaser.Geom.Point} point - The Point to rotate the Triangle about.
     * @param {number} angle - The angle by which to rotate the Triangle, in radians.
     *
     * @return {Phaser.Geom.Triangle} The rotated Triangle.
     */
    public function RotateAroundPoint(triangle:phaser.geom.Triangle, point:phaser.geom.Point, angle:Float):phaser.geom.Triangle;
    /**
     * Rotates an entire Triangle at a given angle about a specific point.
     *
     * @function Phaser.Geom.Triangle.RotateAroundXY
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Triangle} O - [triangle,$return]
     *
     * @param {Phaser.Geom.Triangle} triangle - The Triangle to rotate.
     * @param {number} x - The X coordinate of the point to rotate the Triangle about.
     * @param {number} y - The Y coordinate of the point to rotate the Triangle about.
     * @param {number} angle - The angle by which to rotate the Triangle, in radians.
     *
     * @return {Phaser.Geom.Triangle} The rotated Triangle.
     */
    public function RotateAroundXY(triangle:phaser.geom.Triangle, x:Float, y:Float, angle:Float):phaser.geom.Triangle;
    /**
     * Checks whether a given points lies within the triangle.
     *
     * @method Phaser.Geom.Triangle#contains
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate of the point to check.
     * @param {number} y - The y coordinate of the point to check.
     *
     * @return {boolean} `true` if the coordinate pair is within the triangle, otherwise `false`.
     */
    public function contains(x:Float, y:Float):Bool;
    /**
     * Returns a specific point  on the triangle.
     *
     * @method Phaser.Geom.Triangle#getPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [output,$return]
     *
     * @param {number} position - Position as float within `0` and `1`. `0` equals the first point.
     * @param {(Phaser.Geom.Point|object)} [output] - Optional Point, or point-like object, that the calculated point will be written to.
     *
     * @return {(Phaser.Geom.Point|object)} Calculated `Point` that represents the requested position. It is the same as `output` when this parameter has been given.
     */
    public function getPoint(position:Float, ?output:Dynamic):phaser.geom.Point;
    /**
     * Calculates a list of evenly distributed points on the triangle. It is either possible to pass an amount of points to be generated (`quantity`) or the distance between two points (`stepRate`).
     *
     * @method Phaser.Geom.Triangle#getPoints
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point[]} O - [output,$return]
     *
     * @param {integer} quantity - Number of points to be generated. Can be falsey when `stepRate` should be used. All points have the same distance along the triangle.
     * @param {number} [stepRate] - Distance between two points. Will only be used when `quantity` is falsey.
     * @param {(array|Phaser.Geom.Point[])} [output] - Optional Array for writing the calculated points into. Otherwise a new array will be created.
     *
     * @return {(array|Phaser.Geom.Point[])} Returns a list of calculated `Point` instances or the filled array passed as parameter `output`.
     */
    public function getPoints(quantity:Int, ?stepRate:Float, ?output:Dynamic):Array<Dynamic>;
    /**
     * Returns a random point along the triangle.
     *
     * @method Phaser.Geom.Triangle#getRandomPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [point,$return]
     *
     * @param {Phaser.Geom.Point} [point] - Optional `Point` that should be modified. Otherwise a new one will be created.
     *
     * @return {Phaser.Geom.Point} Random `Point`. When parameter `point` has been provided it will be returned.
     */
    public function getRandomPoint(?point:phaser.geom.Point):phaser.geom.Point;
    /**
     * Sets all three points of the triangle. Leaving out any coordinate sets it to be `0`.
     *
     * @method Phaser.Geom.Triangle#setTo
     * @since 3.0.0
     *
     * @param {number} [x1=0] - `x` coordinate of the first point.
     * @param {number} [y1=0] - `y` coordinate of the first point.
     * @param {number} [x2=0] - `x` coordinate of the second point.
     * @param {number} [y2=0] - `y` coordinate of the second point.
     * @param {number} [x3=0] - `x` coordinate of the third point.
     * @param {number} [y3=0] - `y` coordinate of the third point.
     *
     * @return {Phaser.Geom.Triangle} This Triangle object.
     */
    public function setTo(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?x3:Float, ?y3:Float):phaser.geom.Triangle;
    /**
     * Returns a Line object that corresponds to Line A of this Triangle.
     *
     * @method Phaser.Geom.Triangle#getLineA
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Line} O - [line,$return]
     *
     * @param {Phaser.Geom.Line} [line] - A Line object to set the results in. If `undefined` a new Line will be created.
     *
     * @return {Phaser.Geom.Line} A Line object that corresponds to line A of this Triangle.
     */
    public function getLineA(?line:phaser.geom.Line):phaser.geom.Line;
    /**
     * Returns a Line object that corresponds to Line B of this Triangle.
     *
     * @method Phaser.Geom.Triangle#getLineB
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Line} O - [line,$return]
     *
     * @param {Phaser.Geom.Line} [line] - A Line object to set the results in. If `undefined` a new Line will be created.
     *
     * @return {Phaser.Geom.Line} A Line object that corresponds to line B of this Triangle.
     */
    public function getLineB(?line:phaser.geom.Line):phaser.geom.Line;
    /**
     * Returns a Line object that corresponds to Line C of this Triangle.
     *
     * @method Phaser.Geom.Triangle#getLineC
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Line} O - [line,$return]
     *
     * @param {Phaser.Geom.Line} [line] - A Line object to set the results in. If `undefined` a new Line will be created.
     *
     * @return {Phaser.Geom.Line} A Line object that corresponds to line C of this Triangle.
     */
    public function getLineC(?line:phaser.geom.Line):phaser.geom.Line;
}
