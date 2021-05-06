package phaser.math;

/**
 * @classdesc
 * A quaternion.
 *
 * @class Quaternion
 * @memberof Phaser.Math
 * @constructor
 * @since 3.0.0
 *
 * @param {number} [x=0] - The x component.
 * @param {number} [y=0] - The y component.
 * @param {number} [z=0] - The z component.
 * @param {number} [w=1] - The w component.
 */
@:native("Phaser.Math.Quaternion")
extern class Quaternion {
    public function new(?x:Float, ?y:Float, ?z:Float, ?w:Float);
    /**
     * This callback is invoked, if set, each time a value in this quaternion is changed.
     * The callback is passed one argument, a reference to this quaternion.
     *
     * @name Phaser.Math.Quaternion#onChangeCallback
     * @type {function}
     * @since 3.50.0
     */
    public var onChangeCallback:Dynamic;
    /**
     * The x component of this Quaternion.
     *
     * @name Phaser.Math.Quaternion#x
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y component of this Quaternion.
     *
     * @name Phaser.Math.Quaternion#y
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The z component of this Quaternion.
     *
     * @name Phaser.Math.Quaternion#z
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var z:Float;
    /**
     * The w component of this Quaternion.
     *
     * @name Phaser.Math.Quaternion#w
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var w:Float;
    /**
     * Copy the components of a given Quaternion or Vector into this Quaternion.
     *
     * @method Phaser.Math.Quaternion#copy
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Quaternion|Phaser.Math.Vector4)} src - The Quaternion or Vector to copy the components from.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function copy(src:Dynamic):phaser.math.Quaternion;
    /**
     * Set the components of this Quaternion and optionally call the `onChangeCallback`.
     *
     * @method Phaser.Math.Quaternion#set
     * @since 3.0.0
     *
     * @param {(number|object)} [x=0] - The x component, or an object containing x, y, z, and w components.
     * @param {number} [y=0] - The y component.
     * @param {number} [z=0] - The z component.
     * @param {number} [w=0] - The w component.
     * @param {boolean} [update=true] - Call the `onChangeCallback`?
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function set(?x:Dynamic, ?y:Float, ?z:Float, ?w:Float, ?update:Bool):phaser.math.Quaternion;
    /**
     * Add a given Quaternion or Vector to this Quaternion. Addition is component-wise.
     *
     * @method Phaser.Math.Quaternion#add
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Quaternion|Phaser.Math.Vector4)} v - The Quaternion or Vector to add to this Quaternion.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function add(v:Dynamic):phaser.math.Quaternion;
    /**
     * Subtract a given Quaternion or Vector from this Quaternion. Subtraction is component-wise.
     *
     * @method Phaser.Math.Quaternion#subtract
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Quaternion|Phaser.Math.Vector4)} v - The Quaternion or Vector to subtract from this Quaternion.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function subtract(v:Dynamic):phaser.math.Quaternion;
    /**
     * Scale this Quaternion by the given value.
     *
     * @method Phaser.Math.Quaternion#scale
     * @since 3.0.0
     *
     * @param {number} scale - The value to scale this Quaternion by.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function scale(scale:Float):phaser.math.Quaternion;
    /**
     * Calculate the length of this Quaternion.
     *
     * @method Phaser.Math.Quaternion#length
     * @since 3.0.0
     *
     * @return {number} The length of this Quaternion.
     */
    public function length():Float;
    /**
     * Calculate the length of this Quaternion squared.
     *
     * @method Phaser.Math.Quaternion#lengthSq
     * @since 3.0.0
     *
     * @return {number} The length of this Quaternion, squared.
     */
    public function lengthSq():Float;
    /**
     * Normalize this Quaternion.
     *
     * @method Phaser.Math.Quaternion#normalize
     * @since 3.0.0
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function normalize():phaser.math.Quaternion;
    /**
     * Calculate the dot product of this Quaternion and the given Quaternion or Vector.
     *
     * @method Phaser.Math.Quaternion#dot
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Quaternion|Phaser.Math.Vector4)} v - The Quaternion or Vector to dot product with this Quaternion.
     *
     * @return {number} The dot product of this Quaternion and the given Quaternion or Vector.
     */
    public function dot(v:Dynamic):Float;
    /**
     * Linearly interpolate this Quaternion towards the given Quaternion or Vector.
     *
     * @method Phaser.Math.Quaternion#lerp
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Quaternion|Phaser.Math.Vector4)} v - The Quaternion or Vector to interpolate towards.
     * @param {number} [t=0] - The percentage of interpolation.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function lerp(v:Dynamic, ?t:Float):phaser.math.Quaternion;
    /**
     * Rotates this Quaternion based on the two given vectors.
     *
     * @method Phaser.Math.Quaternion#rotationTo
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector3} a - The transform rotation vector.
     * @param {Phaser.Math.Vector3} b - The target rotation vector.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function rotationTo(a:phaser.math.Vector3, b:phaser.math.Vector3):phaser.math.Quaternion;
    /**
     * Set the axes of this Quaternion.
     *
     * @method Phaser.Math.Quaternion#setAxes
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector3} view - The view axis.
     * @param {Phaser.Math.Vector3} right - The right axis.
     * @param {Phaser.Math.Vector3} up - The upwards axis.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function setAxes(view:phaser.math.Vector3, right:phaser.math.Vector3, up:phaser.math.Vector3):phaser.math.Quaternion;
    /**
     * Reset this Matrix to an identity (default) Quaternion.
     *
     * @method Phaser.Math.Quaternion#identity
     * @since 3.0.0
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function identity():phaser.math.Quaternion;
    /**
     * Set the axis angle of this Quaternion.
     *
     * @method Phaser.Math.Quaternion#setAxisAngle
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector3} axis - The axis.
     * @param {number} rad - The angle in radians.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function setAxisAngle(axis:phaser.math.Vector3, rad:Float):phaser.math.Quaternion;
    /**
     * Multiply this Quaternion by the given Quaternion or Vector.
     *
     * @method Phaser.Math.Quaternion#multiply
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Quaternion|Phaser.Math.Vector4)} b - The Quaternion or Vector to multiply this Quaternion by.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function multiply(b:Dynamic):phaser.math.Quaternion;
    /**
     * Smoothly linearly interpolate this Quaternion towards the given Quaternion or Vector.
     *
     * @method Phaser.Math.Quaternion#slerp
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Quaternion|Phaser.Math.Vector4)} b - The Quaternion or Vector to interpolate towards.
     * @param {number} t - The percentage of interpolation.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function slerp(b:Dynamic, t:Float):phaser.math.Quaternion;
    /**
     * Invert this Quaternion.
     *
     * @method Phaser.Math.Quaternion#invert
     * @since 3.0.0
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function invert():phaser.math.Quaternion;
    /**
     * Convert this Quaternion into its conjugate.
     *
     * Sets the x, y and z components.
     *
     * @method Phaser.Math.Quaternion#conjugate
     * @since 3.0.0
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function conjugate():phaser.math.Quaternion;
    /**
     * Rotate this Quaternion on the X axis.
     *
     * @method Phaser.Math.Quaternion#rotateX
     * @since 3.0.0
     *
     * @param {number} rad - The rotation angle in radians.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function rotateX(rad:Float):phaser.math.Quaternion;
    /**
     * Rotate this Quaternion on the Y axis.
     *
     * @method Phaser.Math.Quaternion#rotateY
     * @since 3.0.0
     *
     * @param {number} rad - The rotation angle in radians.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function rotateY(rad:Float):phaser.math.Quaternion;
    /**
     * Rotate this Quaternion on the Z axis.
     *
     * @method Phaser.Math.Quaternion#rotateZ
     * @since 3.0.0
     *
     * @param {number} rad - The rotation angle in radians.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function rotateZ(rad:Float):phaser.math.Quaternion;
    /**
     * Create a unit (or rotation) Quaternion from its x, y, and z components.
     *
     * Sets the w component.
     *
     * @method Phaser.Math.Quaternion#calculateW
     * @since 3.0.0
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function calculateW():phaser.math.Quaternion;
    /**
     * Set this Quaternion from the given Euler, based on Euler order.
     *
     * @method Phaser.Math.Quaternion#setFromEuler
     * @since 3.50.0
     *
     * @param {Phaser.Math.Euler} euler - The Euler to convert from.
     * @param {boolean} [update=true] - Run the `onChangeCallback`?
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function setFromEuler(euler:phaser.math.Euler, ?update:Bool):phaser.math.Quaternion;
    /**
     * Sets the rotation of this Quaternion from the given Matrix4.
     *
     * @method Phaser.Math.Quaternion#setFromRotationMatrix
     * @since 3.50.0
     *
     * @param {Phaser.Math.Matrix4} mat4 - The Matrix4 to set the rotation from.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function setFromRotationMatrix(mat4:phaser.math.Matrix4):phaser.math.Quaternion;
    /**
     * Convert the given Matrix into this Quaternion.
     *
     * @method Phaser.Math.Quaternion#fromMat3
     * @since 3.0.0
     *
     * @param {Phaser.Math.Matrix3} mat - The Matrix to convert from.
     *
     * @return {Phaser.Math.Quaternion} This Quaternion.
     */
    public function fromMat3(mat:phaser.math.Matrix3):phaser.math.Quaternion;
}
