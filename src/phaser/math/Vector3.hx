package phaser.math;

/**
 * @classdesc
 * A representation of a vector in 3D space.
 *
 * A three-component vector.
 *
 * @class Vector3
 * @memberof Phaser.Math
 * @constructor
 * @since 3.0.0
 *
 * @param {number} [x] - The x component.
 * @param {number} [y] - The y component.
 * @param {number} [z] - The z component.
 */
@:native("Phaser.Math.Vector3")
extern class Vector3 {
    public function new(?x:Float, ?y:Float, ?z:Float);
    /**
     * The x component of this Vector.
     *
     * @name Phaser.Math.Vector3#x
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y component of this Vector.
     *
     * @name Phaser.Math.Vector3#y
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The z component of this Vector.
     *
     * @name Phaser.Math.Vector3#z
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var z:Float;
    /**
     * Set this Vector to point up.
     *
     * Sets the y component of the vector to 1, and the others to 0.
     *
     * @method Phaser.Math.Vector3#up
     * @since 3.0.0
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function up():phaser.math.Vector3;
    /**
     * Make a clone of this Vector3.
     *
     * @method Phaser.Math.Vector3#clone
     * @since 3.0.0
     *
     * @return {Phaser.Math.Vector3} A new Vector3 object containing this Vectors values.
     */
    public function clone():phaser.math.Vector3;
    /**
     * Calculate the cross (vector) product of two given Vectors.
     *
     * @method Phaser.Math.Vector3#crossVectors
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector3} a - The first Vector to multiply.
     * @param {Phaser.Math.Vector3} b - The second Vector to multiply.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function crossVectors(a:phaser.math.Vector3, b:phaser.math.Vector3):phaser.math.Vector3;
    /**
     * Check whether this Vector is equal to a given Vector.
     *
     * Performs a strict equality check against each Vector's components.
     *
     * @method Phaser.Math.Vector3#equals
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector3} v - The Vector3 to compare against.
     *
     * @return {boolean} True if the two vectors strictly match, otherwise false.
     */
    public function equals(v:phaser.math.Vector3):Bool;
    /**
     * Copy the components of a given Vector into this Vector.
     *
     * @method Phaser.Math.Vector3#copy
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3)} src - The Vector to copy the components from.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function copy(src:Dynamic):phaser.math.Vector3;
    /**
     * Set the `x`, `y`, and `z` components of this Vector to the given `x`, `y`, and `z` values.
     *
     * @method Phaser.Math.Vector3#set
     * @since 3.0.0
     *
     * @param {(number|object)} x - The x value to set for this Vector, or an object containing x, y and z components.
     * @param {number} [y] - The y value to set for this Vector.
     * @param {number} [z] - The z value to set for this Vector.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function set(x:Dynamic, ?y:Float, ?z:Float):phaser.math.Vector3;
    /**
     * Add a given Vector to this Vector. Addition is component-wise.
     *
     * @method Phaser.Math.Vector3#add
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3)} v - The Vector to add to this Vector.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function add(v:Dynamic):phaser.math.Vector3;
    /**
     * Subtract the given Vector from this Vector. Subtraction is component-wise.
     *
     * @method Phaser.Math.Vector3#subtract
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3)} v - The Vector to subtract from this Vector.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function subtract(v:Dynamic):phaser.math.Vector3;
    /**
     * Perform a component-wise multiplication between this Vector and the given Vector.
     *
     * Multiplies this Vector by the given Vector.
     *
     * @method Phaser.Math.Vector3#multiply
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3)} v - The Vector to multiply this Vector by.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function multiply(v:Dynamic):phaser.math.Vector3;
    /**
     * Scale this Vector by the given value.
     *
     * @method Phaser.Math.Vector3#scale
     * @since 3.0.0
     *
     * @param {number} scale - The value to scale this Vector by.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function scale(scale:Float):phaser.math.Vector3;
    /**
     * Perform a component-wise division between this Vector and the given Vector.
     *
     * Divides this Vector by the given Vector.
     *
     * @method Phaser.Math.Vector3#divide
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3)} v - The Vector to divide this Vector by.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function divide(v:Dynamic):phaser.math.Vector3;
    /**
     * Negate the `x`, `y` and `z` components of this Vector.
     *
     * @method Phaser.Math.Vector3#negate
     * @since 3.0.0
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function negate():phaser.math.Vector3;
    /**
     * Calculate the distance between this Vector and the given Vector.
     *
     * @method Phaser.Math.Vector3#distance
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3)} v - The Vector to calculate the distance to.
     *
     * @return {number} The distance from this Vector to the given Vector.
     */
    public function distance(v:Dynamic):Float;
    /**
     * Calculate the distance between this Vector and the given Vector, squared.
     *
     * @method Phaser.Math.Vector3#distanceSq
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3)} v - The Vector to calculate the distance to.
     *
     * @return {number} The distance from this Vector to the given Vector, squared.
     */
    public function distanceSq(v:Dynamic):Float;
    /**
     * Calculate the length (or magnitude) of this Vector.
     *
     * @method Phaser.Math.Vector3#length
     * @since 3.0.0
     *
     * @return {number} The length of this Vector.
     */
    public function length():Float;
    /**
     * Calculate the length of this Vector squared.
     *
     * @method Phaser.Math.Vector3#lengthSq
     * @since 3.0.0
     *
     * @return {number} The length of this Vector, squared.
     */
    public function lengthSq():Float;
    /**
     * Normalize this Vector.
     *
     * Makes the vector a unit length vector (magnitude of 1) in the same direction.
     *
     * @method Phaser.Math.Vector3#normalize
     * @since 3.0.0
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function normalize():phaser.math.Vector3;
    /**
     * Calculate the dot product of this Vector and the given Vector.
     *
     * @method Phaser.Math.Vector3#dot
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector3} v - The Vector3 to dot product with this Vector3.
     *
     * @return {number} The dot product of this Vector and `v`.
     */
    public function dot(v:phaser.math.Vector3):Float;
    /**
     * Calculate the cross (vector) product of this Vector (which will be modified) and the given Vector.
     *
     * @method Phaser.Math.Vector3#cross
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector3} v - The Vector to cross product with.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function cross(v:phaser.math.Vector3):phaser.math.Vector3;
    /**
     * Linearly interpolate between this Vector and the given Vector.
     *
     * Interpolates this Vector towards the given Vector.
     *
     * @method Phaser.Math.Vector3#lerp
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector3} v - The Vector3 to interpolate towards.
     * @param {number} [t=0] - The interpolation percentage, between 0 and 1.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function lerp(v:phaser.math.Vector3, ?t:Float):phaser.math.Vector3;
    /**
     * Transform this Vector with the given Matrix.
     *
     * @method Phaser.Math.Vector3#transformMat3
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix3} mat - The Matrix3 to transform this Vector3 with.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function transformMat3(mat:phaser.math.Matrix3):phaser.math.Vector3;
    /**
     * Transform this Vector with the given Matrix.
     *
     * @method Phaser.Math.Vector3#transformMat4
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix4} mat - The Matrix4 to transform this Vector3 with.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function transformMat4(mat:phaser.math.Matrix4):phaser.math.Vector3;
    /**
     * [description]
     *
     * @method Phaser.Math.Vector3#transformCoordinates
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix4} mat - The Matrix4 to transform this Vector3 with.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function transformCoordinates(mat:phaser.math.Matrix4):phaser.math.Vector3;
    /**
     * Transform this Vector with the given Quaternion.
     *
     * @method Phaser.Math.Vector3#transformQuat
     * @since 3.0.0
     *
     * @param {Phaser.Math.Quaternion} q - The Quaternion to transform this Vector with.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function transformQuat(q:phaser.math.Quaternion):phaser.math.Vector3;
    /**
     * Multiplies this Vector3 by the specified matrix, applying a W divide. This is useful for projection,
     * e.g. unprojecting a 2D point into 3D space.
     *
     * @method Phaser.Math.Vector3#project
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix4} mat - The Matrix4 to multiply this Vector3 with.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function project(mat:phaser.math.Matrix4):phaser.math.Vector3;
    /**
     * Unproject this point from 2D space to 3D space.
     * The point should have its x and y properties set to
     * 2D screen space, and the z either at 0 (near plane)
     * or 1 (far plane). The provided matrix is assumed to already
     * be combined, i.e. projection * view * model.
     *
     * After this operation, this vector's (x, y, z) components will
     * represent the unprojected 3D coordinate.
     *
     * @method Phaser.Math.Vector3#unproject
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector4} viewport - Screen x, y, width and height in pixels.
     * @param {Phaser.Math.Matrix4} invProjectionView - Combined projection and view matrix.
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function unproject(viewport:phaser.math.Vector4, invProjectionView:phaser.math.Matrix4):phaser.math.Vector3;
    /**
     * Make this Vector the zero vector (0, 0, 0).
     *
     * @method Phaser.Math.Vector3#reset
     * @since 3.0.0
     *
     * @return {Phaser.Math.Vector3} This Vector3.
     */
    public function reset():phaser.math.Vector3;
}
