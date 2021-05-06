package phaser.geom.mesh;

/**
 * @classdesc
 * A Face Geometry Object.
 *
 * A Face is used by the Mesh Game Object. A Mesh consists of one, or more, faces that are
 * used to render the Mesh Game Objects in WebGL.
 *
 * A Face consists of 3 Vertex instances, for the 3 corners of the face and methods to help
 * you modify and test them.
 *
 * @class Face
 * @memberof Phaser.Geom.Mesh
 * @constructor
 * @since 3.50.0
 *
 * @param {Phaser.Geom.Mesh.Vertex} vertex1 - The first vertex of the Face.
 * @param {Phaser.Geom.Mesh.Vertex} vertex2 - The second vertex of the Face.
 * @param {Phaser.Geom.Mesh.Vertex} vertex3 - The third vertex of the Face.
 */
@:native("Phaser.Geom.Mesh.Face")
extern class Face {
    public function new(vertex1:phaser.geom.mesh.Vertex, vertex2:phaser.geom.mesh.Vertex, vertex3:phaser.geom.mesh.Vertex);
    /**
     * The first vertex in this Face.
     *
     * @name Phaser.Geom.Mesh.Face#vertex1
     * @type {Phaser.Geom.Mesh.Vertex}
     * @since 3.50.0
     */
    public var vertex1:phaser.geom.mesh.Vertex;
    /**
     * The second vertex in this Face.
     *
     * @name Phaser.Geom.Mesh.Face#vertex2
     * @type {Phaser.Geom.Mesh.Vertex}
     * @since 3.50.0
     */
    public var vertex2:phaser.geom.mesh.Vertex;
    /**
     * The third vertex in this Face.
     *
     * @name Phaser.Geom.Mesh.Face#vertex3
     * @type {Phaser.Geom.Mesh.Vertex}
     * @since 3.50.0
     */
    public var vertex3:phaser.geom.mesh.Vertex;
    /**
     * The bounds of this Face.
     *
     * Be sure to call the `Face.updateBounds` method _before_ using this property.
     *
     * @name Phaser.Geom.Mesh.Face#bounds
     * @type {Phaser.Geom.Rectangle}
     * @since 3.50.0
     */
    public var bounds:phaser.geom.Rectangle;
    /**
     * The x coordinate of this Face, based on the in center position of the Face.
     *
     * @name Phaser.Geom.Mesh.Face#x
     * @type {number}
     * @since 3.50.0
     */
    public var x:Float;
    /**
     * The y coordinate of this Face, based on the in center position of the Face.
     *
     * @name Phaser.Geom.Mesh.Face#y
     * @type {number}
     * @since 3.50.0
     */
    public var y:Float;
    /**
     * Set the alpha value of this Face.
     *
     * Each vertex is given the same value. If you need to adjust the alpha on a per-vertex basis
     * then use the `Vertex.alpha` property instead.
     *
     * When getting the alpha of this Face, it will return an average of the alpha
     * component of all three vertices.
     *
     * @name Phaser.Geom.Mesh.Face#alpha
     * @type {number}
     * @since 3.50.0
     */
    public var alpha:Float;
    /**
     * The depth of this Face, which is an average of the z component of all three vertices.
     *
     * The depth is calculated based on the transformed z value, not the local one.
     *
     * @name Phaser.Geom.Mesh.Face#depth
     * @type {number}
     * @readonly
     * @since 3.50.0
     */
    public var depth:Float;
    /**
     * Calculates and returns the in-center position of this Face.
     *
     * @method Phaser.Geom.Mesh.Face#getInCenter
     * @since 3.50.0
     *
     * @param {boolean} [local=true] Return the in center from the un-transformed vertex positions (`true`), or transformed? (`false`)
     *
     * @return {Phaser.Math.Vector2} A Vector2 containing the in center position of this Face.
     */
    public function getInCenter(?local:Bool):phaser.math.Vector2;
    /**
     * Checks if the given coordinates are within this Face.
     *
     * You can optionally provide a transform matrix. If given, the Face vertices
     * will be transformed first, before being checked against the coordinates.
     *
     * @method Phaser.Geom.Mesh.Face#contains
     * @since 3.50.0
     *
     * @param {number} x - The horizontal position to check.
     * @param {number} y - The vertical position to check.
     * @param {Phaser.GameObjects.Components.TransformMatrix} [calcMatrix] - Optional transform matrix to apply to the vertices before comparison.
     *
     * @return {boolean} `true` if the coordinates lay within this Face, otherwise `false`.
     */
    public function contains(x:Float, y:Float, ?calcMatrix:phaser.gameobjects.components.TransformMatrix):Bool;
    /**
     * Checks if the vertices in this Face are orientated counter-clockwise, or not.
     *
     * It checks the transformed position of the vertices, not the local one.
     *
     * @method Phaser.Geom.Mesh.Face#isCounterClockwise
     * @since 3.50.0
     *
     * @param {number} z - The z-axis value to test against. Typically the `Mesh.modelPosition.z`.
     *
     * @return {boolean} `true` if the vertices in this Face run counter-clockwise, otherwise `false`.
     */
    public function isCounterClockwise(z:Float):Bool;
    /**
     * Loads the data from this Vertex into the given Typed Arrays.
     *
     * @method Phaser.Geom.Mesh.Face#load
     * @since 3.50.0
     *
     * @param {Float32Array} F32 - A Float32 Array to insert the position, UV and unit data in to.
     * @param {Uint32Array} U32 - A Uint32 Array to insert the color and alpha data in to.
     * @param {number} offset - The index of the array to insert this Vertex to.
     * @param {number} textureUnit - The texture unit currently in use.
     * @param {number} alpha - The alpha of the parent object.
     * @param {number} a - The parent transform matrix data a component.
     * @param {number} b - The parent transform matrix data b component.
     * @param {number} c - The parent transform matrix data c component.
     * @param {number} d - The parent transform matrix data d component.
     * @param {number} e - The parent transform matrix data e component.
     * @param {number} f - The parent transform matrix data f component.
     * @param {boolean} roundPixels - Round the vertex position or not?
     *
     * @return {number} The new vertex index array offset.
     */
    public function load(F32:js.lib.Float32Array, U32:js.lib.Uint32Array, offset:Float, textureUnit:Float, alpha:Float, a:Float, b:Float, c:Float, d:Float, e:Float, f:Float, roundPixels:Bool):Float;
    /**
     * Transforms all Face vertices by the given matrix, storing the results in their `vx`, `vy` and `vz` properties.
     *
     * @method Phaser.Geom.Mesh.Face#transformCoordinatesLocal
     * @since 3.50.0
     *
     * @param {Phaser.Math.Matrix4} transformMatrix - The transform matrix to apply to this vertex.
     * @param {number} width - The width of the parent Mesh.
     * @param {number} height - The height of the parent Mesh.
     * @param {number} cameraZ - The z position of the MeshCamera.
     *
     * @return {this} This Face instance.
     */
    public function transformCoordinatesLocal(transformMatrix:phaser.math.Matrix4, width:Float, height:Float, cameraZ:Float):Dynamic;
    /**
     * Updates the bounds of this Face, based on the translated values of the vertices.
     *
     * Call this method prior to accessing the `Face.bounds` property.
     *
     * @method Phaser.Geom.Mesh.Face#updateBounds
     * @since 3.50.0
     *
     * @return {this} This Face instance.
     */
    public function updateBounds():Dynamic;
    /**
     * Checks if this Face is within the view of the given Camera.
     *
     * This method is called in the `MeshWebGLRenderer` function. It performs the following tasks:
     *
     * First, the `Vertex.update` method is called on each of the vertices. This populates them
     * with the new translated values, updating their `tx`, `ty` and `ta` properties.
     *
     * Then it tests to see if this face is visible due to the alpha values, if not, it returns.
     *
     * After this, if `hideCCW` is set, it calls `isCounterClockwise` and returns if not.
     *
     * Finally, it will update the `Face.bounds` based on the newly translated vertex values
     * and return the results of an intersection test between the bounds and the camera world view
     * rectangle.
     *
     * @method Phaser.Geom.Mesh.Face#isInView
     * @since 3.50.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to check against.
     * @param {boolean} hideCCW - Test the counter-clockwise orientation of the verts?
     * @param {number} z - The Cameras z position, used in the CCW test.
     * @param {number} alpha - The alpha of the parent object.
     * @param {number} a - The parent transform matrix data a component.
     * @param {number} b - The parent transform matrix data b component.
     * @param {number} c - The parent transform matrix data c component.
     * @param {number} d - The parent transform matrix data d component.
     * @param {number} e - The parent transform matrix data e component.
     * @param {number} f - The parent transform matrix data f component.
     * @param {boolean} roundPixels - Round the vertex position or not?
     *
     * @return {boolean} `true` if this Face can be seen by the Camera.
     */
    public function isInView(camera:phaser.cameras.scene2d.Camera, hideCCW:Bool, z:Float, alpha:Float, a:Float, b:Float, c:Float, d:Float, e:Float, f:Float, roundPixels:Bool):Bool;
    /**
     * Translates the vertices of this Face by the given amounts.
     *
     * The actual vertex positions are adjusted, not their transformed position.
     *
     * Therefore, this updates the vertex data directly.
     *
     * @method Phaser.Geom.Mesh.Face#translate
     * @since 3.50.0
     *
     * @param {number} x - The amount to horizontally translate by.
     * @param {number} [y=0] - The amount to vertically translate by.
     *
     * @return {this} This Face instance.
     */
    public function translate(x:Float, ?y:Float):Dynamic;
    /**
     * Destroys this Face and nulls the references to the vertices.
     *
     * @method Phaser.Geom.Mesh.Face#destroy
     * @since 3.50.0
     */
    public function destroy():Void;
}
