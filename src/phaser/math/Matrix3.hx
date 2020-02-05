package phaser.math;

/**
 * @classdesc
 * A three-dimensional matrix.
 *
 * Defaults to the identity matrix when instantiated.
 *
 * @class Matrix3
 * @memberof Phaser.Math
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Math.Matrix3} [m] - Optional Matrix3 to copy values from.
 */
@:native("Phaser.Math.Matrix3")
extern class Matrix3 {
    public function new(?m:phaser.math.Matrix3);
    /**
     * The matrix values.
     *
     * @name Phaser.Math.Matrix3#val
     * @type {Float32Array}
     * @since 3.0.0
     */
    public var val:js.lib.Float32Array;
    /**
     * Make a clone of this Matrix3.
     *
     * @method Phaser.Math.Matrix3#clone
     * @since 3.0.0
     *
     * @return {Phaser.Math.Matrix3} A clone of this Matrix3.
     */
    public function clone():phaser.math.Matrix3;
    /**
     * This method is an alias for `Matrix3.copy`.
     *
     * @method Phaser.Math.Matrix3#set
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix3} src - The Matrix to set the values of this Matrix's from.
     *
     * @return {Phaser.Math.Matrix3} This Matrix3.
     */
    public function set(src:phaser.math.Matrix3):phaser.math.Matrix3;
    /**
     * Copy the values of a given Matrix into this Matrix.
     *
     * @method Phaser.Math.Matrix3#copy
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix3} src - The Matrix to copy the values from.
     *
     * @return {Phaser.Math.Matrix3} This Matrix3.
     */
    public function copy(src:phaser.math.Matrix3):phaser.math.Matrix3;
    /**
     * Copy the values of a given Matrix4 into this Matrix3.
     *
     * @method Phaser.Math.Matrix3#fromMat4
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix4} m - The Matrix4 to copy the values from.
     *
     * @return {Phaser.Math.Matrix3} This Matrix3.
     */
    public function fromMat4(m:phaser.math.Matrix4):phaser.math.Matrix3;
    /**
     * Set the values of this Matrix from the given array.
     *
     * @method Phaser.Math.Matrix3#fromArray
     * @since 3.0.0
     *
     * @param {array} a - The array to copy the values from.
     *
     * @return {Phaser.Math.Matrix3} This Matrix3.
     */
    public function fromArray(a:Array<Dynamic>):phaser.math.Matrix3;
    /**
     * Reset this Matrix to an identity (default) matrix.
     *
     * @method Phaser.Math.Matrix3#identity
     * @since 3.0.0
     *
     * @return {Phaser.Math.Matrix3} This Matrix3.
     */
    public function identity():phaser.math.Matrix3;
    /**
     * Transpose this Matrix.
     *
     * @method Phaser.Math.Matrix3#transpose
     * @since 3.0.0
     *
     * @return {Phaser.Math.Matrix3} This Matrix3.
     */
    public function transpose():phaser.math.Matrix3;
    /**
     * Invert this Matrix.
     *
     * @method Phaser.Math.Matrix3#invert
     * @since 3.0.0
     *
     * @return {Phaser.Math.Matrix3} This Matrix3.
     */
    public function invert():phaser.math.Matrix3;
    /**
     * Calculate the adjoint, or adjugate, of this Matrix.
     *
     * @method Phaser.Math.Matrix3#adjoint
     * @since 3.0.0
     *
     * @return {Phaser.Math.Matrix3} This Matrix3.
     */
    public function adjoint():phaser.math.Matrix3;
    /**
     * Calculate the determinant of this Matrix.
     *
     * @method Phaser.Math.Matrix3#determinant
     * @since 3.0.0
     *
     * @return {number} The determinant of this Matrix.
     */
    public function determinant():Float;
    /**
     * Multiply this Matrix by the given Matrix.
     *
     * @method Phaser.Math.Matrix3#multiply
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix3} src - The Matrix to multiply this Matrix by.
     *
     * @return {Phaser.Math.Matrix3} This Matrix3.
     */
    public function multiply(src:phaser.math.Matrix3):phaser.math.Matrix3;
    /**
     * Translate this Matrix using the given Vector.
     *
     * @method Phaser.Math.Matrix3#translate
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3|Phaser.Math.Vector4)} v - The Vector to translate this Matrix with.
     *
     * @return {Phaser.Math.Matrix3} This Matrix3.
     */
    public function translate(v:Dynamic):phaser.math.Matrix3;
    /**
     * Apply a rotation transformation to this Matrix.
     *
     * @method Phaser.Math.Matrix3#rotate
     * @since 3.0.0
     *
     * @param {number} rad - The angle in radians to rotate by.
     *
     * @return {Phaser.Math.Matrix3} This Matrix3.
     */
    public function rotate(rad:Float):phaser.math.Matrix3;
    /**
     * Apply a scale transformation to this Matrix.
     *
     * Uses the `x` and `y` components of the given Vector to scale the Matrix.
     *
     * @method Phaser.Math.Matrix3#scale
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2|Phaser.Math.Vector3|Phaser.Math.Vector4)} v - The Vector to scale this Matrix with.
     *
     * @return {Phaser.Math.Matrix3} This Matrix3.
     */
    public function scale(v:Dynamic):phaser.math.Matrix3;
    /**
     * Set the values of this Matrix from the given Quaternion.
     *
     * @method Phaser.Math.Matrix3#fromQuat
     * @since 3.0.0
     *
     * @param {Phaser.Math.Quaternion} q - The Quaternion to set the values of this Matrix from.
     *
     * @return {Phaser.Math.Matrix3} This Matrix3.
     */
    public function fromQuat(q:phaser.math.Quaternion):phaser.math.Matrix3;
    /**
     * [description]
     *
     * @method Phaser.Math.Matrix3#normalFromMat4
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix4} m - [description]
     *
     * @return {Phaser.Math.Matrix3} This Matrix3.
     */
    public function normalFromMat4(m:phaser.math.Matrix4):phaser.math.Matrix3;
}
