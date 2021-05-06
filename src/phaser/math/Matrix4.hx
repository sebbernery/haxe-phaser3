package phaser.math;

/**
 * @classdesc
 * A four-dimensional matrix.
 *
 * Adapted from [gl-matrix](https://github.com/toji/gl-matrix) by toji
 * and [vecmath](https://github.com/mattdesl/vecmath) by mattdesl
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
     * @return {this} This Matrix4.
     */
    public function set(src:phaser.math.Matrix4):Dynamic;
    /**
     * Sets all values of this Matrix4.
     *
     * @method Phaser.Math.Matrix4#setValues
     * @since 3.50.0
     *
     * @param {number} m00 - The m00 value.
     * @param {number} m01 - The m01 value.
     * @param {number} m02 - The m02 value.
     * @param {number} m03 - The m03 value.
     * @param {number} m10 - The m10 value.
     * @param {number} m11 - The m11 value.
     * @param {number} m12 - The m12 value.
     * @param {number} m13 - The m13 value.
     * @param {number} m20 - The m20 value.
     * @param {number} m21 - The m21 value.
     * @param {number} m22 - The m22 value.
     * @param {number} m23 - The m23 value.
     * @param {number} m30 - The m30 value.
     * @param {number} m31 - The m31 value.
     * @param {number} m32 - The m32 value.
     * @param {number} m33 - The m33 value.
     *
     * @return {this} This Matrix4 instance.
     */
    public function setValues(m00:Float, m01:Float, m02:Float, m03:Float, m10:Float, m11:Float, m12:Float, m13:Float, m20:Float, m21:Float, m22:Float, m23:Float, m30:Float, m31:Float, m32:Float, m33:Float):Dynamic;
    /**
     * Copy the values of a given Matrix into this Matrix.
     *
     * @method Phaser.Math.Matrix4#copy
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix4} src - The Matrix to copy the values from.
     *
     * @return {this} This Matrix4.
     */
    public function copy(src:phaser.math.Matrix4):Dynamic;
    /**
     * Set the values of this Matrix from the given array.
     *
     * @method Phaser.Math.Matrix4#fromArray
     * @since 3.0.0
     *
     * @param {number[]} a - The array to copy the values from. Must have at least 16 elements.
     *
     * @return {this} This Matrix4.
     */
    public function fromArray(a:Array<Float>):Dynamic;
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
     * Generates a transform matrix based on the given position, scale and rotation.
     *
     * @method Phaser.Math.Matrix4#transform
     * @since 3.50.0
     *
     * @param {Phaser.Math.Vector3} position - The position vector.
     * @param {Phaser.Math.Vector3} scale - The scale vector.
     * @param {Phaser.Math.Quaternion} rotation - The rotation quaternion.
     *
     * @return {this} This Matrix4.
     */
    public function transform(position:phaser.math.Vector3, scale:phaser.math.Vector3, rotation:phaser.math.Quaternion):Dynamic;
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
     * @return {this} This Matrix4.
     */
    public function xyz(x:Float, y:Float, z:Float):Dynamic;
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
     * @return {this} This Matrix4.
     */
    public function scaling(x:Float, y:Float, z:Float):Dynamic;
    /**
     * Reset this Matrix to an identity (default) matrix.
     *
     * @method Phaser.Math.Matrix4#identity
     * @since 3.0.0
     *
     * @return {this} This Matrix4.
     */
    public function identity():Dynamic;
    /**
     * Transpose this Matrix.
     *
     * @method Phaser.Math.Matrix4#transpose
     * @since 3.0.0
     *
     * @return {this} This Matrix4.
     */
    public function transpose():Dynamic;
    /**
     * Copies the given Matrix4 into this Matrix and then inverses it.
     *
     * @method Phaser.Math.Matrix4#getInverse
     * @since 3.50.0
     *
     * @param {Phaser.Math.Matrix4} m - The Matrix4 to invert into this Matrix4.
     *
     * @return {this} This Matrix4.
     */
    public function getInverse(m:phaser.math.Matrix4):Dynamic;
    /**
     * Invert this Matrix.
     *
     * @method Phaser.Math.Matrix4#invert
     * @since 3.0.0
     *
     * @return {this} This Matrix4.
     */
    public function invert():Dynamic;
    /**
     * Calculate the adjoint, or adjugate, of this Matrix.
     *
     * @method Phaser.Math.Matrix4#adjoint
     * @since 3.0.0
     *
     * @return {this} This Matrix4.
     */
    public function adjoint():Dynamic;
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
     * @return {this} This Matrix4.
     */
    public function multiply(src:phaser.math.Matrix4):Dynamic;
    /**
     * Multiply the values of this Matrix4 by those given in the `src` argument.
     *
     * @method Phaser.Math.Matrix4#multiplyLocal
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix4} src - The source Matrix4 that this Matrix4 is multiplied by.
     *
     * @return {this} This Matrix4.
     */
    public function multiplyLocal(src:phaser.math.Matrix4):Dynamic;
    /**
     * Multiplies the given Matrix4 object with this Matrix.
     *
     * This is the same as calling `multiplyMatrices(m, this)`.
     *
     * @method Phaser.Math.Matrix4#premultiply
     * @since 3.50.0
     *
     * @param {Phaser.Math.Matrix4} m - The Matrix4 to multiply with this one.
     *
     * @return {this} This Matrix4.
     */
    public function premultiply(m:phaser.math.Matrix4):Dynamic;
    /**
     * Multiplies the two given Matrix4 objects and stores the results in this Matrix.
     *
     * @method Phaser.Math.Matrix4#multiplyMatrices
     * @since 3.50.0
     *
     * @param {Phaser.Math.Matrix4} a - The first Matrix4 to multiply.
     * @param {Phaser.Math.Matrix4} b - The second Matrix4 to multiply.
     *
     * @return {this} This Matrix4.
     */
    public function multiplyMatrices(a:phaser.math.Matrix4, b:phaser.math.Matrix4):Dynamic;
    /**
     * Translate this Matrix using the given Vector.
     *
     * @method Phaser.Math.Matrix4#translate
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector3|Phaser.Math.Vector4)} v - The Vector to translate this Matrix with.
     *
     * @return {this} This Matrix4.
     */
    public function translate(v:Dynamic):Dynamic;
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
     * @return {this} This Matrix4.
     */
    public function translateXYZ(x:Float, y:Float, z:Float):Dynamic;
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
     * @return {this} This Matrix4.
     */
    public function scale(v:Dynamic):Dynamic;
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
     * @return {this} This Matrix4.
     */
    public function scaleXYZ(x:Float, y:Float, z:Float):Dynamic;
    /**
     * Derive a rotation matrix around the given axis.
     *
     * @method Phaser.Math.Matrix4#makeRotationAxis
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector3|Phaser.Math.Vector4)} axis - The rotation axis.
     * @param {number} angle - The rotation angle in radians.
     *
     * @return {this} This Matrix4.
     */
    public function makeRotationAxis(axis:Dynamic, angle:Float):Dynamic;
    /**
     * Apply a rotation transformation to this Matrix.
     *
     * @method Phaser.Math.Matrix4#rotate
     * @since 3.0.0
     *
     * @param {number} rad - The angle in radians to rotate by.
     * @param {Phaser.Math.Vector3} axis - The axis to rotate upon.
     *
     * @return {this} This Matrix4.
     */
    public function rotate(rad:Float, axis:phaser.math.Vector3):Dynamic;
    /**
     * Rotate this matrix on its X axis.
     *
     * @method Phaser.Math.Matrix4#rotateX
     * @since 3.0.0
     *
     * @param {number} rad - The angle in radians to rotate by.
     *
     * @return {this} This Matrix4.
     */
    public function rotateX(rad:Float):Dynamic;
    /**
     * Rotate this matrix on its Y axis.
     *
     * @method Phaser.Math.Matrix4#rotateY
     * @since 3.0.0
     *
     * @param {number} rad - The angle to rotate by, in radians.
     *
     * @return {this} This Matrix4.
     */
    public function rotateY(rad:Float):Dynamic;
    /**
     * Rotate this matrix on its Z axis.
     *
     * @method Phaser.Math.Matrix4#rotateZ
     * @since 3.0.0
     *
     * @param {number} rad - The angle to rotate by, in radians.
     *
     * @return {this} This Matrix4.
     */
    public function rotateZ(rad:Float):Dynamic;
    /**
     * Set the values of this Matrix from the given rotation Quaternion and translation Vector.
     *
     * @method Phaser.Math.Matrix4#fromRotationTranslation
     * @since 3.0.0
     *
     * @param {Phaser.Math.Quaternion} q - The Quaternion to set rotation from.
     * @param {Phaser.Math.Vector3} v - The Vector to set translation from.
     *
     * @return {this} This Matrix4.
     */
    public function fromRotationTranslation(q:phaser.math.Quaternion, v:phaser.math.Vector3):Dynamic;
    /**
     * Set the values of this Matrix from the given Quaternion.
     *
     * @method Phaser.Math.Matrix4#fromQuat
     * @since 3.0.0
     *
     * @param {Phaser.Math.Quaternion} q - The Quaternion to set the values of this Matrix from.
     *
     * @return {this} This Matrix4.
     */
    public function fromQuat(q:phaser.math.Quaternion):Dynamic;
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
     * @return {this} This Matrix4.
     */
    public function frustum(left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float):Dynamic;
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
     * @return {this} This Matrix4.
     */
    public function perspective(fovy:Float, aspect:Float, near:Float, far:Float):Dynamic;
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
     * @return {this} This Matrix4.
     */
    public function perspectiveLH(width:Float, height:Float, near:Float, far:Float):Dynamic;
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
     * @return {this} This Matrix4.
     */
    public function ortho(left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float):Dynamic;
    /**
     * Generate a right-handed look-at matrix with the given eye position, target and up axis.
     *
     * @method Phaser.Math.Matrix4#lookAtRH
     * @since 3.50.0
     *
     * @param {Phaser.Math.Vector3} eye - Position of the viewer.
     * @param {Phaser.Math.Vector3} target - Point the viewer is looking at.
     * @param {Phaser.Math.Vector3} up - vec3 pointing up.
     *
     * @return {this} This Matrix4.
     */
    public function lookAtRH(eye:phaser.math.Vector3, target:phaser.math.Vector3, up:phaser.math.Vector3):Dynamic;
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
     * @return {this} This Matrix4.
     */
    public function lookAt(eye:phaser.math.Vector3, center:phaser.math.Vector3, up:phaser.math.Vector3):Dynamic;
    /**
     * Set the values of this matrix from the given `yaw`, `pitch` and `roll` values.
     *
     * @method Phaser.Math.Matrix4#yawPitchRoll
     * @since 3.0.0
     *
     * @param {number} yaw - The yaw value.
     * @param {number} pitch - The pitch value.
     * @param {number} roll - The roll value.
     *
     * @return {this} This Matrix4.
     */
    public function yawPitchRoll(yaw:Float, pitch:Float, roll:Float):Dynamic;
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
     * @return {this} This Matrix4.
     */
    public function setWorldMatrix(rotation:phaser.math.Vector3, position:phaser.math.Vector3, scale:phaser.math.Vector3, ?viewMatrix:phaser.math.Matrix4, ?projectionMatrix:phaser.math.Matrix4):Dynamic;
    /**
     * Multiplies this Matrix4 by the given `src` Matrix4 and stores the results in the `out` Matrix4.
     *
     * @method Phaser.Math.Matrix4#multiplyToMat4
     * @since 3.50.0
     *
     * @param {Phaser.Math.Matrix4} src - The Matrix4 to multiply with this one.
     * @param {Phaser.Math.Matrix4} out - The receiving Matrix.
     *
     * @return {Phaser.Math.Matrix4} This `out` Matrix4.
     */
    public function multiplyToMat4(src:phaser.math.Matrix4, out:phaser.math.Matrix4):phaser.math.Matrix4;
    /**
     * Takes the rotation and position vectors and builds this Matrix4 from them.
     *
     * @method Phaser.Math.Matrix4#fromRotationXYTranslation
     * @since 3.50.0
     *
     * @param {Phaser.Math.Vector3} rotation - The rotation vector.
     * @param {Phaser.Math.Vector3} position - The position vector.
     * @param {boolean} translateFirst - Should the operation translate then rotate (`true`), or rotate then translate? (`false`)
     *
     * @return {this} This Matrix4.
     */
    public function fromRotationXYTranslation(rotation:phaser.math.Vector3, position:phaser.math.Vector3, translateFirst:Bool):Dynamic;
    /**
     * Returns the maximum axis scale from this Matrix4.
     *
     * @method Phaser.Math.Matrix4#getMaxScaleOnAxis
     * @since 3.50.0
     *
     * @return {number} The maximum axis scale.
     */
    public function getMaxScaleOnAxis():Float;
}
