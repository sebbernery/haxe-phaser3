package phaser.math;

/**
 * @classdesc
 * A representation of a vector in 4D space.
 *
 * A four-component vector.
 *
 * @class Vector4
 * @memberof Phaser.Math
 * @constructor
 * @since 3.0.0
 *
 * @param {number} [x] - The x component.
 * @param {number} [y] - The y component.
 * @param {number} [z] - The z component.
 * @param {number} [w] - The w component.
 */
@:native("Phaser.Math.Vector4")
extern class Vector4 {
    public function new(?x:Float, ?y:Float, ?z:Float, ?w:Float);
    /**
     * The x component of this Vector.
     *
     * @name Phaser.Math.Vector4#x
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y component of this Vector.
     *
     * @name Phaser.Math.Vector4#y
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The z component of this Vector.
     *
     * @name Phaser.Math.Vector4#z
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var z:Float;
    /**
     * The w component of this Vector.
     *
     * @name Phaser.Math.Vector4#w
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var w:Float;
    /**
     * Make a clone of this Vector4.
     *
     * @method Phaser.Math.Vector4#clone
     * @since 3.0.0
     *
     * @return {Phaser.Math.Vector4} A clone of this Vector4.
     */
    public function clone():phaser.math.Vector4;
    /**
     * Copy the components of a given Vector into this Vector.
     *
     * @method Phaser.Math.Vector4#copy
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector4} src - The Vector to copy the components from.
     *
     * @return {Phaser.Math.Vector4} This Vector4.
     */
    public function copy(src:phaser.math.Vector4):phaser.math.Vector4;
    /**
     * Check whether this Vector is equal to a given Vector.
     *
     * Performs a strict quality check against each Vector's components.
     *
     * @method Phaser.Math.Vector4#equals
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector4} v - The vector to check equality with.
     *
     * @return {boolean} A boolean indicating whether the two Vectors are equal or not.
     */
    public function equals(v:phaser.math.Vector4):Bool;
    /**
     * Set the `x`, `y`, `z` and `w` components of the this Vector to the given `x`, `y`, `z` and `w` values.
     *
     * @method Phaser.Math.Vector4#set
     * @since 3.0.0
     *
     * @param {(number|object)} x - The x value to set for this Vector, or an object containing x, y, z and w components.
     * @param {number} y - The y value to set for this Vector.
     * @param {number} z - The z value to set for this Vector.
     * @param {number} w - The z value to set for this Vector.
     *
     * @return {Phaser.Math.Vector4} This Vector4.
     */
    public function set(x:Dynamic, y:Float, z:Float, w:Float):phaser.math.Vector4;
    /**
     * Add a given Vector to this Vector. Addition is component-wise.
     *
     * @method Phaser.Math.Vector4#add
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3|Phaser.Math.Vector4)} v - The Vector to add to this Vector.
     *
     * @return {Phaser.Math.Vector4} This Vector4.
     */
    public function add(v:Dynamic):phaser.math.Vector4;
    /**
     * Subtract the given Vector from this Vector. Subtraction is component-wise.
     *
     * @method Phaser.Math.Vector4#subtract
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3|Phaser.Math.Vector4)} v - The Vector to subtract from this Vector.
     *
     * @return {Phaser.Math.Vector4} This Vector4.
     */
    public function subtract(v:Dynamic):phaser.math.Vector4;
    /**
     * Scale this Vector by the given value.
     *
     * @method Phaser.Math.Vector4#scale
     * @since 3.0.0
     *
     * @param {number} scale - The value to scale this Vector by.
     *
     * @return {Phaser.Math.Vector4} This Vector4.
     */
    public function scale(scale:Float):phaser.math.Vector4;
    /**
     * Calculate the length (or magnitude) of this Vector.
     *
     * @method Phaser.Math.Vector4#length
     * @since 3.0.0
     *
     * @return {number} The length of this Vector.
     */
    public function length():Float;
    /**
     * Calculate the length of this Vector squared.
     *
     * @method Phaser.Math.Vector4#lengthSq
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
     * @method Phaser.Math.Vector4#normalize
     * @since 3.0.0
     *
     * @return {Phaser.Math.Vector4} This Vector4.
     */
    public function normalize():phaser.math.Vector4;
    /**
     * Calculate the dot product of this Vector and the given Vector.
     *
     * @method Phaser.Math.Vector4#dot
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector4} v - The Vector4 to dot product with this Vector4.
     *
     * @return {number} The dot product of this Vector and the given Vector.
     */
    public function dot(v:phaser.math.Vector4):Float;
    /**
     * Linearly interpolate between this Vector and the given Vector.
     *
     * Interpolates this Vector towards the given Vector.
     *
     * @method Phaser.Math.Vector4#lerp
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector4} v - The Vector4 to interpolate towards.
     * @param {number} [t=0] - The interpolation percentage, between 0 and 1.
     *
     * @return {Phaser.Math.Vector4} This Vector4.
     */
    public function lerp(v:phaser.math.Vector4, ?t:Float):phaser.math.Vector4;
    /**
     * Perform a component-wise multiplication between this Vector and the given Vector.
     *
     * Multiplies this Vector by the given Vector.
     *
     * @method Phaser.Math.Vector4#multiply
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3|Phaser.Math.Vector4)} v - The Vector to multiply this Vector by.
     *
     * @return {Phaser.Math.Vector4} This Vector4.
     */
    public function multiply(v:Dynamic):phaser.math.Vector4;
    /**
     * Perform a component-wise division between this Vector and the given Vector.
     *
     * Divides this Vector by the given Vector.
     *
     * @method Phaser.Math.Vector4#divide
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3|Phaser.Math.Vector4)} v - The Vector to divide this Vector by.
     *
     * @return {Phaser.Math.Vector4} This Vector4.
     */
    public function divide(v:Dynamic):phaser.math.Vector4;
    /**
     * Calculate the distance between this Vector and the given Vector.
     *
     * @method Phaser.Math.Vector4#distance
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3|Phaser.Math.Vector4)} v - The Vector to calculate the distance to.
     *
     * @return {number} The distance from this Vector to the given Vector.
     */
    public function distance(v:Dynamic):Float;
    /**
     * Calculate the distance between this Vector and the given Vector, squared.
     *
     * @method Phaser.Math.Vector4#distanceSq
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3|Phaser.Math.Vector4)} v - The Vector to calculate the distance to.
     *
     * @return {number} The distance from this Vector to the given Vector, squared.
     */
    public function distanceSq(v:Dynamic):Float;
    /**
     * Negate the `x`, `y`, `z` and `w` components of this Vector.
     *
     * @method Phaser.Math.Vector4#negate
     * @since 3.0.0
     *
     * @return {Phaser.Math.Vector4} This Vector4.
     */
    public function negate():phaser.math.Vector4;
    /**
     * Transform this Vector with the given Matrix.
     *
     * @method Phaser.Math.Vector4#transformMat4
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix4} mat - The Matrix4 to transform this Vector4 with.
     *
     * @return {Phaser.Math.Vector4} This Vector4.
     */
    public function transformMat4(mat:phaser.math.Matrix4):phaser.math.Vector4;
    /**
     * Transform this Vector with the given Quaternion.
     *
     * @method Phaser.Math.Vector4#transformQuat
     * @since 3.0.0
     *
     * @param {Phaser.Math.Quaternion} q - The Quaternion to transform this Vector with.
     *
     * @return {Phaser.Math.Vector4} This Vector4.
     */
    public function transformQuat(q:phaser.math.Quaternion):phaser.math.Vector4;
    /**
     * Make this Vector the zero vector (0, 0, 0, 0).
     *
     * @method Phaser.Math.Vector4#reset
     * @since 3.0.0
     *
     * @return {Phaser.Math.Vector4} This Vector4.
     */
    public function reset():phaser.math.Vector4;
}
