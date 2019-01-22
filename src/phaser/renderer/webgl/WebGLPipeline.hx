package phaser.renderer.webgl;

/**
 * @classdesc
 * WebGLPipeline is a class that describes the way elements will be rendererd
 * in WebGL, specially focused on batching vertices (batching is not provided).
 * Pipelines are mostly used for describing 2D rendering passes but it's
 * flexible enough to be used for any type of rendering including 3D.
 * Internally WebGLPipeline will handle things like compiling shaders,
 * creating vertex buffers, assigning primitive topology and binding
 * vertex attributes.
 *
 * The config properties are:
 * - game: Current game instance.
 * - renderer: Current WebGL renderer.
 * - gl: Current WebGL context.
 * - topology: This indicates how the primitives are rendered. The default value is GL_TRIANGLES.
 *              Here is the full list of rendering primitives (https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Constants).
 * - vertShader: Source for vertex shader as a string.
 * - fragShader: Source for fragment shader as a string.
 * - vertexCapacity: The amount of vertices that shall be allocated
 * - vertexSize: The size of a single vertex in bytes.
 * - vertices: An optional buffer of vertices
 * - attributes: An array describing the vertex attributes
 *
 * The vertex attributes properties are:
 * - name : String - Name of the attribute in the vertex shader
 * - size : integer - How many components describe the attribute. For ex: vec3 = size of 3, float = size of 1
 * - type : GLenum - WebGL type (gl.BYTE, gl.SHORT, gl.UNSIGNED_BYTE, gl.UNSIGNED_SHORT, gl.FLOAT)
 * - normalized : boolean - Is the attribute normalized
 * - offset : integer - The offset in bytes to the current attribute in the vertex. Equivalent to offsetof(vertex, attrib) in C
 * Here you can find more information of how to describe an attribute:
 * - https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/vertexAttribPointer
 *
 * @class WebGLPipeline
 * @memberof Phaser.Renderer.WebGL
 * @constructor
 * @since 3.0.0
 *
 * @param {object} config - [description]
 */
