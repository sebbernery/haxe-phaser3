package phaser.gameobjects.components;

/**
 * @classdesc
 * A Matrix used for display transformations for rendering.
 *
 * It is represented like so:
 *
 * ```
 * | a | c | tx |
 * | b | d | ty |
 * | 0 | 0 | 1  |
 * ```
 *
 * @class TransformMatrix
 * @memberof Phaser.GameObjects.Components
 * @constructor
 * @since 3.0.0
 *
 * @param {number} [a=1] - The Scale X value.
 * @param {number} [b=0] - The Skew Y value.
 * @param {number} [c=0] - The Skew X value.
 * @param {number} [d=1] - The Scale Y value.
 * @param {number} [tx=0] - The Translate X value.
 * @param {number} [ty=0] - The Translate Y value.
 */
@:native("Phaser.GameObjects.Components.TransformMatrix")
extern class TransformMatrix {
    public function new(?a:Float, ?b:Float, ?c:Float, ?d:Float, ?tx:Float, ?ty:Float);
    /**
     * The matrix values.
     *
     * @name Phaser.GameObjects.Components.TransformMatrix#matrix
     * @type {Float32Array}
     * @since 3.0.0
     */
    public var matrix:js.lib.Float32Array;
    /**
     * The decomposed matrix.
     *
     * @name Phaser.GameObjects.Components.TransformMatrix#decomposedMatrix
     * @type {object}
     * @since 3.0.0
     */
    public var decomposedMatrix:Dynamic;
    /**
     * The Scale X value.
     *
     * @name Phaser.GameObjects.Components.TransformMatrix#a
     * @type {number}
     * @since 3.4.0
     */
    public var a:Float;
    /**
     * The Skew Y value.
     *
     * @name Phaser.GameObjects.Components.TransformMatrix#b
     * @type {number}
     * @since 3.4.0
     */
    public var b:Float;
    /**
     * The Skew X value.
     *
     * @name Phaser.GameObjects.Components.TransformMatrix#c
     * @type {number}
     * @since 3.4.0
     */
    public var c:Float;
    /**
     * The Scale Y value.
     *
     * @name Phaser.GameObjects.Components.TransformMatrix#d
     * @type {number}
     * @since 3.4.0
     */
    public var d:Float;
    /**
     * The Translate X value.
     *
     * @name Phaser.GameObjects.Components.TransformMatrix#e
     * @type {number}
     * @since 3.11.0
     */
    public var e:Float;
    /**
     * The Translate Y value.
     *
     * @name Phaser.GameObjects.Components.TransformMatrix#f
     * @type {number}
     * @since 3.11.0
     */
    public var f:Float;
    /**
     * The Translate X value.
     *
     * @name Phaser.GameObjects.Components.TransformMatrix#tx
     * @type {number}
     * @since 3.4.0
     */
    public var tx:Float;
    /**
     * The Translate Y value.
     *
     * @name Phaser.GameObjects.Components.TransformMatrix#ty
     * @type {number}
     * @since 3.4.0
     */
    public var ty:Float;
    /**
     * The rotation of the Matrix. Value is in radians.
     *
     * @name Phaser.GameObjects.Components.TransformMatrix#rotation
     * @type {number}
     * @readonly
     * @since 3.4.0
     */
    public var rotation:Float;
    /**
     * The rotation of the Matrix, normalized to be within the Phaser right-handed
     * clockwise rotation space. Value is in radians.
     *
     * @name Phaser.GameObjects.Components.TransformMatrix#rotationNormalized
     * @type {number}
     * @readonly
     * @since 3.19.0
     */
    public var rotationNormalized:Float;
    /**
     * The decomposed horizontal scale of the Matrix. This value is always positive.
     *
     * @name Phaser.GameObjects.Components.TransformMatrix#scaleX
     * @type {number}
     * @readonly
     * @since 3.4.0
     */
    public var scaleX:Float;
    /**
     * The decomposed vertical scale of the Matrix. This value is always positive.
     *
     * @name Phaser.GameObjects.Components.TransformMatrix#scaleY
     * @type {number}
     * @readonly
     * @since 3.4.0
     */
    public var scaleY:Float;
    /**
     * Reset the Matrix to an identity matrix.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#loadIdentity
     * @since 3.0.0
     *
     * @return {this} This TransformMatrix.
     */
    public function loadIdentity():Dynamic;
    /**
     * Translate the Matrix.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#translate
     * @since 3.0.0
     *
     * @param {number} x - The horizontal translation value.
     * @param {number} y - The vertical translation value.
     *
     * @return {this} This TransformMatrix.
     */
    public function translate(x:Float, y:Float):Dynamic;
    /**
     * Scale the Matrix.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#scale
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scale value.
     * @param {number} y - The vertical scale value.
     *
     * @return {this} This TransformMatrix.
     */
    public function scale(x:Float, y:Float):Dynamic;
    /**
     * Rotate the Matrix.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#rotate
     * @since 3.0.0
     *
     * @param {number} angle - The angle of rotation in radians.
     *
     * @return {this} This TransformMatrix.
     */
    public function rotate(angle:Float):Dynamic;
    /**
     * Multiply this Matrix by the given Matrix.
     *
     * If an `out` Matrix is given then the results will be stored in it.
     * If it is not given, this matrix will be updated in place instead.
     * Use an `out` Matrix if you do not wish to mutate this matrix.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#multiply
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Components.TransformMatrix} rhs - The Matrix to multiply by.
     * @param {Phaser.GameObjects.Components.TransformMatrix} [out] - An optional Matrix to store the results in.
     *
     * @return {(this|Phaser.GameObjects.Components.TransformMatrix)} Either this TransformMatrix, or the `out` Matrix, if given in the arguments.
     */
    public function multiply(rhs:phaser.gameobjects.components.TransformMatrix, ?out:phaser.gameobjects.components.TransformMatrix):Dynamic;
    /**
     * Multiply this Matrix by the matrix given, including the offset.
     *
     * The offsetX is added to the tx value: `offsetX * a + offsetY * c + tx`.
     * The offsetY is added to the ty value: `offsetY * b + offsetY * d + ty`.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#multiplyWithOffset
     * @since 3.11.0
     *
     * @param {Phaser.GameObjects.Components.TransformMatrix} src - The source Matrix to copy from.
     * @param {number} offsetX - Horizontal offset to factor in to the multiplication.
     * @param {number} offsetY - Vertical offset to factor in to the multiplication.
     *
     * @return {this} This TransformMatrix.
     */
    public function multiplyWithOffset(src:phaser.gameobjects.components.TransformMatrix, offsetX:Float, offsetY:Float):Dynamic;
    /**
     * Transform the Matrix.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#transform
     * @since 3.0.0
     *
     * @param {number} a - The Scale X value.
     * @param {number} b - The Shear Y value.
     * @param {number} c - The Shear X value.
     * @param {number} d - The Scale Y value.
     * @param {number} tx - The Translate X value.
     * @param {number} ty - The Translate Y value.
     *
     * @return {this} This TransformMatrix.
     */
    public function transform(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Dynamic;
    /**
     * Transform a point using this Matrix.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#transformPoint
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate of the point to transform.
     * @param {number} y - The y coordinate of the point to transform.
     * @param {(Phaser.Geom.Point|Phaser.Math.Vector2|object)} point - The Point object to store the transformed coordinates.
     *
     * @return {(Phaser.Geom.Point|Phaser.Math.Vector2|object)} The Point containing the transformed coordinates.
     */
    public function transformPoint(x:Float, y:Float, point:Dynamic):phaser.geom.Point;
    /**
     * Invert the Matrix.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#invert
     * @since 3.0.0
     *
     * @return {this} This TransformMatrix.
     */
    public function invert():Dynamic;
    /**
     * Set the values of this Matrix to copy those of the matrix given.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#copyFrom
     * @since 3.11.0
     *
     * @param {Phaser.GameObjects.Components.TransformMatrix} src - The source Matrix to copy from.
     *
     * @return {this} This TransformMatrix.
     */
    public function copyFrom(src:phaser.gameobjects.components.TransformMatrix):Dynamic;
    /**
     * Set the values of this Matrix to copy those of the array given.
     * Where array indexes 0, 1, 2, 3, 4 and 5 are mapped to a, b, c, d, e and f.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#copyFromArray
     * @since 3.11.0
     *
     * @param {array} src - The array of values to set into this matrix.
     *
     * @return {this} This TransformMatrix.
     */
    public function copyFromArray(src:Array<Dynamic>):Dynamic;
    /**
     * Copy the values from this Matrix to the given Canvas Rendering Context.
     * This will use the Context.transform method.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#copyToContext
     * @since 3.12.0
     *
     * @param {CanvasRenderingContext2D} ctx - The Canvas Rendering Context to copy the matrix values to.
     *
     * @return {CanvasRenderingContext2D} The Canvas Rendering Context.
     */
    public function copyToContext(ctx:js.html.CanvasRenderingContext2D):js.html.CanvasRenderingContext2D;
    /**
     * Copy the values from this Matrix to the given Canvas Rendering Context.
     * This will use the Context.setTransform method.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#setToContext
     * @since 3.12.0
     *
     * @param {CanvasRenderingContext2D} ctx - The Canvas Rendering Context to copy the matrix values to.
     *
     * @return {CanvasRenderingContext2D} The Canvas Rendering Context.
     */
    public function setToContext(ctx:js.html.CanvasRenderingContext2D):js.html.CanvasRenderingContext2D;
    /**
     * Copy the values in this Matrix to the array given.
     *
     * Where array indexes 0, 1, 2, 3, 4 and 5 are mapped to a, b, c, d, e and f.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#copyToArray
     * @since 3.12.0
     *
     * @param {array} [out] - The array to copy the matrix values in to.
     *
     * @return {array} An array where elements 0 to 5 contain the values from this matrix.
     */
    public function copyToArray(?out:Array<Dynamic>):Array<Dynamic>;
    /**
     * Set the values of this Matrix.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#setTransform
     * @since 3.0.0
     *
     * @param {number} a - The Scale X value.
     * @param {number} b - The Shear Y value.
     * @param {number} c - The Shear X value.
     * @param {number} d - The Scale Y value.
     * @param {number} tx - The Translate X value.
     * @param {number} ty - The Translate Y value.
     *
     * @return {this} This TransformMatrix.
     */
    public function setTransform(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Dynamic;
    /**
     * Decompose this Matrix into its translation, scale and rotation values using QR decomposition.
     *
     * The result must be applied in the following order to reproduce the current matrix:
     *
     * translate -> rotate -> scale
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#decomposeMatrix
     * @since 3.0.0
     *
     * @return {object} The decomposed Matrix.
     */
    public function decomposeMatrix():Dynamic;
    /**
     * Apply the identity, translate, rotate and scale operations on the Matrix.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#applyITRS
     * @since 3.0.0
     *
     * @param {number} x - The horizontal translation.
     * @param {number} y - The vertical translation.
     * @param {number} rotation - The angle of rotation in radians.
     * @param {number} scaleX - The horizontal scale.
     * @param {number} scaleY - The vertical scale.
     *
     * @return {this} This TransformMatrix.
     */
    public function applyITRS(x:Float, y:Float, rotation:Float, scaleX:Float, scaleY:Float):Dynamic;
    /**
     * Takes the `x` and `y` values and returns a new position in the `output` vector that is the inverse of
     * the current matrix with its transformation applied.
     *
     * Can be used to translate points from world to local space.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#applyInverse
     * @since 3.12.0
     *
     * @param {number} x - The x position to translate.
     * @param {number} y - The y position to translate.
     * @param {Phaser.Math.Vector2} [output] - A Vector2, or point-like object, to store the results in.
     *
     * @return {Phaser.Math.Vector2} The coordinates, inverse-transformed through this matrix.
     */
    public function applyInverse(x:Float, y:Float, ?output:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Returns the X component of this matrix multiplied by the given values.
     * This is the same as `x * a + y * c + e`.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#getX
     * @since 3.12.0
     *
     * @param {number} x - The x value.
     * @param {number} y - The y value.
     *
     * @return {number} The calculated x value.
     */
    public function getX(x:Float, y:Float):Float;
    /**
     * Returns the Y component of this matrix multiplied by the given values.
     * This is the same as `x * b + y * d + f`.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#getY
     * @since 3.12.0
     *
     * @param {number} x - The x value.
     * @param {number} y - The y value.
     *
     * @return {number} The calculated y value.
     */
    public function getY(x:Float, y:Float):Float;
    /**
     * Returns a string that can be used in a CSS Transform call as a `matrix` property.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#getCSSMatrix
     * @since 3.12.0
     *
     * @return {string} A string containing the CSS Transform matrix values.
     */
    public function getCSSMatrix():String;
    /**
     * Destroys this Transform Matrix.
     *
     * @method Phaser.GameObjects.Components.TransformMatrix#destroy
     * @since 3.4.0
     */
    public function destroy():Void;
}
