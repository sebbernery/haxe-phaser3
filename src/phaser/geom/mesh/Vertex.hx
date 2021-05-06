package phaser.geom.mesh;

/**
 * @classdesc
 * A Vertex Geometry Object.
 *
 * This class consists of all the information required for a single vertex within a Face Geometry Object.
 *
 * Faces, and thus Vertex objects, are used by the Mesh Game Object in order to render objects in WebGL.
 *
 * @class Vertex
 * @memberof Phaser.Geom.Mesh
 * @constructor
 * @extends Phaser.Math.Vector3
 * @since 3.50.0
 *
 * @param {number} x - The x position of the vertex.
 * @param {number} y - The y position of the vertex.
 * @param {number} z - The z position of the vertex.
 * @param {number} u - The UV u coordinate of the vertex.
 * @param {number} v - The UV v coordinate of the vertex.
 * @param {number} [color=0xffffff] - The color value of the vertex.
 * @param {number} [alpha=1] - The alpha value of the vertex.
 * @param {number} [nx=0] - The x normal value of the vertex.
 * @param {number} [ny=0] - The y normal value of the vertex.
 * @param {number} [nz=0] - The z normal value of the vertex.
 */
@:native("Phaser.Geom.Mesh.Vertex")
extern class Vertex extends phaser.math.Vector3 {
    public function new(x:Float, y:Float, z:Float, u:Float, v:Float, ?color:Float, ?alpha:Float, ?nx:Float, ?ny:Float, ?nz:Float);
    /**
     * The projected x coordinate of this vertex.
     *
     * @name Phaser.Geom.Mesh.Vertex#vx
     * @type {number}
     * @since 3.50.0
     */
    public var vx:Float;
    /**
     * The projected y coordinate of this vertex.
     *
     * @name Phaser.Geom.Mesh.Vertex#vy
     * @type {number}
     * @since 3.50.0
     */
    public var vy:Float;
    /**
     * The projected z coordinate of this vertex.
     *
     * @name Phaser.Geom.Mesh.Vertex#vz
     * @type {number}
     * @since 3.50.0
     */
    public var vz:Float;
    /**
     * The projected x coordinate of this vertex.
     *
     * @name Phaser.Geom.Mesh.Vertex#nx
     * @type {number}
     * @since 3.50.0
     */
    public var nx:Float;
    /**
     * The projected y coordinate of this vertex.
     *
     * @name Phaser.Geom.Mesh.Vertex#ny
     * @type {number}
     * @since 3.50.0
     */
    public var ny:Float;
    /**
     * The projected z coordinate of this vertex.
     *
     * @name Phaser.Geom.Mesh.Vertex#nz
     * @type {number}
     * @since 3.50.0
     */
    public var nz:Float;
    /**
     * UV u coordinate of this vertex.
     *
     * @name Phaser.Geom.Mesh.Vertex#u
     * @type {number}
     * @since 3.50.0
     */
    public var u:Float;
    /**
     * UV v coordinate of this vertex.
     *
     * @name Phaser.Geom.Mesh.Vertex#v
     * @type {number}
     * @since 3.50.0
     */
    public var v:Float;
    /**
     * The color value of this vertex.
     *
     * @name Phaser.Geom.Mesh.Vertex#color
     * @type {number}
     * @since 3.50.0
     */
    public var color:Float;
    /**
     * The alpha value of this vertex.
     *
     * @name Phaser.Geom.Mesh.Vertex#alpha
     * @type {number}
     * @since 3.50.0
     */
    public var alpha:Float;
    /**
     * The translated x coordinate of this vertex.
     *
     * @name Phaser.Geom.Mesh.Vertex#tx
     * @type {number}
     * @since 3.50.0
     */
    public var tx:Float;
    /**
     * The translated y coordinate of this vertex.
     *
     * @name Phaser.Geom.Mesh.Vertex#ty
     * @type {number}
     * @since 3.50.0
     */
    public var ty:Float;
    /**
     * The translated alpha value of this vertex.
     *
     * @name Phaser.Geom.Mesh.Vertex#ta
     * @type {number}
     * @since 3.50.0
     */
    public var ta:Float;
    /**
     * Sets the U and V properties.
     *
     * @method Phaser.Geom.Mesh.Vertex#setUVs
     * @since 3.50.0
     *
     * @param {number} u - The UV u coordinate of the vertex.
     * @param {number} v - The UV v coordinate of the vertex.
     *
     * @return {this} This Vertex.
     */
    public function setUVs(u:Float, v:Float):Dynamic;
    /**
     * Transforms this vertex by the given matrix, storing the results in `vx`, `vy` and `vz`.
     *
     * @method Phaser.Geom.Mesh.Vertex#transformCoordinatesLocal
     * @since 3.50.0
     *
     * @param {Phaser.Math.Matrix4} transformMatrix - The transform matrix to apply to this vertex.
     * @param {number} width - The width of the parent Mesh.
     * @param {number} height - The height of the parent Mesh.
     * @param {number} cameraZ - The z position of the MeshCamera.
     */
    public function transformCoordinatesLocal(transformMatrix:phaser.math.Matrix4, width:Float, height:Float, cameraZ:Float):Void;
    /**
     * Updates this Vertex based on the given transform.
     *
     * @method Phaser.Geom.Mesh.Vertex#update
     * @since 3.50.0
     *
     * @param {number} a - The parent transform matrix data a component.
     * @param {number} b - The parent transform matrix data b component.
     * @param {number} c - The parent transform matrix data c component.
     * @param {number} d - The parent transform matrix data d component.
     * @param {number} e - The parent transform matrix data e component.
     * @param {number} f - The parent transform matrix data f component.
     * @param {boolean} roundPixels - Round the vertex position or not?
     * @param {number} alpha - The alpha of the parent object.
     *
     * @return {this} This Vertex.
     */
    public function update(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float, roundPixels:Bool, alpha:Float):Dynamic;
    /**
     * Loads the data from this Vertex into the given Typed Arrays.
     *
     * @method Phaser.Geom.Mesh.Vertex#load
     * @since 3.50.0
     *
     * @param {Float32Array} F32 - A Float32 Array to insert the position, UV and unit data in to.
     * @param {Uint32Array} U32 - A Uint32 Array to insert the color and alpha data in to.
     * @param {number} offset - The index of the array to insert this Vertex to.
     * @param {number} textureUnit - The texture unit currently in use.
     *
     * @return {number} The new array offset.
     */
    public function load(F32:js.lib.Float32Array, U32:js.lib.Uint32Array, offset:Float, textureUnit:Float):Float;
}
