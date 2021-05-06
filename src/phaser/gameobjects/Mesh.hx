package phaser.gameobjects;

/**
 * @classdesc
 * A Mesh Game Object.
 *
 * The Mesh Game Object allows you to render a group of textured vertices and manipulate
 * the view of those vertices, such as rotation, translation or scaling.
 *
 * Support for generating mesh data from grids, model data or Wavefront OBJ Files is included.
 *
 * Although you can use this to render 3D objects, its primary use is for displaying more complex
 * Sprites, or Sprites where you need fine-grained control over the vertice positions in order to
 * achieve special effects in your games. Note that rendering still takes place using Phasers
 * orthographic camera. As a result, all depth and face tests are done in orthographic space.
 *
 * The rendering process will iterate through the faces of this Mesh and render out each face
 * that is considered as being in view of the camera. No depth buffer is used, and because of this,
 * you should be careful not to use model data with too many vertices, or overlapping geometry,
 * or you'll probably encounter z-depth fighting. The Mesh was designed to allow for more advanced
 * 2D layouts, rather than displaying 3D objects, even though it can do this to a degree.
 *
 * In short, if you want to remake Crysis, use a 3D engine, not a Mesh. However, if you want
 * to easily add some small fun 3D elements into your game, or create some special effects involving
 * vertex warping, this is the right object for you. Mesh data becomes part of the WebGL batch,
 * just like standard Sprites, so doesn't introduce any additional shader overhead. Because
 * the Mesh just generates vertices into the WebGL batch, like any other Sprite, you can use all of
 * the common Game Object components on a Mesh too, such as a custom pipeline, mask, blend mode
 * or texture.
 *
 * Note that the Mesh object is WebGL only and does not have a Canvas counterpart.
 *
 * The Mesh origin is always 0.5 x 0.5 and cannot be changed.
 *
 * @class Mesh
 * @extends Phaser.GameObjects.GameObject
 * @memberof Phaser.GameObjects
 * @constructor
 * @webglOnly
 * @since 3.0.0
 *
 * @extends Phaser.GameObjects.Components.AlphaSingle
 * @extends Phaser.GameObjects.Components.BlendMode
 * @extends Phaser.GameObjects.Components.Depth
 * @extends Phaser.GameObjects.Components.Mask
 * @extends Phaser.GameObjects.Components.Pipeline
 * @extends Phaser.GameObjects.Components.Size
 * @extends Phaser.GameObjects.Components.Texture
 * @extends Phaser.GameObjects.Components.Transform
 * @extends Phaser.GameObjects.Components.Visible
 * @extends Phaser.GameObjects.Components.ScrollFactor
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} [x] - The horizontal position of this Game Object in the world.
 * @param {number} [y] - The vertical position of this Game Object in the world.
 * @param {string|Phaser.Textures.Texture} [texture] - The key, or instance of the Texture this Game Object will use to render with, as stored in the Texture Manager.
 * @param {string|number} [frame] - An optional frame from the Texture this Game Object is rendering with.
 * @param {number[]} [vertices] - The vertices array. Either `xy` pairs, or `xyz` if the `containsZ` parameter is `true`.
 * @param {number[]} [uvs] - The UVs pairs array.
 * @param {number[]} [indicies] - Optional vertex indicies array. If you don't have one, pass `null` or an empty array.
 * @param {boolean} [containsZ=false] - Does the vertices data include a `z` component?
 * @param {number[]} [normals] - Optional vertex normals array. If you don't have one, pass `null` or an empty array.
 * @param {number|number[]} [colors=0xffffff] - An array of colors, one per vertex, or a single color value applied to all vertices.
 * @param {number|number[]} [alphas=1] - An array of alpha values, one per vertex, or a single alpha value applied to all vertices.
 */
