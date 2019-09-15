package phaser.geom;

/**
 * @classdesc
 * Defines a Line segment, a part of a line between two endpoints.
 *
 * @class Line
 * @memberof Phaser.Geom
 * @constructor
 * @since 3.0.0
 *
 * @param {number} [x1=0] - The x coordinate of the lines starting point.
 * @param {number} [y1=0] - The y coordinate of the lines starting point.
 * @param {number} [x2=0] - The x coordinate of the lines ending point.
 * @param {number} [y2=0] - The y coordinate of the lines ending point.
 */
@:native("Phaser.Geom.Line")
extern class Line {
    public function new(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float);
    /**
     * The geometry constant type of this object: `GEOM_CONST.LINE`.
     * Used for fast type comparisons.
     *
     * @name Phaser.Geom.Line#type
     * @type {integer}
     * @readonly
     * @since 3.19.0
     */
    public var type:Int;
    /**
     * The x coordinate of the lines starting point.
     *
     * @name Phaser.Geom.Line#x1
     * @type {number}
     * @since 3.0.0
     */
    public var x1:Float;
    /**
     * The y coordinate of the lines starting point.
     *
     * @name Phaser.Geom.Line#y1
     * @type {number}
     * @since 3.0.0
     */
    public var y1:Float;
    /**
     * The x coordinate of the lines ending point.
     *
     * @name Phaser.Geom.Line#x2
     * @type {number}
     * @since 3.0.0
     */
    public var x2:Float;
    /**
     * The y coordinate of the lines ending point.
     *
     * @name Phaser.Geom.Line#y2
     * @type {number}
     * @since 3.0.0
     */
    public var y2:Float;
    /**
     * The left position of the Line.
     *
     * @name Phaser.Geom.Line#left
     * @type {number}
     * @since 3.0.0
     */
    public var left:Float;
    /**
     * The right position of the Line.
     *
     * @name Phaser.Geom.Line#right
     * @type {number}
     * @since 3.0.0
     */
    public var right:Float;
    /**
     * The top position of the Line.
     *
     * @name Phaser.Geom.Line#top
     * @type {number}
     * @since 3.0.0
     */
    public var top:Float;
    /**
     * The bottom position of the Line.
     *
     * @name Phaser.Geom.Line#bottom
     * @type {number}
     * @since 3.0.0
     */
    public var bottom:Float;
    /**
     * Calculate the angle of the line in radians.
     *
     * @function Phaser.Geom.Line.Angle
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} line - The line to calculate the angle of.
     *
     * @return {number} The angle of the line, in radians.
     */
    public function Angle(line:phaser.geom.Line):Float;
    /**
     * Using Bresenham's line algorithm this will return an array of all coordinates on this line.
     *
     * The `start` and `end` points are rounded before this runs as the algorithm works on integers.
     *
     * @function Phaser.Geom.Line.BresenhamPoints
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} line - The line.
     * @param {integer} [stepRate=1] - The optional step rate for the points on the line.
     * @param {array} [results] - An optional array to push the resulting coordinates into.
     *
     * @return {object[]} The array of coordinates on the line.
     */
    public function BresenhamPoints(line:phaser.geom.Line, ?stepRate:Int, ?results:Array<Dynamic>):Array<Dynamic>;
    /**
     * Center a line on the given coordinates.
     *
     * @function Phaser.Geom.Line.CenterOn
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} line - The line to center.
     * @param {number} x - The horizontal coordinate to center the line on.
     * @param {number} y - The vertical coordinate to center the line on.
     *
     * @return {Phaser.Geom.Line} The centered line.
     */
    public function CenterOn(line:phaser.geom.Line, x:Float, y:Float):phaser.geom.Line;
    /**
     * Clone the given line.
     *
     * @function Phaser.Geom.Line.Clone
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} source - The source line to clone.
     *
     * @return {Phaser.Geom.Line} The cloned line.
     */
    public function Clone(source:phaser.geom.Line):phaser.geom.Line;
    /**
     * Copy the values of one line to a destination line.
     *
     * @function Phaser.Geom.Line.CopyFrom
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Line} O - [dest,$return]
     *
     * @param {Phaser.Geom.Line} source - The source line to copy the values from.
     * @param {Phaser.Geom.Line} dest - The destination line to copy the values to.
     *
     * @return {Phaser.Geom.Line} The destination line.
     */
    public function CopyFrom(source:phaser.geom.Line, dest:phaser.geom.Line):phaser.geom.Line;
    /**
     * Compare two lines for strict equality.
     *
     * @function Phaser.Geom.Line.Equals
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} line - The first line to compare.
     * @param {Phaser.Geom.Line} toCompare - The second line to compare.
     *
     * @return {boolean} Whether the two lines are equal.
     */
    public function Equals(line:phaser.geom.Line, toCompare:phaser.geom.Line):Bool;
    /**
     * Extends the start and end points of a Line by the given amounts.
     *
     * The amounts can be positive or negative. Positive points will increase the length of the line,
     * while negative ones will decrease it.
     *
     * If no `right` value is provided it will extend the length of the line equally in both directions.
     *
     * Pass a value of zero to leave the start or end point unchanged.
     *
     * @function Phaser.Geom.Line.Extend
     * @since 3.16.0
     *
     * @param {Phaser.Geom.Line} line - The line instance to extend.
     * @param {number} left - The amount to extend the start of the line by.
     * @param {number} [right] - The amount to extend the end of the line by. If not given it will be set to the `left` value.
     *
     * @return {Phaser.Geom.Line} The modified Line instance.
     */
    public function Extend(line:phaser.geom.Line, left:Float, ?right:Float):phaser.geom.Line;
    /**
     * Get the midpoint of the given line.
     *
     * @function Phaser.Geom.Line.GetMidPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Line} line - The line to get the midpoint of.
     * @param {(Phaser.Geom.Point|object)} [out] - An optional point object to store the midpoint in.
     *
     * @return {(Phaser.Geom.Point|object)} The midpoint of the Line.
     */
    public function GetMidPoint(line:phaser.geom.Line, ?out:Dynamic):phaser.geom.Point;
    /**
     * Get the nearest point on a line perpendicular to the given point.
     *
     * @function Phaser.Geom.Line.GetNearestPoint
     * @since 3.16.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Line} line - The line to get the nearest point on.
     * @param {(Phaser.Geom.Point|object)} point - The point to get the nearest point to.
     * @param {(Phaser.Geom.Point|object)} [out] - An optional point, or point-like object, to store the coordinates of the nearest point on the line.
     *
     * @return {(Phaser.Geom.Point|object)} The nearest point on the line.
     */
    public function GetNearestPoint(line:phaser.geom.Line, point:Dynamic, ?out:Dynamic):phaser.geom.Point;
    /**
     * Calculate the normal of the given line.
     *
     * The normal of a line is a vector that points perpendicular from it.
     *
     * @function Phaser.Geom.Line.GetNormal
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Line} line - The line to calculate the normal of.
     * @param {(Phaser.Geom.Point|object)} [out] - An optional point object to store the normal in.
     *
     * @return {(Phaser.Geom.Point|object)} The normal of the Line.
     */
    public function GetNormal(line:phaser.geom.Line, ?out:Dynamic):phaser.geom.Point;
    /**
     * Get a point on a line that's a given percentage along its length.
     *
     * @function Phaser.Geom.Line.GetPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Line} line - The line.
     * @param {number} position - A value between 0 and 1, where 0 is the start, 0.5 is the middle and 1 is the end of the line.
     * @param {(Phaser.Geom.Point|object)} [out] - An optional point, or point-like object, to store the coordinates of the point on the line.
     *
     * @return {(Phaser.Geom.Point|object)} The point on the line.
     */
    public function GetPoint(line:phaser.geom.Line, position:Float, ?out:Dynamic):phaser.geom.Point;
    /**
     * Get a number of points along a line's length.
     *
     * Provide a `quantity` to get an exact number of points along the line.
     *
     * Provide a `stepRate` to ensure a specific distance between each point on the line. Set `quantity` to `0` when
     * providing a `stepRate`.
     *
     * @function Phaser.Geom.Line.GetPoints
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point[]} O - [out,$return]
     *
     * @param {Phaser.Geom.Line} line - The line.
     * @param {integer} quantity - The number of points to place on the line. Set to `0` to use `stepRate` instead.
     * @param {number} [stepRate] - The distance between each point on the line. When set, `quantity` is implied and should be set to `0`.
     * @param {(array|Phaser.Geom.Point[])} [out] - An optional array of Points, or point-like objects, to store the coordinates of the points on the line.
     *
     * @return {(array|Phaser.Geom.Point[])} An array of Points, or point-like objects, containing the coordinates of the points on the line.
     */
    public function GetPoints(line:phaser.geom.Line, quantity:Int, ?stepRate:Float, ?out:Dynamic):Array<Dynamic>;
    /**
     * Get the shortest distance from a Line to the given Point.
     *
     * @function Phaser.Geom.Line.GetShortestDistance
     * @since 3.16.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Line} line - The line to get the distance from.
     * @param {(Phaser.Geom.Point|object)} point - The point to get the shortest distance to.
     *
     * @return {number} The shortest distance from the line to the point.
     */
    public function GetShortestDistance(line:phaser.geom.Line, point:Dynamic):Float;
    /**
     * Calculate the height of the given line.
     *
     * @function Phaser.Geom.Line.Height
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} line - The line to calculate the height of.
     *
     * @return {number} The height of the line.
     */
    public function Height(line:phaser.geom.Line):Float;
    /**
     * Calculate the length of the given line.
     *
     * @function Phaser.Geom.Line.Length
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} line - The line to calculate the length of.
     *
     * @return {number} The length of the line.
     */
    public function Length(line:phaser.geom.Line):Float;
    /**
     * Get a point on a line that's a given percentage along its length.
     *
     * @method Phaser.Geom.Line#getPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [output,$return]
     *
     * @param {number} position - A value between 0 and 1, where 0 is the start, 0.5 is the middle and 1 is the end of the line.
     * @param {(Phaser.Geom.Point|object)} [output] - An optional point, or point-like object, to store the coordinates of the point on the line.
     *
     * @return {(Phaser.Geom.Point|object)} A Point, or point-like object, containing the coordinates of the point on the line.
     */
    public function getPoint(position:Float, ?output:Dynamic):phaser.geom.Point;
    /**
     * Get a number of points along a line's length.
     *
     * Provide a `quantity` to get an exact number of points along the line.
     *
     * Provide a `stepRate` to ensure a specific distance between each point on the line. Set `quantity` to `0` when
     * providing a `stepRate`.
     *
     * @method Phaser.Geom.Line#getPoints
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [output,$return]
     *
     * @param {integer} quantity - The number of points to place on the line. Set to `0` to use `stepRate` instead.
     * @param {integer} [stepRate] - The distance between each point on the line. When set, `quantity` is implied and should be set to `0`.
     * @param {(array|Phaser.Geom.Point[])} [output] - An optional array of Points, or point-like objects, to store the coordinates of the points on the line.
     *
     * @return {(array|Phaser.Geom.Point[])} An array of Points, or point-like objects, containing the coordinates of the points on the line.
     */
    public function getPoints(quantity:Int, ?stepRate:Int, ?output:Dynamic):Array<Dynamic>;
    /**
     * Get a random Point on the Line.
     *
     * @method Phaser.Geom.Line#getRandomPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [point,$return]
     *
     * @param {(Phaser.Geom.Point|object)} [point] - An instance of a Point to be modified.
     *
     * @return {Phaser.Geom.Point} A random Point on the Line.
     */
    public function getRandomPoint(?point:Dynamic):phaser.geom.Point;
    /**
     * Set new coordinates for the line endpoints.
     *
     * @method Phaser.Geom.Line#setTo
     * @since 3.0.0
     *
     * @param {number} [x1=0] - The x coordinate of the lines starting point.
     * @param {number} [y1=0] - The y coordinate of the lines starting point.
     * @param {number} [x2=0] - The x coordinate of the lines ending point.
     * @param {number} [y2=0] - The y coordinate of the lines ending point.
     *
     * @return {Phaser.Geom.Line} This Line object.
     */
    public function setTo(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float):phaser.geom.Line;
    /**
     * Returns a Vector2 object that corresponds to the start of this Line.
     *
     * @method Phaser.Geom.Line#getPointA
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [vec2,$return]
     *
     * @param {Phaser.Math.Vector2} [vec2] - A Vector2 object to set the results in. If `undefined` a new Vector2 will be created.
     *
     * @return {Phaser.Math.Vector2} A Vector2 object that corresponds to the start of this Line.
     */
    public function getPointA(?vec2:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Returns a Vector2 object that corresponds to the end of this Line.
     *
     * @method Phaser.Geom.Line#getPointB
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [vec2,$return]
     *
     * @param {Phaser.Math.Vector2} [vec2] - A Vector2 object to set the results in. If `undefined` a new Vector2 will be created.
     *
     * @return {Phaser.Math.Vector2} A Vector2 object that corresponds to the end of this Line.
     */
    public function getPointB(?vec2:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Get the angle of the normal of the given line in radians.
     *
     * @function Phaser.Geom.Line.NormalAngle
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} line - The line to calculate the angle of the normal of.
     *
     * @return {number} The angle of the normal of the line in radians.
     */
    public function NormalAngle(line:phaser.geom.Line):Float;
    /**
     * [description]
     *
     * @function Phaser.Geom.Line.NormalX
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} line - The Line object to get the normal value from.
     *
     * @return {number} [description]
     */
    public function NormalX(line:phaser.geom.Line):Float;
    /**
     * The Y value of the normal of the given line.
     * The normal of a line is a vector that points perpendicular from it.
     *
     * @function Phaser.Geom.Line.NormalY
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} line - The line to calculate the normal of.
     *
     * @return {number} The Y value of the normal of the Line.
     */
    public function NormalY(line:phaser.geom.Line):Float;
    /**
     * Offset a line by the given amount.
     *
     * @function Phaser.Geom.Line.Offset
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Line} O - [line,$return]
     *
     * @param {Phaser.Geom.Line} line - The line to offset.
     * @param {number} x - The horizontal offset to add to the line.
     * @param {number} y - The vertical offset to add to the line.
     *
     * @return {Phaser.Geom.Line} The offset line.
     */
    public function Offset(line:phaser.geom.Line, x:Float, y:Float):phaser.geom.Line;
    /**
     * Calculate the perpendicular slope of the given line.
     *
     * @function Phaser.Geom.Line.PerpSlope
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} line - The line to calculate the perpendicular slope of.
     *
     * @return {number} The perpendicular slope of the line.
     */
    public function PerpSlope(line:phaser.geom.Line):Float;
    /**
     * Returns a random point on a given Line.
     *
     * @function Phaser.Geom.Line.Random
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Line} line - The Line to calculate the random Point on.
     * @param {(Phaser.Geom.Point|object)} [out] - An instance of a Point to be modified.
     *
     * @return {(Phaser.Geom.Point|object)} A random Point on the Line.
     */
    public function Random(line:phaser.geom.Line, ?out:Dynamic):phaser.geom.Point;
    /**
     * Calculate the reflected angle between two lines.
     *
     * This is the outgoing angle based on the angle of Line 1 and the normalAngle of Line 2.
     *
     * @function Phaser.Geom.Line.ReflectAngle
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} lineA - The first line.
     * @param {Phaser.Geom.Line} lineB - The second line.
     *
     * @return {number} The reflected angle between each line.
     */
    public function ReflectAngle(lineA:phaser.geom.Line, lineB:phaser.geom.Line):Float;
    /**
     * Rotate a line around its midpoint by the given angle in radians.
     *
     * @function Phaser.Geom.Line.Rotate
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Line} O - [line,$return]
     *
     * @param {Phaser.Geom.Line} line - The line to rotate.
     * @param {number} angle - The angle of rotation in radians.
     *
     * @return {Phaser.Geom.Line} The rotated line.
     */
    public function Rotate(line:phaser.geom.Line, angle:Float):phaser.geom.Line;
    /**
     * Rotate a line around a point by the given angle in radians.
     *
     * @function Phaser.Geom.Line.RotateAroundPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Line} O - [line,$return]
     *
     * @param {Phaser.Geom.Line} line - The line to rotate.
     * @param {(Phaser.Geom.Point|object)} point - The point to rotate the line around.
     * @param {number} angle - The angle of rotation in radians.
     *
     * @return {Phaser.Geom.Line} The rotated line.
     */
    public function RotateAroundPoint(line:phaser.geom.Line, point:Dynamic, angle:Float):phaser.geom.Line;
    /**
     * Rotate a line around the given coordinates by the given angle in radians.
     *
     * @function Phaser.Geom.Line.RotateAroundXY
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Line} O - [line,$return]
     *
     * @param {Phaser.Geom.Line} line - The line to rotate.
     * @param {number} x - The horizontal coordinate to rotate the line around.
     * @param {number} y - The vertical coordinate to rotate the line around.
     * @param {number} angle - The angle of rotation in radians.
     *
     * @return {Phaser.Geom.Line} The rotated line.
     */
    public function RotateAroundXY(line:phaser.geom.Line, x:Float, y:Float, angle:Float):phaser.geom.Line;
    /**
     * Set a line to a given position, angle and length.
     *
     * @function Phaser.Geom.Line.SetToAngle
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Line} O - [line,$return]
     *
     * @param {Phaser.Geom.Line} line - The line to set.
     * @param {number} x - The horizontal start position of the line.
     * @param {number} y - The vertical start position of the line.
     * @param {number} angle - The angle of the line in radians.
     * @param {number} length - The length of the line.
     *
     * @return {Phaser.Geom.Line} The updated line.
     */
    public function SetToAngle(line:phaser.geom.Line, x:Float, y:Float, angle:Float, length:Float):phaser.geom.Line;
    /**
     * Calculate the slope of the given line.
     *
     * @function Phaser.Geom.Line.Slope
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} line - The line to calculate the slope of.
     *
     * @return {number} The slope of the line.
     */
    public function Slope(line:phaser.geom.Line):Float;
    /**
     * Calculate the width of the given line.
     *
     * @function Phaser.Geom.Line.Width
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} line - The line to calculate the width of.
     *
     * @return {number} The width of the line.
     */
    public function Width(line:phaser.geom.Line):Float;
}