@:native("Phaser.Renderer.WebGL.WebGLPipeline")
extern class WebGLPipeline {
    public function new(config:Dynamic);
    /**
     * Name of the Pipeline. Used for identifying
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#name
     * @type {string}
     * @since 3.0.0
     */
    public var name:String;
    /**
     * [description]
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#game
     * @type {Phaser.Game}
     * @since 3.0.0
     */
    public var game:phaser.Game;
    /**
     * [description]
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#view
     * @type {HTMLCanvasElement}
     * @since 3.0.0
     */
    public var view:js.html.CanvasElement;
    /**
     * Used to store the current game resolution
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#resolution
     * @type {number}
     * @since 3.0.0
     */
    public var resolution:Float;
    /**
     * Width of the current viewport
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * Height of the current viewport
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * [description]
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#gl
     * @type {WebGLRenderingContext}
     * @since 3.0.0
     */
    public var gl:js.html.webgl.RenderingContext;
    /**
     * How many vertices have been fed to the current pipeline.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#vertexCount
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var vertexCount:Float;
    /**
     * The limit of vertices that the pipeline can hold
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#vertexCapacity
     * @type {integer}
     * @since 3.0.0
     */
    public var vertexCapacity:Int;
    /**
     * [description]
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#renderer
     * @type {Phaser.Renderer.WebGL.WebGLRenderer}
     * @since 3.0.0
     */
    public var renderer:phaser.renderer.webgl.WebGLRenderer;
    /**
     * Raw byte buffer of vertices.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#vertexData
     * @type {ArrayBuffer}
     * @since 3.0.0
     */
    public var vertexData:js.html.ArrayBuffer;
    /**
     * The handle to a WebGL vertex buffer object.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#vertexBuffer
     * @type {WebGLBuffer}
     * @since 3.0.0
     */
    public var vertexBuffer:js.html.webgl.Buffer;
    /**
     * The handle to a WebGL program
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#program
     * @type {WebGLProgram}
     * @since 3.0.0
     */
    public var program:js.html.webgl.Program;
    /**
     * Array of objects that describe the vertex attributes
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#attributes
     * @type {object}
     * @since 3.0.0
     */
    public var attributes:Dynamic;
    /**
     * The size in bytes of the vertex
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#vertexSize
     * @type {integer}
     * @since 3.0.0
     */
    public var vertexSize:Int;
    /**
     * The primitive topology which the pipeline will use to submit draw calls
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#topology
     * @type {integer}
     * @since 3.0.0
     */
    public var topology:Int;
    /**
     * Uint8 view to the vertex raw buffer. Used for uploading vertex buffer resources
     * to the GPU.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#bytes
     * @type {Uint8Array}
     * @since 3.0.0
     */
    public var bytes:js.html.Uint8Array;
    /**
     * This will store the amount of components of 32 bit length
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#vertexComponentCount
     * @type {integer}
     * @since 3.0.0
     */
    public var vertexComponentCount:Int;
    /**
     * Indicates if the current pipeline is flushing the contents to the GPU.
     * When the variable is set the flush function will be locked.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#flushLocked
     * @type {boolean}
     * @since 3.1.0
     */
    public var flushLocked:Bool;
    /**
     * Indicates if the current pipeline is active or not for this frame only.
     * Reset in the onRender method.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#active
     * @type {boolean}
     * @since 3.10.0
     */
    public var active:Bool;
    /**
     * Called when the Game has fully booted and the Renderer has finished setting up.
     *
     * By this stage all Game level systems are now in place and you can perform any final
     * tasks that the pipeline may need that relied on game systems such as the Texture Manager.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#boot
     * @since 3.11.0
     */
    public function boot():Void;
    /**
     * Adds a description of vertex attribute to the pipeline
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#addAttribute
     * @since 3.2.0
     *
     * @param {string} name - Name of the vertex attribute
     * @param {integer} size - Vertex component size
     * @param {integer} type - Type of the attribute
     * @param {boolean} normalized - Is the value normalized to a range
     * @param {integer} offset - Byte offset to the beginning of the first element in the vertex
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function addAttribute(name:String, size:Int, type:Int, normalized:Bool, offset:Int):Dynamic;
    /**
     * Check if the current batch of vertices is full.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#shouldFlush
     * @since 3.0.0
     *
     * @return {boolean} [description]
     */
    public function shouldFlush():Bool;
    /**
     * Resizes the properties used to describe the viewport
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#resize
     * @since 3.0.0
     *
     * @param {number} width - [description]
     * @param {number} height - [description]
     * @param {number} resolution - [description]
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function resize(width:Float, height:Float, resolution:Float):Dynamic;
    /**
     * Binds the pipeline resources, including programs, vertex buffers and binds attributes
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#bind
     * @since 3.0.0
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function bind():Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onBind
     * @since 3.0.0
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function onBind():Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onPreRender
     * @since 3.0.0
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function onPreRender():Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onRender
     * @since 3.0.0
     *
     * @param {Phaser.Scene} scene - [description]
     * @param {Phaser.Cameras.Scene2D.Camera} camera - [description]
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function onRender(scene:phaser.Scene, camera:phaser.cameras.scene2d.Camera):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onPostRender
     * @since 3.0.0
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function onPostRender():Dynamic;
    /**
     * Uploads the vertex data and emits a draw call
     * for the current batch of vertices.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#flush
     * @since 3.0.0
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function flush():Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#destroy
     * @since 3.0.0
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function destroy():Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setFloat1
     * @since 3.2.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {number} x - [description]
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setFloat1(name:String, x:Float):Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setFloat2
     * @since 3.2.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {number} x - [description]
     * @param {number} y - [description]
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setFloat2(name:String, x:Float, y:Float):Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setFloat3
     * @since 3.2.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {number} x - [description]
     * @param {number} y - [description]
     * @param {number} z - [description]
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setFloat3(name:String, x:Float, y:Float, z:Float):Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setFloat4
     * @since 3.2.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {number} x - X component of the uniform
     * @param {number} y - Y component of the uniform
     * @param {number} z - Z component of the uniform
     * @param {number} w - W component of the uniform
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setFloat4(name:String, x:Float, y:Float, z:Float, w:Float):Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setFloat1v
     * @since 3.13.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setFloat1v(name:String, arr:js.html.Float32Array):Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setFloat2v
     * @since 3.13.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setFloat2v(name:String, arr:js.html.Float32Array):Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setFloat3v
     * @since 3.13.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setFloat3v(name:String, arr:js.html.Float32Array):Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setFloat4v
     * @since 3.13.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setFloat4v(name:String, arr:js.html.Float32Array):Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setInt1
     * @since 3.2.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {integer} x - [description]
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setInt1(name:String, x:Int):Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setInt2
     * @since 3.2.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {integer} x - [description]
     * @param {integer} y - [description]
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setInt2(name:String, x:Int, y:Int):Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setInt3
     * @since 3.2.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {integer} x - [description]
     * @param {integer} y - [description]
     * @param {integer} z - [description]
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setInt3(name:String, x:Int, y:Int, z:Int):Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setInt4
     * @since 3.2.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {integer} x - X component of the uniform
     * @param {integer} y - Y component of the uniform
     * @param {integer} z - Z component of the uniform
     * @param {integer} w - W component of the uniform
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setInt4(name:String, x:Int, y:Int, z:Int, w:Int):Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setMatrix2
     * @since 3.2.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {boolean} transpose - [description]
     * @param {Float32Array} matrix - [description]
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setMatrix2(name:String, transpose:Bool, matrix:js.html.Float32Array):Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setMatrix3
     * @since 3.2.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {boolean} transpose - [description]
     * @param {Float32Array} matrix - [description]
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setMatrix3(name:String, transpose:Bool, matrix:js.html.Float32Array):Dynamic;
    /**
     * Set a uniform value of the current pipeline program.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setMatrix4
     * @since 3.2.0
     *
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {boolean} transpose - Should the matrix be transpose
     * @param {Float32Array} matrix - Matrix data
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setMatrix4(name:String, transpose:Bool, matrix:js.html.Float32Array):Dynamic;
}