@:native("Phaser.GameObjects.Mesh")
extern class Mesh extends phaser.gameobjects.GameObject {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?texture:Dynamic, ?frame:Dynamic, ?vertices:Array<Float>, ?uvs:Array<Float>, ?indicies:Array<Float>, ?containsZ:Bool, ?normals:Array<Float>, ?colors:Dynamic, ?alphas:Dynamic);
    /**
     * An array containing the Face instances belonging to this Mesh.
     *
     * A Face consists of 3 Vertex objects.
     *
     * This array is populated during calls such as `addVertices` or `addOBJ`.
     *
     * @name Phaser.GameObjects.Mesh#faces
     * @type {Phaser.Geom.Mesh.Face[]}
     * @since 3.50.0
     */
    public var faces:Array<phaser.geom.mesh.Face>;
    /**
     * An array containing Vertex instances. One instance per vertex in this Mesh.
     *
     * This array is populated during calls such as `addVertex` or `addOBJ`.
     *
     * @name Phaser.GameObjects.Mesh#vertices
     * @type {Phaser.Geom.Mesh.Vertex[]}
     * @since 3.50.0
     */
    public var vertices:Array<phaser.geom.mesh.Vertex>;
    /**
     * The tint fill mode.
     *
     * `false` = An additive tint (the default), where vertices colors are blended with the texture.
     * `true` = A fill tint, where the vertex colors replace the texture, but respects texture alpha.
     *
     * @name Phaser.GameObjects.Mesh#tintFill
     * @type {boolean}
     * @default false
     * @since 3.50.0
     */
    public var tintFill:Bool;
    /**
     * You can optionally choose to render the vertices of this Mesh to a Graphics instance.
     *
     * Achieve this by setting the `debugCallback` and the `debugGraphic` properties.
     *
     * You can do this in a single call via the `Mesh.setDebug` method, which will use the
     * built-in debug function. You can also set it to your own callback. The callback
     * will be invoked _once per render_ and sent the following parameters:
     *
     * `debugCallback(src, meshLength, verts)`
     *
     * `src` is the Mesh instance being debugged.
     * `meshLength` is the number of mesh vertices in total.
     * `verts` is an array of the translated vertex coordinates.
     *
     * To disable rendering, set this property back to `null`.
     *
     * Please note that high vertex count Meshes will struggle to debug properly.
     *
     * @name Phaser.GameObjects.Mesh#debugCallback
     * @type {function}
     * @since 3.50.0
     */
    public var debugCallback:Dynamic;
    /**
     * The Graphics instance that the debug vertices will be drawn to, if `setDebug` has
     * been called.
     *
     * @name Phaser.GameObjects.Mesh#debugGraphic
     * @type {Phaser.GameObjects.Graphics}
     * @since 3.50.0
     */
    public var debugGraphic:phaser.gameobjects.Graphics;
    /**
     * When rendering, skip any Face that isn't counter clockwise?
     *
     * Enable this to hide backward-facing Faces during rendering.
     *
     * Disable it to render all Faces.
     *
     * @name Phaser.GameObjects.Mesh#hideCCW
     * @type {boolean}
     * @since 3.50.0
     */
    public var hideCCW:Bool;
    /**
     * A Vector3 containing the 3D position of the vertices in this Mesh.
     *
     * Modifying the components of this property will allow you to reposition where
     * the vertices are rendered within the Mesh. This happens in the `preUpdate` phase,
     * where each vertex is transformed using the view and projection matrices.
     *
     * Changing this property will impact all vertices being rendered by this Mesh.
     *
     * You can also adjust the 'view' by using the `pan` methods.
     *
     * @name Phaser.GameObjects.Mesh#modelPosition
     * @type {Phaser.Math.Vector3}
     * @since 3.50.0
     */
    public var modelPosition:phaser.math.Vector3;
    /**
     * A Vector3 containing the 3D scale of the vertices in this Mesh.
     *
     * Modifying the components of this property will allow you to scale
     * the vertices within the Mesh. This happens in the `preUpdate` phase,
     * where each vertex is transformed using the view and projection matrices.
     *
     * Changing this property will impact all vertices being rendered by this Mesh.
     *
     * @name Phaser.GameObjects.Mesh#modelScale
     * @type {Phaser.Math.Vector3}
     * @since 3.50.0
     */
    public var modelScale:phaser.math.Vector3;
    /**
     * A Vector3 containing the 3D rotation of the vertices in this Mesh.
     *
     * The values should be given in radians, i.e. to rotate the vertices by 90
     * degrees you can use `modelRotation.x = Phaser.Math.DegToRad(90)`.
     *
     * Modifying the components of this property will allow you to rotate
     * the vertices within the Mesh. This happens in the `preUpdate` phase,
     * where each vertex is transformed using the view and projection matrices.
     *
     * Changing this property will impact all vertices being rendered by this Mesh.
     *
     * @name Phaser.GameObjects.Mesh#modelRotation
     * @type {Phaser.Math.Vector3}
     * @since 3.50.0
     */
    public var modelRotation:phaser.math.Vector3;
    /**
     * The transformation matrix for this Mesh.
     *
     * @name Phaser.GameObjects.Mesh#transformMatrix
     * @type {Phaser.Math.Matrix4}
     * @since 3.50.0
     */
    public var transformMatrix:phaser.math.Matrix4;
    /**
     * The view position for this Mesh.
     *
     * Use the methods`panX`, `panY` and `panZ` to adjust the view.
     *
     * @name Phaser.GameObjects.Mesh#viewPosition
     * @type {Phaser.Math.Vector3}
     * @since 3.50.0
     */
    public var viewPosition:phaser.math.Vector3;
    /**
     * The view matrix for this Mesh.
     *
     * @name Phaser.GameObjects.Mesh#viewMatrix
     * @type {Phaser.Math.Matrix4}
     * @since 3.50.0
     */
    public var viewMatrix:phaser.math.Matrix4;
    /**
     * The projection matrix for this Mesh.
     *
     * Update it with the `setPerspective` or `setOrtho` methods.
     *
     * @name Phaser.GameObjects.Mesh#projectionMatrix
     * @type {Phaser.Math.Matrix4}
     * @since 3.50.0
     */
    public var projectionMatrix:phaser.math.Matrix4;
    /**
     * How many faces were rendered by this Mesh Game Object in the last
     * draw? This is reset in the `preUpdate` method and then incremented
     * each time a face is drawn. Note that in multi-camera Scenes this
     * value may exceed that found in `Mesh.getFaceCount` due to
     * cameras drawing the same faces more than once.
     *
     * @name Phaser.GameObjects.Mesh#totalRendered
     * @type {number}
     * @readonly
     * @since 3.50.0
     */
    public var totalRendered:Float;
    /**
     * By default, the Mesh will check to see if its model or view transform has
     * changed each frame and only recalculate the vertex positions if they have.
     *
     * This avoids lots of additional math in the `preUpdate` step when not required.
     *
     * However, if you are performing per-Face or per-Vertex manipulation on this Mesh,
     * such as tweening a Face, or moving it without moving the rest of the Mesh,
     * then you may need to disable the dirty cache in order for the Mesh to re-render
     * correctly. You can toggle this property to do that. Please note that leaving
     * this set to `true` will cause the Mesh to recalculate the position of every single
     * vertex in it, every single frame. So only really do this if you know you
     * need it.
     *
     * @name Phaser.GameObjects.Mesh#ignoreDirtyCache
     * @type {boolean}
     * @since 3.50.0
     */
    public var ignoreDirtyCache:Bool;
    /**
     * Translates the view position of this Mesh on the x axis by the given amount.
     *
     * @method Phaser.GameObjects.Mesh#panX
     * @since 3.50.0
     *
     * @param {number} v - The amount to pan by.
     */
    public function panX(v:Float):Void;
    /**
     * Translates the view position of this Mesh on the y axis by the given amount.
     *
     * @method Phaser.GameObjects.Mesh#panY
     * @since 3.50.0
     *
     * @param {number} v - The amount to pan by.
     */
    public function panY(v:Float):Void;
    /**
     * Translates the view position of this Mesh on the z axis by the given amount.
     *
     * @method Phaser.GameObjects.Mesh#panZ
     * @since 3.50.0
     *
     * @param {number} v - The amount to pan by.
     */
    public function panZ(v:Float):Void;
    /**
     * Builds a new perspective projection matrix from the given values.
     *
     * See also `setOrtho`.
     *
     * @method Phaser.GameObjects.Mesh#setPerspective
     * @since 3.50.0
     *
     * @param {number} width - The width of the projection matrix. Typically the same as the Mesh and/or Renderer.
     * @param {number} height - The height of the projection matrix. Typically the same as the Mesh and/or Renderer.
     * @param {number} [fov=45] - The field of view, in degrees.
     * @param {number} [near=0.01] - The near value of the view.
     * @param {number} [far=1000] - The far value of the view.
     */
    public function setPerspective(width:Float, height:Float, ?fov:Float, ?near:Float, ?far:Float):Void;
    /**
     * Builds a new orthographic projection matrix from the given values.
     *
     * If using this mode you will often need to set `Mesh.hideCCW` to `false` as well.
     *
     * By default, calling this method with no parameters will set the scaleX value to
     * match the renderers aspect ratio.
     *
     * See also `setPerspective`.
     *
     * @method Phaser.GameObjects.Mesh#setOrtho
     * @since 3.50.0
     *
     * @param {number} [scaleX=1] - The default horizontal scale in relation to the Mesh / Renderer dimensions.
     * @param {number} [scaleY=1] - The default vertical scale in relation to the Mesh / Renderer dimensions.
     * @param {number} [near=-1000] - The near value of the view.
     * @param {number} [far=1000] - The far value of the view.
     */
    public function setOrtho(?scaleX:Float, ?scaleY:Float, ?near:Float, ?far:Float):Void;
    /**
     * Iterates and destroys all current Faces in this Mesh, then resets the
     * `faces` and `vertices` arrays.
     *
     * @method Phaser.GameObjects.Mesh#clear
     * @since 3.50.0
     *
     * @return {this} This Mesh Game Object.
     */
    public function clear():Dynamic;
    /**
     * This method will add the data from a triangulated Wavefront OBJ model file to this Mesh.
     *
     * The data should have been loaded via the OBJFile:
     *
     * ```javascript
     * this.load.obj(key, url);
     * ```
     *
     * Then use the same `key` as the first parameter to this method.
     *
     * Multiple Mesh Game Objects can use the same model data without impacting on each other.
     *
     * Make sure your 3D package has triangulated the model data prior to exporting it.
     *
     * You can add multiple models to a single Mesh, although they will act as one when
     * moved or rotated. You can scale the model data, should it be too small, or too large, to see.
     * You can also offset the vertices of the model via the `x`, `y` and `z` parameters.
     *
     * @method Phaser.GameObjects.Mesh#addVerticesFromObj
     * @since 3.50.0
     *
     * @param {string} key - The key of the model data in the OBJ Cache to add to this Mesh.
     * @param {number} [scale=1] - An amount to scale the model data by. Use this if the model has exported too small, or large, to see.
     * @param {number} [x=0] - Translate the model x position by this amount.
     * @param {number} [y=0] - Translate the model y position by this amount.
     * @param {number} [z=0] - Translate the model z position by this amount.
     * @param {number} [rotateX=0] - Rotate the model on the x axis by this amount, in radians.
     * @param {number} [rotateY=0] - Rotate the model on the y axis by this amount, in radians.
     * @param {number} [rotateZ=0] - Rotate the model on the z axis by this amount, in radians.
     * @param {boolean} [zIsUp=true] - Is the z axis up (true), or is y axis up (false)?
     *
     * @return {this} This Mesh Game Object.
     */
    public function addVerticesFromObj(key:String, ?scale:Float, ?x:Float, ?y:Float, ?z:Float, ?rotateX:Float, ?rotateY:Float, ?rotateZ:Float, ?zIsUp:Bool):Dynamic;
    /**
     * Compare the depth of two Faces.
     *
     * @method Phaser.GameObjects.Mesh#sortByDepth
     * @since 3.50.0
     *
     * @param {Phaser.Geom.Mesh.Face} faceA - The first Face.
     * @param {Phaser.Geom.Mesh.Face} faceB - The second Face.
     *
     * @return {number} The difference between the depths of each Face.
     */
    public function sortByDepth(faceA:phaser.geom.mesh.Face, faceB:phaser.geom.mesh.Face):Float;
    /**
     * Runs a depth sort across all Faces in this Mesh, comparing their averaged depth.
     *
     * This is called automatically if you use any of the `rotate` methods, but you can
     * also invoke it to sort the Faces should you manually position them.
     *
     * @method Phaser.GameObjects.Mesh#depthSort
     * @since 3.50.0
     *
     * @return {this} This Mesh Game Object.
     */
    public function depthSort():Dynamic;
    /**
     * Adds a new Vertex into the vertices array of this Mesh.
     *
     * Just adding a vertex isn't enough to render it. You need to also
     * make it part of a Face, with 3 Vertex instances per Face.
     *
     * @method Phaser.GameObjects.Mesh#addVertex
     * @since 3.50.0
     *
     * @param {number} x - The x position of the vertex.
     * @param {number} y - The y position of the vertex.
     * @param {number} z - The z position of the vertex.
     * @param {number} u - The UV u coordinate of the vertex.
     * @param {number} v - The UV v coordinate of the vertex.
     * @param {number} [color=0xffffff] - The color value of the vertex.
     * @param {number} [alpha=1] - The alpha value of the vertex.
     *
     * @return {this} This Mesh Game Object.
     */
    public function addVertex(x:Float, y:Float, z:Float, u:Float, v:Float, ?color:Float, ?alpha:Float):Dynamic;
    /**
     * Adds a new Face into the faces array of this Mesh.
     *
     * A Face consists of references to 3 Vertex instances, which must be provided.
     *
     * @method Phaser.GameObjects.Mesh#addFace
     * @since 3.50.0
     *
     * @param {Phaser.Geom.Mesh.Vertex} vertex1 - The first vertex of the Face.
     * @param {Phaser.Geom.Mesh.Vertex} vertex2 - The second vertex of the Face.
     * @param {Phaser.Geom.Mesh.Vertex} vertex3 - The third vertex of the Face.
     *
     * @return {this} This Mesh Game Object.
     */
    public function addFace(vertex1:phaser.geom.mesh.Vertex, vertex2:phaser.geom.mesh.Vertex, vertex3:phaser.geom.mesh.Vertex):Dynamic;
    /**
     * Adds new vertices to this Mesh by parsing the given data.
     *
     * This method will take vertex data in one of two formats, based on the `containsZ` parameter.
     *
     * If your vertex data are `x`, `y` pairs, then `containsZ` should be `false` (this is the default)
     *
     * If your vertex data is groups of `x`, `y` and `z` values, then the `containsZ` parameter must be true.
     *
     * The `uvs` parameter is a numeric array consisting of `u` and `v` pairs.
     *
     * The `normals` parameter is a numeric array consisting of `x`, `y` vertex normal values and, if `containsZ` is true, `z` values as well.
     *
     * The `indicies` parameter is an optional array that, if given, is an indexed list of vertices to be added.
     *
     * The `colors` parameter is an optional array, or single value, that if given sets the color of each vertex created.
     *
     * The `alphas` parameter is an optional array, or single value, that if given sets the alpha of each vertex created.
     *
     * When providing indexed data it is assumed that _all_ of the arrays are indexed, not just the vertices.
     *
     * The following example will create a 256 x 256 sized quad using an index array:
     *
     * ```javascript
     * const vertices = [
     *   -128, 128,
     *   128, 128,
     *   -128, -128,
     *   128, -128
     * ];
     *
     * const uvs = [
     *   0, 1,
     *   1, 1,
     *   0, 0,
     *   1, 0
     * ];
     *
     * const indices = [ 0, 2, 1, 2, 3, 1 ];
     *
     * mesh.addVertices(vertices, uvs, indicies);
     * ```
     *
     * If the data is not indexed, it's assumed that the arrays all contain sequential data.
     *
     * @method Phaser.GameObjects.Mesh#addVertices
     * @since 3.50.0
     *
     * @param {number[]} vertices - The vertices array. Either `xy` pairs, or `xyz` if the `containsZ` parameter is `true`.
     * @param {number[]} uvs - The UVs pairs array.
     * @param {number[]} [indicies] - Optional vertex indicies array. If you don't have one, pass `null` or an empty array.
     * @param {boolean} [containsZ=false] - Does the vertices data include a `z` component?
     * @param {number[]} [normals] - Optional vertex normals array. If you don't have one, pass `null` or an empty array.
     * @param {number|number[]} [colors=0xffffff] - An array of colors, one per vertex, or a single color value applied to all vertices.
     * @param {number|number[]} [alphas=1] - An array of alpha values, one per vertex, or a single alpha value applied to all vertices.
     *
     * @return {this} This Mesh Game Object.
     */
    public function addVertices(vertices:Array<Float>, uvs:Array<Float>, ?indicies:Array<Float>, ?containsZ:Bool, ?normals:Array<Float>, ?colors:Dynamic, ?alphas:Dynamic):Dynamic;
    /**
     * Returns the total number of Faces in this Mesh Game Object.
     *
     * @method Phaser.GameObjects.Mesh#getFaceCount
     * @since 3.50.0
     *
     * @return {number} The number of Faces in this Mesh Game Object.
     */
    public function getFaceCount():Float;
    /**
     * Returns the total number of Vertices in this Mesh Game Object.
     *
     * @method Phaser.GameObjects.Mesh#getVertexCount
     * @since 3.50.0
     *
     * @return {number} The number of Vertices in this Mesh Game Object.
     */
    public function getVertexCount():Float;
    /**
     * Returns the Face at the given index in this Mesh Game Object.
     *
     * @method Phaser.GameObjects.Mesh#getFace
     * @since 3.50.0
     *
     * @param {number} index - The index of the Face to get.
     *
     * @return {Phaser.Geom.Mesh.Face} The Face at the given index, or `undefined` if index out of range.
     */
    public function getFace(index:Float):phaser.geom.mesh.Face;
    /**
     * Return an array of Face objects from this Mesh that intersect with the given coordinates.
     *
     * The given position is translated through the matrix of this Mesh and the given Camera,
     * before being compared against the vertices.
     *
     * If more than one Face intersects, they will all be returned in the array, but the array will
     * be depth sorted first, so the first element will always be that closest to the camera.
     *
     * @method Phaser.GameObjects.Mesh#getFaceAt
     * @since 3.50.0
     *
     * @param {number} x - The x position to check against.
     * @param {number} y - The y position to check against.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The camera to pass the coordinates through. If not give, the default Scene Camera is used.
     *
     * @return {Phaser.Geom.Mesh.Face[]} An array of Face objects that intersect with the given point, ordered by depth.
     */
    public function getFaceAt(x:Float, y:Float, ?camera:phaser.cameras.scene2d.Camera):Array<phaser.geom.mesh.Face>;
    /**
     * This method enables rendering of the Mesh vertices to the given Graphics instance.
     *
     * If you enable this feature, you **must** call `Graphics.clear()` in your Scene `update`,
     * otherwise the Graphics instance you provide to debug will fill-up with draw calls,
     * eventually crashing the browser. This is not done automatically to allow you to debug
     * draw multiple Mesh objects to a single Graphics instance.
     *
     * The Mesh class has a built-in debug rendering callback `Mesh.renderDebug`, however
     * you can also provide your own callback to be used instead. Do this by setting the `callback` parameter.
     *
     * The callback is invoked _once per render_ and sent the following parameters:
     *
     * `callback(src, faces)`
     *
     * `src` is the Mesh instance being debugged.
     * `faces` is an array of the Faces that were rendered.
     *
     * You can get the final drawn vertex position from a Face object like this:
     *
     * ```javascript
     * let face = faces[i];
     *
     * let x0 = face.vertex1.tx;
     * let y0 = face.vertex1.ty;
     * let x1 = face.vertex2.tx;
     * let y1 = face.vertex2.ty;
     * let x2 = face.vertex3.tx;
     * let y2 = face.vertex3.ty;
     *
     * graphic.strokeTriangle(x0, y0, x1, y1, x2, y2);
     * ```
     *
     * If using your own callback you do not have to provide a Graphics instance to this method.
     *
     * To disable debug rendering, to either your own callback or the built-in one, call this method
     * with no arguments.
     *
     * @method Phaser.GameObjects.Mesh#setDebug
     * @since 3.50.0
     *
     * @param {Phaser.GameObjects.Graphics} [graphic] - The Graphic instance to render to if using the built-in callback.
     * @param {function} [callback] - The callback to invoke during debug render. Leave as undefined to use the built-in callback.
     *
     * @return {this} This Game Object instance.
     */
    public function setDebug(?graphic:phaser.gameobjects.Graphics, ?callback:Dynamic):Dynamic;
    /**
     * Checks if the transformation data in this mesh is dirty.
     *
     * This is used internally by the `preUpdate` step to determine if the vertices should
     * be recalculated or not.
     *
     * @method Phaser.GameObjects.Mesh#isDirty
     * @since 3.50.0
     *
     * @return {boolean} Returns `true` if the data of this mesh is dirty, otherwise `false`.
     */
    public function isDirty():Bool;
    /**
     * The Mesh update loop. The following takes place in this method:
     *
     * First, the `totalRendered` and `totalFrame` properties are set.
     *
     * If the view matrix of this Mesh isn't dirty, and the model position, rotate or scale properties are
     * all clean, then the method returns at this point.
     *
     * Otherwise, if the viewPosition is dirty (i.e. from calling a method like `panZ`), then it will
     * refresh the viewMatrix.
     *
     * After this, a new transformMatrix is built and it then iterates through all Faces in this
     * Mesh, calling `transformCoordinatesLocal` on all of them. Internally, this updates every
     * vertex, calculating its new transformed position, based on the new transform matrix.
     *
     * Finally, the faces are depth sorted.
     *
     * @method Phaser.GameObjects.Mesh#preUpdate
     * @protected
     * @since 3.50.0
     *
     * @param {number} time - The current timestamp.
     * @param {number} delta - The delta time, in ms, elapsed since the last frame.
     */
    public function preUpdate(time:Float, delta:Float):Void;
    /**
     * The built-in Mesh debug rendering method.
     *
     * See `Mesh.setDebug` for more details.
     *
     * @method Phaser.GameObjects.Mesh#renderDebug
     * @since 3.50.0
     *
     * @param {Phaser.GameObjects.Mesh} src - The Mesh object being rendered.
     * @param {Phaser.Geom.Mesh.Face[]} faces - An array of Faces.
     */
    public function renderDebug(src:phaser.gameobjects.Mesh, faces:Array<phaser.geom.mesh.Face>):Void;
    /**
     * The alpha value of the Game Object.
     *
     * This is a global value, impacting the entire Game Object, not just a region of it.
     *
     * @name Phaser.GameObjects.Components.AlphaSingle#alpha
     * @type {number}
     * @since 3.0.0
     */
    public var alpha:Float;
    /**
     * Clears all alpha values associated with this Game Object.
     *
     * Immediately sets the alpha levels back to 1 (fully opaque).
     *
     * @method Phaser.GameObjects.Components.AlphaSingle#clearAlpha
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function clearAlpha():Dynamic;
    /**
     * Set the Alpha level of this Game Object. The alpha controls the opacity of the Game Object as it renders.
     * Alpha values are provided as a float between 0, fully transparent, and 1, fully opaque.
     *
     * @method Phaser.GameObjects.Components.AlphaSingle#setAlpha
     * @since 3.0.0
     *
     * @param {number} [value=1] - The alpha value applied across the whole Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setAlpha(?value:Float):Dynamic;
    /**
     * Sets the Blend Mode being used by this Game Object.
     *
     * This can be a const, such as `Phaser.BlendModes.SCREEN`, or an integer, such as 4 (for Overlay)
     *
     * Under WebGL only the following Blend Modes are available:
     *
     * * ADD
     * * MULTIPLY
     * * SCREEN
     * * ERASE
     *
     * Canvas has more available depending on browser support.
     *
     * You can also create your own custom Blend Modes in WebGL.
     *
     * Blend modes have different effects under Canvas and WebGL, and from browser to browser, depending
     * on support. Blend Modes also cause a WebGL batch flush should it encounter a new blend mode. For these
     * reasons try to be careful about the construction of your Scene and the frequency of which blend modes
     * are used.
     *
     * @name Phaser.GameObjects.Components.BlendMode#blendMode
     * @type {(Phaser.BlendModes|string)}
     * @since 3.0.0
     */
    public var blendMode:Dynamic;
    /**
     * Sets the Blend Mode being used by this Game Object.
     *
     * This can be a const, such as `Phaser.BlendModes.SCREEN`, or an integer, such as 4 (for Overlay)
     *
     * Under WebGL only the following Blend Modes are available:
     *
     * * ADD
     * * MULTIPLY
     * * SCREEN
     * * ERASE (only works when rendering to a framebuffer, like a Render Texture)
     *
     * Canvas has more available depending on browser support.
     *
     * You can also create your own custom Blend Modes in WebGL.
     *
     * Blend modes have different effects under Canvas and WebGL, and from browser to browser, depending
     * on support. Blend Modes also cause a WebGL batch flush should it encounter a new blend mode. For these
     * reasons try to be careful about the construction of your Scene and the frequency in which blend modes
     * are used.
     *
     * @method Phaser.GameObjects.Components.BlendMode#setBlendMode
     * @since 3.0.0
     *
     * @param {(string|Phaser.BlendModes)} value - The BlendMode value. Either a string or a CONST.
     *
     * @return {this} This Game Object instance.
     */
    public function setBlendMode(value:Dynamic):Dynamic;
    /**
     * The depth of this Game Object within the Scene.
     *
     * The depth is also known as the 'z-index' in some environments, and allows you to change the rendering order
     * of Game Objects, without actually moving their position in the display list.
     *
     * The default depth is zero. A Game Object with a higher depth
     * value will always render in front of one with a lower value.
     *
     * Setting the depth will queue a depth sort event within the Scene.
     *
     * @name Phaser.GameObjects.Components.Depth#depth
     * @type {number}
     * @since 3.0.0
     */
    public var depth:Float;
    /**
     * The depth of this Game Object within the Scene.
     *
     * The depth is also known as the 'z-index' in some environments, and allows you to change the rendering order
     * of Game Objects, without actually moving their position in the display list.
     *
     * The default depth is zero. A Game Object with a higher depth
     * value will always render in front of one with a lower value.
     *
     * Setting the depth will queue a depth sort event within the Scene.
     *
     * @method Phaser.GameObjects.Components.Depth#setDepth
     * @since 3.0.0
     *
     * @param {number} value - The depth of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDepth(value:Float):Dynamic;
    /**
     * The Mask this Game Object is using during render.
     *
     * @name Phaser.GameObjects.Components.Mask#mask
     * @type {Phaser.Display.Masks.BitmapMask|Phaser.Display.Masks.GeometryMask}
     * @since 3.0.0
     */
    public var mask:Dynamic;
    /**
     * Sets the mask that this Game Object will use to render with.
     *
     * The mask must have been previously created and can be either a GeometryMask or a BitmapMask.
     * Note: Bitmap Masks only work on WebGL. Geometry Masks work on both WebGL and Canvas.
     *
     * If a mask is already set on this Game Object it will be immediately replaced.
     *
     * Masks are positioned in global space and are not relative to the Game Object to which they
     * are applied. The reason for this is that multiple Game Objects can all share the same mask.
     *
     * Masks have no impact on physics or input detection. They are purely a rendering component
     * that allows you to limit what is visible during the render pass.
     *
     * @method Phaser.GameObjects.Components.Mask#setMask
     * @since 3.6.2
     *
     * @param {Phaser.Display.Masks.BitmapMask|Phaser.Display.Masks.GeometryMask} mask - The mask this Game Object will use when rendering.
     *
     * @return {this} This Game Object instance.
     */
    public function setMask(mask:Dynamic):Dynamic;
    /**
     * Clears the mask that this Game Object was using.
     *
     * @method Phaser.GameObjects.Components.Mask#clearMask
     * @since 3.6.2
     *
     * @param {boolean} [destroyMask=false] - Destroy the mask before clearing it?
     *
     * @return {this} This Game Object instance.
     */
    public function clearMask(?destroyMask:Bool):Dynamic;
    /**
     * Creates and returns a Bitmap Mask. This mask can be used by any Game Object,
     * including this one.
     *
     * Note: Bitmap Masks only work on WebGL. Geometry Masks work on both WebGL and Canvas.
     *
     * To create the mask you need to pass in a reference to a renderable Game Object.
     * A renderable Game Object is one that uses a texture to render with, such as an
     * Image, Sprite, Render Texture or BitmapText.
     *
     * If you do not provide a renderable object, and this Game Object has a texture,
     * it will use itself as the object. This means you can call this method to create
     * a Bitmap Mask from any renderable Game Object.
     *
     * @method Phaser.GameObjects.Components.Mask#createBitmapMask
     * @since 3.6.2
     *
     * @param {Phaser.GameObjects.GameObject} [renderable] - A renderable Game Object that uses a texture, such as a Sprite.
     *
     * @return {Phaser.Display.Masks.BitmapMask} This Bitmap Mask that was created.
     */
    public function createBitmapMask(?renderable:phaser.gameobjects.GameObject):phaser.display.masks.BitmapMask;
    /**
     * Creates and returns a Geometry Mask. This mask can be used by any Game Object,
     * including this one.
     *
     * To create the mask you need to pass in a reference to a Graphics Game Object.
     *
     * If you do not provide a graphics object, and this Game Object is an instance
     * of a Graphics object, then it will use itself to create the mask.
     *
     * This means you can call this method to create a Geometry Mask from any Graphics Game Object.
     *
     * @method Phaser.GameObjects.Components.Mask#createGeometryMask
     * @since 3.6.2
     *
     * @param {Phaser.GameObjects.Graphics} [graphics] - A Graphics Game Object. The geometry within it will be used as the mask.
     *
     * @return {Phaser.Display.Masks.GeometryMask} This Geometry Mask that was created.
     */
    public function createGeometryMask(?graphics:phaser.gameobjects.Graphics):phaser.display.masks.GeometryMask;
    /**
     * The initial WebGL pipeline of this Game Object.
     *
     * If you call `resetPipeline` on this Game Object, the pipeline is reset to this default.
     *
     * @name Phaser.GameObjects.Components.Pipeline#defaultPipeline
     * @type {Phaser.Renderer.WebGL.WebGLPipeline}
     * @default null
     * @webglOnly
     * @since 3.0.0
     */
    public var defaultPipeline:phaser.renderer.webgl.WebGLPipeline;
    /**
     * The current WebGL pipeline of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Pipeline#pipeline
     * @type {Phaser.Renderer.WebGL.WebGLPipeline}
     * @default null
     * @webglOnly
     * @since 3.0.0
     */
    public var pipeline:phaser.renderer.webgl.WebGLPipeline;
    /**
     * Does this Game Object have any Post Pipelines set?
     *
     * @name Phaser.GameObjects.Components.Pipeline#hasPostPipeline
     * @type {boolean}
     * @webglOnly
     * @since 3.50.0
     */
    public var hasPostPipeline:Bool;
    /**
     * The WebGL Post FX Pipelines this Game Object uses for post-render effects.
     *
     * The pipelines are processed in the order in which they appear in this array.
     *
     * If you modify this array directly, be sure to set the
     * `hasPostPipeline` property accordingly.
     *
     * @name Phaser.GameObjects.Components.Pipeline#postPipeline
     * @type {Phaser.Renderer.WebGL.Pipelines.PostFXPipeline[]}
     * @webglOnly
     * @since 3.50.0
     */
    public var postPipeline:Array<phaser.renderer.webgl.pipelines.PostFXPipeline>;
    /**
     * An object to store pipeline specific data in, to be read by the pipelines this Game Object uses.
     *
     * @name Phaser.GameObjects.Components.Pipeline#pipelineData
     * @type {object}
     * @webglOnly
     * @since 3.50.0
     */
    public var pipelineData:Dynamic;
    /**
     * Sets the initial WebGL Pipeline of this Game Object.
     *
     * This should only be called during the instantiation of the Game Object. After that, use `setPipeline`.
     *
     * @method Phaser.GameObjects.Components.Pipeline#initPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {(string|Phaser.Renderer.WebGL.WebGLPipeline)} pipeline - Either the string-based name of the pipeline, or a pipeline instance to set.
     *
     * @return {boolean} `true` if the pipeline was set successfully, otherwise `false`.
     */
    public function initPipeline(pipeline:Dynamic):Bool;
    /**
     * Sets the main WebGL Pipeline of this Game Object.
     *
     * Also sets the `pipelineData` property, if the parameter is given.
     *
     * Both the pipeline and post pipelines share the same pipeline data object.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {(string|Phaser.Renderer.WebGL.WebGLPipeline)} pipeline - Either the string-based name of the pipeline, or a pipeline instance to set.
     * @param {object} [pipelineData] - Optional pipeline data object that is _deep copied_ into the `pipelineData` property of this Game Object.
     * @param {boolean} [copyData=true] - Should the pipeline data object be _deep copied_ into the `pipelineData` property of this Game Object? If `false` it will be set by reference instead.
     *
     * @return {this} This Game Object instance.
     */
    public function setPipeline(pipeline:Dynamic, ?pipelineData:Dynamic, ?copyData:Bool):Dynamic;
    /**
     * Sets one, or more, Post Pipelines on this Game Object.
     *
     * Post Pipelines are invoked after this Game Object has rendered to its target and
     * are commonly used for post-fx.
     *
     * The post pipelines are appended to the `postPipelines` array belonging to this
     * Game Object. When the renderer processes this Game Object, it iterates through the post
     * pipelines in the order in which they appear in the array. If you are stacking together
     * multiple effects, be aware that the order is important.
     *
     * If you call this method multiple times, the new pipelines will be appended to any existing
     * post pipelines already set. Use the `resetPostPipeline` method to clear them first, if required.
     *
     * You can optionally also sets the `pipelineData` property, if the parameter is given.
     *
     * Both the pipeline and post pipelines share the pipeline data object together.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {(string|string[]|function|function[]|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline[])} pipelines - Either the string-based name of the pipeline, or a pipeline instance, or class, or an array of them.
     * @param {object} [pipelineData] - Optional pipeline data object that is _deep copied_ into the `pipelineData` property of this Game Object.
     * @param {boolean} [copyData=true] - Should the pipeline data object be _deep copied_ into the `pipelineData` property of this Game Object? If `false` it will be set by reference instead.
     *
     * @return {this} This Game Object instance.
     */
    public function setPostPipeline(pipelines:Dynamic, ?pipelineData:Dynamic, ?copyData:Bool):Dynamic;
    /**
     * Adds an entry to the `pipelineData` object belonging to this Game Object.
     *
     * If the 'key' already exists, its value is updated. If it doesn't exist, it is created.
     *
     * If `value` is undefined, and `key` exists, `key` is removed from the data object.
     *
     * Both the pipeline and post pipelines share the pipeline data object together.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPipelineData
     * @webglOnly
     * @since 3.50.0
     *
     * @param {string} key - The key of the pipeline data to set, update, or delete.
     * @param {any} [value] - The value to be set with the key. If `undefined` then `key` will be deleted from the object.
     *
     * @return {this} This Game Object instance.
     */
    public function setPipelineData(key:String, ?value:Dynamic):Dynamic;
    /**
     * Gets a Post Pipeline instance from this Game Object, based on the given name, and returns it.
     *
     * @method Phaser.GameObjects.Components.Pipeline#getPostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {(string|function|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline)} pipeline - The string-based name of the pipeline, or a pipeline class.
     *
     * @return {Phaser.Renderer.WebGL.Pipelines.PostFXPipeline} The first Post Pipeline matching the name, or undefined if no match.
     */
    public function getPostPipeline(pipeline:Dynamic):phaser.renderer.webgl.pipelines.PostFXPipeline;
    /**
     * Resets the WebGL Pipeline of this Game Object back to the default it was created with.
     *
     * @method Phaser.GameObjects.Components.Pipeline#resetPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {boolean} [resetPostPipelines=false] - Reset all of the post pipelines?
     * @param {boolean} [resetData=false] - Reset the `pipelineData` object to being an empty object?
     *
     * @return {boolean} `true` if the pipeline was reset successfully, otherwise `false`.
     */
    public function resetPipeline(?resetPostPipelines:Bool, ?resetData:Bool):Bool;
    /**
     * Resets the WebGL Post Pipelines of this Game Object. It does this by calling
     * the `destroy` method on each post pipeline and then clearing the local array.
     *
     * @method Phaser.GameObjects.Components.Pipeline#resetPostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {boolean} [resetData=false] - Reset the `pipelineData` object to being an empty object?
     */
    public function resetPostPipeline(?resetData:Bool):Void;
    /**
     * Removes a single Post Pipeline instance from this Game Object, based on the given name, and destroys it.
     *
     * If you wish to remove all Post Pipelines use the `resetPostPipeline` method instead.
     *
     * @method Phaser.GameObjects.Components.Pipeline#removePostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {string|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline} pipeline - The string-based name of the pipeline, or a pipeline class.
     *
     * @return {this} This Game Object.
     */
    public function removePostPipeline(pipeline:Dynamic):Dynamic;
    /**
     * Gets the name of the WebGL Pipeline this Game Object is currently using.
     *
     * @method Phaser.GameObjects.Components.Pipeline#getPipelineName
     * @webglOnly
     * @since 3.0.0
     *
     * @return {string} The string-based name of the pipeline being used by this Game Object.
     */
    public function getPipelineName():String;
    /**
     * The native (un-scaled) width of this Game Object.
     *
     * Changing this value will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or use
     * the `displayWidth` property.
     *
     * @name Phaser.GameObjects.Components.Size#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The native (un-scaled) height of this Game Object.
     *
     * Changing this value will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or use
     * the `displayHeight` property.
     *
     * @name Phaser.GameObjects.Components.Size#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The displayed width of this Game Object.
     *
     * This value takes into account the scale factor.
     *
     * Setting this value will adjust the Game Object's scale property.
     *
     * @name Phaser.GameObjects.Components.Size#displayWidth
     * @type {number}
     * @since 3.0.0
     */
    public var displayWidth:Float;
    /**
     * The displayed height of this Game Object.
     *
     * This value takes into account the scale factor.
     *
     * Setting this value will adjust the Game Object's scale property.
     *
     * @name Phaser.GameObjects.Components.Size#displayHeight
     * @type {number}
     * @since 3.0.0
     */
    public var displayHeight:Float;
    /**
     * Sets the size of this Game Object to be that of the given Frame.
     *
     * This will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or call the
     * `setDisplaySize` method, which is the same thing as changing the scale but allows you
     * to do so by giving pixel values.
     *
     * If you have enabled this Game Object for input, changing the size will _not_ change the
     * size of the hit area. To do this you should adjust the `input.hitArea` object directly.
     *
     * @method Phaser.GameObjects.Components.Size#setSizeToFrame
     * @since 3.0.0
     *
     * @param {Phaser.Textures.Frame} frame - The frame to base the size of this Game Object on.
     *
     * @return {this} This Game Object instance.
     */
    public function setSizeToFrame(frame:phaser.textures.Frame):Dynamic;
    /**
     * Sets the internal size of this Game Object, as used for frame or physics body creation.
     *
     * This will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or call the
     * `setDisplaySize` method, which is the same thing as changing the scale but allows you
     * to do so by giving pixel values.
     *
     * If you have enabled this Game Object for input, changing the size will _not_ change the
     * size of the hit area. To do this you should adjust the `input.hitArea` object directly.
     *
     * @method Phaser.GameObjects.Components.Size#setSize
     * @since 3.0.0
     *
     * @param {number} width - The width of this Game Object.
     * @param {number} height - The height of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setSize(width:Float, height:Float):Dynamic;
    /**
     * Sets the display size of this Game Object.
     *
     * Calling this will adjust the scale.
     *
     * @method Phaser.GameObjects.Components.Size#setDisplaySize
     * @since 3.0.0
     *
     * @param {number} width - The width of this Game Object.
     * @param {number} height - The height of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDisplaySize(width:Float, height:Float):Dynamic;
    /**
     * The Texture this Game Object is using to render with.
     *
     * @name Phaser.GameObjects.Components.Texture#texture
     * @type {Phaser.Textures.Texture|Phaser.Textures.CanvasTexture}
     * @since 3.0.0
     */
    public var texture:Dynamic;
    /**
     * The Texture Frame this Game Object is using to render with.
     *
     * @name Phaser.GameObjects.Components.Texture#frame
     * @type {Phaser.Textures.Frame}
     * @since 3.0.0
     */
    public var frame:phaser.textures.Frame;
    /**
     * Sets the texture and frame this Game Object will use to render with.
     *
     * Textures are referenced by their string-based keys, as stored in the Texture Manager.
     *
     * @method Phaser.GameObjects.Components.Texture#setTexture
     * @since 3.0.0
     *
     * @param {(string|Phaser.Textures.Texture)} key - The key of the texture to be used, as stored in the Texture Manager, or a Texture instance.
     * @param {(string|number)} [frame] - The name or index of the frame within the Texture.
     *
     * @return {this} This Game Object instance.
     */
    public function setTexture(key:Dynamic, ?frame:Dynamic):Dynamic;
    /**
     * Sets the frame this Game Object will use to render with.
     *
     * The Frame has to belong to the current Texture being used.
     *
     * It can be either a string or an index.
     *
     * Calling `setFrame` will modify the `width` and `height` properties of your Game Object.
     * It will also change the `origin` if the Frame has a custom pivot point, as exported from packages like Texture Packer.
     *
     * @method Phaser.GameObjects.Components.Texture#setFrame
     * @since 3.0.0
     *
     * @param {(string|number)} frame - The name or index of the frame within the Texture.
     * @param {boolean} [updateSize=true] - Should this call adjust the size of the Game Object?
     * @param {boolean} [updateOrigin=true] - Should this call adjust the origin of the Game Object?
     *
     * @return {this} This Game Object instance.
     */
    public function setFrame(frame:Dynamic, ?updateSize:Bool, ?updateOrigin:Bool):Dynamic;
    /**
     * The x position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#x
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#y
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The z position of this Game Object.
     *
     * Note: The z position does not control the rendering order of 2D Game Objects. Use
     * {@link Phaser.GameObjects.Components.Depth#depth} instead.
     *
     * @name Phaser.GameObjects.Components.Transform#z
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var z:Float;
    /**
     * The w position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#w
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var w:Float;
    /**
     * This is a special setter that allows you to set both the horizontal and vertical scale of this Game Object
     * to the same value, at the same time. When reading this value the result returned is `(scaleX + scaleY) / 2`.
     *
     * Use of this property implies you wish the horizontal and vertical scales to be equal to each other. If this
     * isn't the case, use the `scaleX` or `scaleY` properties instead.
     *
     * @name Phaser.GameObjects.Components.Transform#scale
     * @type {number}
     * @default 1
     * @since 3.18.0
     */
    public var scale:Float;
    /**
     * The horizontal scale of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#scaleX
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scaleX:Float;
    /**
     * The vertical scale of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#scaleY
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scaleY:Float;
    /**
     * The angle of this Game Object as expressed in degrees.
     *
     * Phaser uses a right-hand clockwise rotation system, where 0 is right, 90 is down, 180/-180 is left
     * and -90 is up.
     *
     * If you prefer to work in radians, see the `rotation` property instead.
     *
     * @name Phaser.GameObjects.Components.Transform#angle
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var angle:Float;
    /**
     * The angle of this Game Object in radians.
     *
     * Phaser uses a right-hand clockwise rotation system, where 0 is right, PI/2 is down, +-PI is left
     * and -PI/2 is up.
     *
     * If you prefer to work in degrees, see the `angle` property instead.
     *
     * @name Phaser.GameObjects.Components.Transform#rotation
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var rotation:Float;
    /**
     * Sets the position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setPosition
     * @since 3.0.0
     *
     * @param {number} [x=0] - The x position of this Game Object.
     * @param {number} [y=x] - The y position of this Game Object. If not set it will use the `x` value.
     * @param {number} [z=0] - The z position of this Game Object.
     * @param {number} [w=0] - The w position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setPosition(?x:Float, ?y:Float, ?z:Float, ?w:Float):Dynamic;
    /**
     * Copies an object's coordinates to this Game Object's position.
     *
     * @method Phaser.GameObjects.Components.Transform#copyPosition
     * @since 3.50.0
     *
     * @param {(Phaser.Types.Math.Vector2Like|Phaser.Types.Math.Vector3Like|Phaser.Types.Math.Vector4Like)} source - An object with numeric 'x', 'y', 'z', or 'w' properties. Undefined values are not copied.
     *
     * @return {this} This Game Object instance.
     */
    public function copyPosition(source:Dynamic):Dynamic;
    /**
     * Sets the position of this Game Object to be a random position within the confines of
     * the given area.
     *
     * If no area is specified a random position between 0 x 0 and the game width x height is used instead.
     *
     * The position does not factor in the size of this Game Object, meaning that only the origin is
     * guaranteed to be within the area.
     *
     * @method Phaser.GameObjects.Components.Transform#setRandomPosition
     * @since 3.8.0
     *
     * @param {number} [x=0] - The x position of the top-left of the random area.
     * @param {number} [y=0] - The y position of the top-left of the random area.
     * @param {number} [width] - The width of the random area.
     * @param {number} [height] - The height of the random area.
     *
     * @return {this} This Game Object instance.
     */
    public function setRandomPosition(?x:Float, ?y:Float, ?width:Float, ?height:Float):Dynamic;
    /**
     * Sets the rotation of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setRotation
     * @since 3.0.0
     *
     * @param {number} [radians=0] - The rotation of this Game Object, in radians.
     *
     * @return {this} This Game Object instance.
     */
    public function setRotation(?radians:Float):Dynamic;
    /**
     * Sets the angle of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setAngle
     * @since 3.0.0
     *
     * @param {number} [degrees=0] - The rotation of this Game Object, in degrees.
     *
     * @return {this} This Game Object instance.
     */
    public function setAngle(?degrees:Float):Dynamic;
    /**
     * Sets the scale of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setScale
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scale of this Game Object.
     * @param {number} [y=x] - The vertical scale of this Game Object. If not set it will use the `x` value.
     *
     * @return {this} This Game Object instance.
     */
    public function setScale(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the x position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setX
     * @since 3.0.0
     *
     * @param {number} [value=0] - The x position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setX(?value:Float):Dynamic;
    /**
     * Sets the y position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setY
     * @since 3.0.0
     *
     * @param {number} [value=0] - The y position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setY(?value:Float):Dynamic;
    /**
     * Sets the z position of this Game Object.
     *
     * Note: The z position does not control the rendering order of 2D Game Objects. Use
     * {@link Phaser.GameObjects.Components.Depth#setDepth} instead.
     *
     * @method Phaser.GameObjects.Components.Transform#setZ
     * @since 3.0.0
     *
     * @param {number} [value=0] - The z position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setZ(?value:Float):Dynamic;
    /**
     * Sets the w position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setW
     * @since 3.0.0
     *
     * @param {number} [value=0] - The w position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setW(?value:Float):Dynamic;
    /**
     * Gets the local transform matrix for this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#getLocalTransformMatrix
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.Components.TransformMatrix} [tempMatrix] - The matrix to populate with the values from this Game Object.
     *
     * @return {Phaser.GameObjects.Components.TransformMatrix} The populated Transform Matrix.
     */
    public function getLocalTransformMatrix(?tempMatrix:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    /**
     * Gets the world transform matrix for this Game Object, factoring in any parent Containers.
     *
     * @method Phaser.GameObjects.Components.Transform#getWorldTransformMatrix
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.Components.TransformMatrix} [tempMatrix] - The matrix to populate with the values from this Game Object.
     * @param {Phaser.GameObjects.Components.TransformMatrix} [parentMatrix] - A temporary matrix to hold parent values during the calculations.
     *
     * @return {Phaser.GameObjects.Components.TransformMatrix} The populated Transform Matrix.
     */
    public function getWorldTransformMatrix(?tempMatrix:phaser.gameobjects.components.TransformMatrix, ?parentMatrix:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    /**
     * Takes the given `x` and `y` coordinates and converts them into local space for this
     * Game Object, taking into account parent and local transforms, and the Display Origin.
     *
     * The returned Vector2 contains the translated point in its properties.
     *
     * A Camera needs to be provided in order to handle modified scroll factors. If no
     * camera is specified, it will use the `main` camera from the Scene to which this
     * Game Object belongs.
     *
     * @method Phaser.GameObjects.Components.Transform#getLocalPoint
     * @since 3.50.0
     *
     * @param {number} x - The x position to translate.
     * @param {number} y - The y position to translate.
     * @param {Phaser.Math.Vector2} [point] - A Vector2, or point-like object, to store the results in.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera which is being tested against. If not given will use the Scene default camera.
     *
     * @return {Phaser.Math.Vector2} The translated point.
     */
    public function getLocalPoint(x:Float, y:Float, ?point:phaser.math.Vector2, ?camera:phaser.cameras.scene2d.Camera):phaser.math.Vector2;
    /**
     * Gets the sum total rotation of all of this Game Objects parent Containers.
     *
     * The returned value is in radians and will be zero if this Game Object has no parent container.
     *
     * @method Phaser.GameObjects.Components.Transform#getParentRotation
     * @since 3.18.0
     *
     * @return {number} The sum total rotation, in radians, of all parent containers of this Game Object.
     */
    public function getParentRotation():Float;
    /**
     * The visible state of the Game Object.
     *
     * An invisible Game Object will skip rendering, but will still process update logic.
     *
     * @name Phaser.GameObjects.Components.Visible#visible
     * @type {boolean}
     * @since 3.0.0
     */
    public var visible:Bool;
    /**
     * Sets the visibility of this Game Object.
     *
     * An invisible Game Object will skip rendering, but will still process update logic.
     *
     * @method Phaser.GameObjects.Components.Visible#setVisible
     * @since 3.0.0
     *
     * @param {boolean} value - The visible state of the Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setVisible(value:Bool):Dynamic;
    /**
     * The horizontal scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @name Phaser.GameObjects.Components.ScrollFactor#scrollFactorX
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scrollFactorX:Float;
    /**
     * The vertical scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @name Phaser.GameObjects.Components.ScrollFactor#scrollFactorY
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scrollFactorY:Float;
    /**
     * Sets the scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @method Phaser.GameObjects.Components.ScrollFactor#setScrollFactor
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scroll factor of this Game Object.
     * @param {number} [y=x] - The vertical scroll factor of this Game Object. If not set it will use the `x` value.
     *
     * @return {this} This Game Object instance.
     */
    public function setScrollFactor(x:Float, ?y:Float):Dynamic;
}
