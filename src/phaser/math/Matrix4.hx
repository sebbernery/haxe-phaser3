package phaser.math;

/**
 * @classdesc
 * A four-dimensional matrix.
 *
 * @class Matrix4
 * @memberof Phaser.Math
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Math.Matrix4} [m] - Optional Matrix4 to copy values from.
 */
@:native("Phaser.Math.Matrix4")
extern class Matrix4 {
    public function new(?m:phaser.math.Matrix4);
    /**
     * The matrix values.
     *
     * @name Phaser.Math.Matrix4#val
     * @type {Float32Array}
     * @since 3.0.0
     */
    public var val:js.lib.Float32Array;
    /**
     * Make a clone of this Matrix4.
     *
     * @method Phaser.Math.Matrix4#clone
     * @since 3.0.0
     *
     * @return {Phaser.Math.Matrix4} A clone of this Matrix4.
     */
    public function clone():phaser.math.Matrix4;
    /**
     * This method is an alias for `Matrix4.copy`.
     *
     * @method Phaser.Math.Matrix4#set
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix4} src - The Matrix to set the values of this Matrix's from.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function set(src:phaser.math.Matrix4):phaser.math.Matrix4;
    /**
     * Copy the values of a given Matrix into this Matrix.
     *
     * @method Phaser.Math.Matrix4#copy
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix4} src - The Matrix to copy the values from.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function copy(src:phaser.math.Matrix4):phaser.math.Matrix4;
    /**
     * Set the values of this Matrix from the given array.
     *
     * @method Phaser.Math.Matrix4#fromArray
     * @since 3.0.0
     *
     * @param {array} a - The array to copy the values from.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function fromArray(a:Array<Dynamic>):phaser.math.Matrix4;
    /**
     * Reset this Matrix.
     *
     * Sets all values to `0`.
     *
     * @method Phaser.Math.Matrix4#zero
     * @since 3.0.0
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function zero():phaser.math.Matrix4;
    /**
     * Set the `x`, `y` and `z` values of this Matrix.
     *
     * @method Phaser.Math.Matrix4#xyz
     * @since 3.0.0
     *
     * @param {number} x - The x value.
     * @param {number} y - The y value.
     * @param {number} z - The z value.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function xyz(x:Float, y:Float, z:Float):phaser.math.Matrix4;
    /**
     * Set the scaling values of this Matrix.
     *
     * @method Phaser.Math.Matrix4#scaling
     * @since 3.0.0
     *
     * @param {number} x - The x scaling value.
     * @param {number} y - The y scaling value.
     * @param {number} z - The z scaling value.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function scaling(x:Float, y:Float, z:Float):phaser.math.Matrix4;
    /**
     * Reset this Matrix to an identity (default) matrix.
     *
     * @method Phaser.Math.Matrix4#identity
     * @since 3.0.0
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function identity():phaser.math.Matrix4;
    /**
     * Transpose this Matrix.
     *
     * @method Phaser.Math.Matrix4#transpose
     * @since 3.0.0
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function transpose():phaser.math.Matrix4;
    /**
     * Invert this Matrix.
     *
     * @method Phaser.Math.Matrix4#invert
     * @since 3.0.0
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function invert():phaser.math.Matrix4;
    /**
     * Calculate the adjoint, or adjugate, of this Matrix.
     *
     * @method Phaser.Math.Matrix4#adjoint
     * @since 3.0.0
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function adjoint():phaser.math.Matrix4;
    /**
     * Calculate the determinant of this Matrix.
     *
     * @method Phaser.Math.Matrix4#determinant
     * @since 3.0.0
     *
     * @return {number} The determinant of this Matrix.
     */
    public function determinant():Float;
    /**
     * Multiply this Matrix by the given Matrix.
     *
     * @method Phaser.Math.Matrix4#multiply
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix4} src - The Matrix to multiply this Matrix by.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function multiply(src:phaser.math.Matrix4):phaser.math.Matrix4;
    /**
     * [description]
     *
     * @method Phaser.Math.Matrix4#multiplyLocal
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix4} src - [description]
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function multiplyLocal(src:phaser.math.Matrix4):phaser.math.Matrix4;
    /**
     * Translate this Matrix using the given Vector.
     *
     * @method Phaser.Math.Matrix4#translate
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector3|Phaser.Math.Vector4)} v - The Vector to translate this Matrix with.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function translate(v:Dynamic):phaser.math.Matrix4;
    /**
     * Translate this Matrix using the given values.
     *
     * @method Phaser.Math.Matrix4#translateXYZ
     * @since 3.16.0
     *
     * @param {number} x - The x component.
     * @param {number} y - The y component.
     * @param {number} z - The z component.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function translateXYZ(x:Float, y:Float, z:Float):phaser.math.Matrix4;
    /**
     * Apply a scale transformation to this Matrix.
     *
     * Uses the `x`, `y` and `z` components of the given Vector to scale the Matrix.
     *
     * @method Phaser.Math.Matrix4#scale
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector3|Phaser.Math.Vector4)} v - The Vector to scale this Matrix with.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function scale(v:Dynamic):phaser.math.Matrix4;
    /**
     * Apply a scale transformation to this Matrix.
     *
     * @method Phaser.Math.Matrix4#scaleXYZ
     * @since 3.16.0
     *
     * @param {number} x - The x component.
     * @param {number} y - The y component.
     * @param {number} z - The z component.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function scaleXYZ(x:Float, y:Float, z:Float):phaser.math.Matrix4;
    /**
     * Derive a rotation matrix around the given axis.
     *
     * @method Phaser.Math.Matrix4#makeRotationAxis
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector3|Phaser.Math.Vector4)} axis - The rotation axis.
     * @param {number} angle - The rotation angle in radians.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function makeRotationAxis(axis:Dynamic, angle:Float):phaser.math.Matrix4;
    /**
     * Apply a rotation transformation to this Matrix.
     *
     * @method Phaser.Math.Matrix4#rotate
     * @since 3.0.0
     *
     * @param {number} rad - The angle in radians to rotate by.
     * @param {Phaser.Math.Vector3} axis - The axis to rotate upon.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function rotate(rad:Float, axis:phaser.math.Vector3):phaser.math.Matrix4;
    /**
     * Rotate this matrix on its X axis.
     *
     * @method Phaser.Math.Matrix4#rotateX
     * @since 3.0.0
     *
     * @param {number} rad - The angle in radians to rotate by.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function rotateX(rad:Float):phaser.math.Matrix4;
    /**
     * Rotate this matrix on its Y axis.
     *
     * @method Phaser.Math.Matrix4#rotateY
     * @since 3.0.0
     *
     * @param {number} rad - The angle to rotate by, in radians.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function rotateY(rad:Float):phaser.math.Matrix4;
    /**
     * Rotate this matrix on its Z axis.
     *
     * @method Phaser.Math.Matrix4#rotateZ
     * @since 3.0.0
     *
     * @param {number} rad - The angle to rotate by, in radians.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function rotateZ(rad:Float):phaser.math.Matrix4;
    /**
     * Set the values of this Matrix from the given rotation Quaternion and translation Vector.
     *
     * @method Phaser.Math.Matrix4#fromRotationTranslation
     * @since 3.0.0
     *
     * @param {Phaser.Math.Quaternion} q - The Quaternion to set rotation from.
     * @param {Phaser.Math.Vector3} v - The Vector to set translation from.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function fromRotationTranslation(q:phaser.math.Quaternion, v:phaser.math.Vector3):phaser.math.Matrix4;
    /**
     * Set the values of this Matrix from the given Quaternion.
     *
     * @method Phaser.Math.Matrix4#fromQuat
     * @since 3.0.0
     *
     * @param {Phaser.Math.Quaternion} q - The Quaternion to set the values of this Matrix from.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function fromQuat(q:phaser.math.Quaternion):phaser.math.Matrix4;
    /**
     * Generate a frustum matrix with the given bounds.
     *
     * @method Phaser.Math.Matrix4#frustum
     * @since 3.0.0
     *
     * @param {number} left - The left bound of the frustum.
     * @param {number} right - The right bound of the frustum.
     * @param {number} bottom - The bottom bound of the frustum.
     * @param {number} top - The top bound of the frustum.
     * @param {number} near - The near bound of the frustum.
     * @param {number} far - The far bound of the frustum.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function frustum(left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float):phaser.math.Matrix4;
    /**
     * Generate a perspective projection matrix with the given bounds.
     *
     * @method Phaser.Math.Matrix4#perspective
     * @since 3.0.0
     *
     * @param {number} fovy - Vertical field of view in radians
     * @param {number} aspect - Aspect ratio. Typically viewport width  /height.
     * @param {number} near - Near bound of the frustum.
     * @param {number} far - Far bound of the frustum.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function perspective(fovy:Float, aspect:Float, near:Float, far:Float):phaser.math.Matrix4;
    /**
     * Generate a perspective projection matrix with the given bounds.
     *
     * @method Phaser.Math.Matrix4#perspectiveLH
     * @since 3.0.0
     *
     * @param {number} width - The width of the frustum.
     * @param {number} height - The height of the frustum.
     * @param {number} near - Near bound of the frustum.
     * @param {number} far - Far bound of the frustum.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function perspectiveLH(width:Float, height:Float, near:Float, far:Float):phaser.math.Matrix4;
    /**
     * Generate an orthogonal projection matrix with the given bounds.
     *
     * @method Phaser.Math.Matrix4#ortho
     * @since 3.0.0
     *
     * @param {number} left - The left bound of the frustum.
     * @param {number} right - The right bound of the frustum.
     * @param {number} bottom - The bottom bound of the frustum.
     * @param {number} top - The top bound of the frustum.
     * @param {number} near - The near bound of the frustum.
     * @param {number} far - The far bound of the frustum.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function ortho(left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float):phaser.math.Matrix4;
    /**
     * Generate a look-at matrix with the given eye position, focal point, and up axis.
     *
     * @method Phaser.Math.Matrix4#lookAt
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector3} eye - Position of the viewer
     * @param {Phaser.Math.Vector3} center - Point the viewer is looking at
     * @param {Phaser.Math.Vector3} up - vec3 pointing up.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function lookAt(eye:phaser.math.Vector3, center:phaser.math.Vector3, up:phaser.math.Vector3):phaser.math.Matrix4;
    /**
     * Set the values of this matrix from the given `yaw`, `pitch` and `roll` values.
     *
     * @method Phaser.Math.Matrix4#yawPitchRoll
     * @since 3.0.0
     *
     * @param {number} yaw - [description]
     * @param {number} pitch - [description]
     * @param {number} roll - [description]
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function yawPitchRoll(yaw:Float, pitch:Float, roll:Float):phaser.math.Matrix4;
    /**
     * Generate a world matrix from the given rotation, position, scale, view matrix and projection matrix.
     *
     * @method Phaser.Math.Matrix4#setWorldMatrix
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector3} rotation - The rotation of the world matrix.
     * @param {Phaser.Math.Vector3} position - The position of the world matrix.
     * @param {Phaser.Math.Vector3} scale - The scale of the world matrix.
     * @param {Phaser.Math.Matrix4} [viewMatrix] - The view matrix.
     * @param {Phaser.Math.Matrix4} [projectionMatrix] - The projection matrix.
     *
     * @return {Phaser.Math.Matrix4} This Matrix4.
     */
    public function setWorldMatrix(rotation:phaser.math.Vector3, position:phaser.math.Vector3, scale:phaser.math.Vector3, ?viewMatrix:phaser.math.Matrix4, ?projectionMatrix:phaser.math.Matrix4):phaser.math.Matrix4;
}
