package phaser.renderer.webgl;

/**
 * @classdesc
 * WebGLRenderer is a class that contains the needed functionality to keep the
 * WebGLRenderingContext state clean. The main idea of the WebGLRenderer is to keep track of
 * any context change that happens for WebGL rendering inside of Phaser. This means
 * if raw webgl functions are called outside the WebGLRenderer of the Phaser WebGL
 * rendering ecosystem they might pollute the current WebGLRenderingContext state producing
 * unexpected behavior. It's recommended that WebGL interaction is done through
 * WebGLRenderer and/or WebGLPipeline.
 *
 * @class WebGLRenderer
 * @memberof Phaser.Renderer.WebGL
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Game} game - The Game instance which owns this WebGL Renderer.
 */
@:native("Phaser.Renderer.WebGL.WebGLRenderer")
extern class WebGLRenderer {
    public function new(game:phaser.Game);
    /**
     * The local configuration settings of this WebGL Renderer.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#config
     * @type {RendererConfig}
     * @since 3.0.0
     */
    public var config:RendererConfig;
    /**
     * The Game instance which owns this WebGL Renderer.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#game
     * @type {Phaser.Game}
     * @since 3.0.0
     */
    public var game:phaser.Game;
    /**
     * A constant which allows the renderer to be easily identified as a WebGL Renderer.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#type
     * @type {integer}
     * @since 3.0.0
     */
    public var type:Int;
    /**
     * The width of the canvas being rendered to.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#width
     * @type {integer}
     * @since 3.0.0
     */
    public var width:Int;
    /**
     * The height of the canvas being rendered to.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#height
     * @type {integer}
     * @since 3.0.0
     */
    public var height:Int;
    /**
     * The canvas which this WebGL Renderer draws to.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#canvas
     * @type {HTMLCanvasElement}
     * @since 3.0.0
     */
    public var canvas:js.html.CanvasElement;
    /**
     * An array of functions to invoke if the WebGL context is lost.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#lostContextCallbacks
     * @type {WebGLContextCallback[]}
     * @since 3.0.0
     */
    public var lostContextCallbacks:Array<WebGLContextCallback>;
    /**
     * An array of functions to invoke if the WebGL context is restored.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#restoredContextCallbacks
     * @type {WebGLContextCallback[]}
     * @since 3.0.0
     */
    public var restoredContextCallbacks:Array<WebGLContextCallback>;
    /**
     * An array of blend modes supported by the WebGL Renderer.
     *
     * This array includes the default blend modes as well as any custom blend modes added through {@link #addBlendMode}.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#blendModes
     * @type {array}
     * @default []
     * @since 3.0.0
     */
    public var blendModes:Array<Dynamic>;
    /**
     * Keeps track of any WebGLTexture created with the current WebGLRenderingContext
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#nativeTextures
     * @type {array}
     * @default []
     * @since 3.0.0
     */
    public var nativeTextures:Array<Dynamic>;
    /**
     * Set to `true` if the WebGL context of the renderer is lost.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#contextLost
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var contextLost:Bool;
    /**
     * This object will store all pipelines created through addPipeline
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#pipelines
     * @type {object}
     * @default null
     * @since 3.0.0
     */
    public var pipelines:Dynamic;
    /**
     * Details about the currently scheduled snapshot.
     *
     * If a non-null `callback` is set in this object, a snapshot of the canvas will be taken after the current frame is fully rendered.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#snapshotState
     * @type {SnapshotState}
     * @since 3.0.0
     */
    public var snapshotState:SnapshotState;
    /**
     * Cached value for the last texture unit that was used
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentActiveTextureUnit
     * @type {integer}
     * @since 3.1.0
     */
    public var currentActiveTextureUnit:Int;
    /**
     * An array of the last texture handles that were bound to the WebGLRenderingContext
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentTextures
     * @type {array}
     * @since 3.0.0
     */
    public var currentTextures:Array<Dynamic>;
    /**
     * Current framebuffer in use
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentFramebuffer
     * @type {WebGLFramebuffer}
     * @default null
     * @since 3.0.0
     */
    public var currentFramebuffer:js.html.webgl.Framebuffer;
    /**
     * Current WebGLPipeline in use
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentPipeline
     * @type {Phaser.Renderer.WebGL.WebGLPipeline}
     * @default null
     * @since 3.0.0
     */
    public var currentPipeline:phaser.renderer.webgl.WebGLPipeline;
    /**
     * Current WebGLProgram in use
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentProgram
     * @type {WebGLProgram}
     * @default null
     * @since 3.0.0
     */
    public var currentProgram:js.html.webgl.Program;
    /**
     * Current WebGLBuffer (Vertex buffer) in use
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentVertexBuffer
     * @type {WebGLBuffer}
     * @default null
     * @since 3.0.0
     */
    public var currentVertexBuffer:js.html.webgl.Buffer;
    /**
     * Current WebGLBuffer (Index buffer) in use
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentIndexBuffer
     * @type {WebGLBuffer}
     * @default null
     * @since 3.0.0
     */
    public var currentIndexBuffer:js.html.webgl.Buffer;
    /**
     * Current blend mode in use
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentBlendMode
     * @type {integer}
     * @since 3.0.0
     */
    public var currentBlendMode:Int;
    /**
     * Indicates if the the scissor state is enabled in WebGLRenderingContext
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentScissorEnabled
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var currentScissorEnabled:Bool;
    /**
     * Stores the current scissor data
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentScissor
     * @type {Uint32Array}
     * @since 3.0.0
     */
    public var currentScissor:js.html.Uint32Array;
    /**
     * Stack of scissor data
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#scissorStack
     * @type {Uint32Array}
     * @since 3.0.0
     */
    public var scissorStack:js.html.Uint32Array;
    /**
     * The underlying WebGL context of the renderer.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#gl
     * @type {WebGLRenderingContext}
     * @default null
     * @since 3.0.0
     */
    public var gl:js.html.webgl.RenderingContext;
    /**
     * Array of strings that indicate which WebGL extensions are supported by the browser
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#supportedExtensions
     * @type {object}
     * @default null
     * @since 3.0.0
     */
    public var supportedExtensions:Dynamic;
    /**
     * Extensions loaded into the current context
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#extensions
     * @type {object}
     * @default {}
     * @since 3.0.0
     */
    public var extensions:Dynamic;
    /**
     * Stores the current WebGL component formats for further use
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#glFormats
     * @type {array}
     * @default []
     * @since 3.2.0
     */
    public var glFormats:Array<Dynamic>;
    /**
     * Stores the supported WebGL texture compression formats.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#compression
     * @type {array}
     * @since 3.8.0
     */
    public var compression:Array<Dynamic>;
    /**
     * Cached drawing buffer height to reduce gl calls.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#drawingBufferHeight
     * @type {number}
     * @readonly
     * @since 3.11.0
     */
    public var drawingBufferHeight:Float;
    /**
     * A blank 32x32 transparent texture, as used by the Graphics system where needed.
     * This is set in the `boot` method.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#blankTexture
     * @type {WebGLTexture}
     * @readonly
     * @since 3.12.0
     */
    public var blankTexture:js.html.webgl.Texture;
    /**
     * Creates a new WebGLRenderingContext and initializes all internal
     * state.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#init
     * @since 3.0.0
     *
     * @param {object} config - The configuration object for the renderer.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function init(config:Dynamic):Dynamic;
    /**
     * Resizes the drawing buffer.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#resize
     * @since 3.0.0
     *
     * @param {number} width - The width of the renderer.
     * @param {number} height - The height of the renderer.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function resize(width:Float, height:Float):Dynamic;
    /**
     * Adds a callback to be invoked when the WebGL context has been restored by the browser.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#onContextRestored
     * @since 3.0.0
     *
     * @param {WebGLContextCallback} callback - The callback to be invoked on context restoration.
     * @param {object} target - The context of the callback.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function onContextRestored(callback:WebGLContextCallback, target:Dynamic):Dynamic;
    /**
     * Adds a callback to be invoked when the WebGL context has been lost by the browser.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#onContextLost
     * @since 3.0.0
     *
     * @param {WebGLContextCallback} callback - The callback to be invoked on context loss.
     * @param {object} target - The context of the callback.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function onContextLost(callback:WebGLContextCallback, target:Dynamic):Dynamic;
    /**
     * Checks if a WebGL extension is supported
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#hasExtension
     * @since 3.0.0
     *
     * @param {string} extensionName - Name of the WebGL extension
     *
     * @return {boolean} `true` if the extension is supported, otherwise `false`.
     */
    public function hasExtension(extensionName:String):Bool;
    /**
     * Loads a WebGL extension
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#getExtension
     * @since 3.0.0
     *
     * @param {string} extensionName - The name of the extension to load.
     *
     * @return {object} WebGL extension if the extension is supported
     */
    public function getExtension(extensionName:String):Dynamic;
    /**
     * Flushes the current pipeline if the pipeline is bound
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#flush
     * @since 3.0.0
     */
    public function flush():Void;
    /**
     * Checks if a pipeline is present in the current WebGLRenderer
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#hasPipeline
     * @since 3.0.0
     *
     * @param {string} pipelineName - The name of the pipeline.
     *
     * @return {boolean} `true` if the given pipeline is loaded, otherwise `false`.
     */
    public function hasPipeline(pipelineName:String):Bool;
    /**
     * Returns the pipeline by name if the pipeline exists
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#getPipeline
     * @since 3.0.0
     *
     * @param {string} pipelineName - The name of the pipeline.
     *
     * @return {Phaser.Renderer.WebGL.WebGLPipeline} The pipeline instance, or `null` if not found.
     */
    public function getPipeline(pipelineName:String):phaser.renderer.webgl.WebGLPipeline;
    /**
     * Removes a pipeline by name.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#removePipeline
     * @since 3.0.0
     *
     * @param {string} pipelineName - The name of the pipeline to be removed.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function removePipeline(pipelineName:String):Dynamic;
    /**
     * Adds a pipeline instance into the collection of pipelines
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#addPipeline
     * @since 3.0.0
     *
     * @param {string} pipelineName - A unique string-based key for the pipeline.
     * @param {Phaser.Renderer.WebGL.WebGLPipeline} pipelineInstance - A pipeline instance which must extend WebGLPipeline.
     *
     * @return {Phaser.Renderer.WebGL.WebGLPipeline} The pipline instance that was passed.
     */
    public function addPipeline(pipelineName:String, pipelineInstance:phaser.renderer.webgl.WebGLPipeline):phaser.renderer.webgl.WebGLPipeline;
    /**
     * Pushes a new scissor state. This is used to set nested scissor states.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#pushScissor
     * @since 3.0.0
     *
     * @param {integer} x - The x position of the scissor.
     * @param {integer} y - The y position of the scissor.
     * @param {integer} width - The width of the scissor.
     * @param {integer} height - The height of the scissor.
     *
     * @return {integer[]} An array containing the scissor values.
     */
    public function pushScissor(x:Int, y:Int, width:Int, height:Int):Array<Int>;
    /**
     * Sets the current scissor state.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setScissor
     * @since 3.0.0
     *
     * @param {integer} x - The x position of the scissor.
     * @param {integer} y - The y position of the scissor.
     * @param {integer} width - The width of the scissor.
     * @param {integer} height - The height of the scissor.
     */
    public function setScissor(x:Int, y:Int, width:Int, height:Int):Void;
    /**
     * Pops the last scissor state and sets it.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#popScissor
     * @since 3.0.0
     */
    public function popScissor():Void;
    /**
     * Binds a WebGLPipeline and sets it as the current pipeline to be used.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setPipeline
     * @since 3.0.0
     *
     * @param {Phaser.Renderer.WebGL.WebGLPipeline} pipelineInstance - The pipeline instance to be activated.
     * @param {Phaser.GameObjects.GameObject} [gameObject] - The Game Object that invoked this pipeline, if any.
     *
     * @return {Phaser.Renderer.WebGL.WebGLPipeline} The pipeline that was activated.
     */
    public function setPipeline(pipelineInstance:phaser.renderer.webgl.WebGLPipeline, ?gameObject:phaser.gameobjects.GameObject):phaser.renderer.webgl.WebGLPipeline;
    /**
     * Sets the blend mode to the value given.
     *
     * If the current blend mode is different from the one given, the pipeline is flushed and the new
     * blend mode is enabled.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setBlendMode
     * @since 3.0.0
     *
     * @param {integer} blendModeId - The blend mode to be set. Can be a `BlendModes` const or an integer value.
     *
     * @return {boolean} `true` if the blend mode was changed as a result of this call, forcing a flush, otherwise `false`.
     */
    public function setBlendMode(blendModeId:Int):Bool;
    /**
     * Creates a new custom blend mode for the renderer.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#addBlendMode
     * @since 3.0.0
     *
     * @param {function} func - An array containing the WebGL functions to use for the source and the destination blending factors, respectively. See the possible constants for {@link WebGLRenderingContext#blendFunc()}.
     * @param {function} equation - The equation to use for combining the RGB and alpha components of a new pixel with a rendered one. See the possible constants for {@link WebGLRenderingContext#blendEquation()}.
     *
     * @return {integer} The index of the new blend mode, used for referencing it in the future.
     */
    public function addBlendMode(func:Dynamic, equation:Dynamic):Int;
    /**
     * Updates the function bound to a given custom blend mode.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#updateBlendMode
     * @since 3.0.0
     *
     * @param {integer} index - The index of the custom blend mode.
     * @param {function} func - The function to use for the blend mode.
     * @param {function} equation - The equation to use for the blend mode.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function updateBlendMode(index:Int, func:Dynamic, equation:Dynamic):Dynamic;
    /**
     * Removes a custom blend mode from the renderer.
     * Any Game Objects still using this blend mode will error, so be sure to clear them first.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#removeBlendMode
     * @since 3.0.0
     *
     * @param {integer} index - The index of the custom blend mode to be removed.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function removeBlendMode(index:Int):Dynamic;
    /**
     * Binds a texture at a texture unit. If a texture is already
     * bound to that unit it will force a flush on the current pipeline.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setTexture2D
     * @since 3.0.0
     *
     * @param {WebGLTexture} texture - The WebGL texture that needs to be bound.
     * @param {integer} textureUnit - The texture unit to which the texture will be bound.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function setTexture2D(texture:js.html.webgl.Texture, textureUnit:Int):Dynamic;
    /**
     * Binds a framebuffer. If there was another framebuffer already bound it will force a pipeline flush.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setFramebuffer
     * @since 3.0.0
     *
     * @param {WebGLFramebuffer} framebuffer - The framebuffer that needs to be bound.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function setFramebuffer(framebuffer:js.html.webgl.Framebuffer):Dynamic;
    /**
     * Binds a program. If there was another program already bound it will force a pipeline flush.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setProgram
     * @since 3.0.0
     *
     * @param {WebGLProgram} program - The program that needs to be bound.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function setProgram(program:js.html.webgl.Program):Dynamic;
    /**
     * Bounds a vertex buffer. If there is a vertex buffer already bound it'll force a pipeline flush.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setVertexBuffer
     * @since 3.0.0
     *
     * @param {WebGLBuffer} vertexBuffer - The buffer that needs to be bound.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function setVertexBuffer(vertexBuffer:js.html.webgl.Buffer):Dynamic;
    /**
     * Bounds a index buffer. If there is a index buffer already bound it'll force a pipeline flush.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setIndexBuffer
     * @since 3.0.0
     *
     * @param {WebGLBuffer} indexBuffer - The buffer the needs to be bound.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function setIndexBuffer(indexBuffer:js.html.webgl.Buffer):Dynamic;
    /**
     * Creates a texture from an image source. If the source is not valid it creates an empty texture.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#createTextureFromSource
     * @since 3.0.0
     *
     * @param {object} source - The source of the texture.
     * @param {integer} width - The width of the texture.
     * @param {integer} height - The height of the texture.
     * @param {integer} scaleMode - The scale mode to be used by the texture.
     *
     * @return {?WebGLTexture} The WebGL Texture that was created, or `null` if it couldn't be created.
     */
    public function createTextureFromSource(source:Dynamic, width:Int, height:Int, scaleMode:Int):js.html.webgl.Texture;
    /**
     * A wrapper for creating a WebGLTexture. If no pixel data is passed it will create an empty texture.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#createTexture2D
     * @since 3.0.0
     *
     * @param {integer} mipLevel - Mip level of the texture.
     * @param {integer} minFilter - Filtering of the texture.
     * @param {integer} magFilter - Filtering of the texture.
     * @param {integer} wrapT - Wrapping mode of the texture.
     * @param {integer} wrapS - Wrapping mode of the texture.
     * @param {integer} format - Which format does the texture use.
     * @param {object} pixels - pixel data.
     * @param {integer} width - Width of the texture in pixels.
     * @param {integer} height - Height of the texture in pixels.
     * @param {boolean} pma - Does the texture have premultiplied alpha?
     *
     * @return {WebGLTexture} The WebGLTexture that was created.
     */
    public function createTexture2D(mipLevel:Int, minFilter:Int, magFilter:Int, wrapT:Int, wrapS:Int, format:Int, pixels:Dynamic, width:Int, height:Int, pma:Bool):js.html.webgl.Texture;
    /**
     * Wrapper for creating WebGLFramebuffer.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#createFramebuffer
     * @since 3.0.0
     *
     * @param {integer} width - Width in pixels of the framebuffer
     * @param {integer} height - Height in pixels of the framebuffer
     * @param {WebGLTexture} renderTexture - The color texture to where the color pixels are written
     * @param {boolean} addDepthStencilBuffer - Indicates if the current framebuffer support depth and stencil buffers
     *
     * @return {WebGLFramebuffer} Raw WebGLFramebuffer
     */
    public function createFramebuffer(width:Int, height:Int, renderTexture:js.html.webgl.Texture, addDepthStencilBuffer:Bool):js.html.webgl.Framebuffer;
    /**
     * Wrapper for creating a WebGLProgram
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#createProgram
     * @since 3.0.0
     *
     * @param {string} vertexShader - Source to the vertex shader
     * @param {string} fragmentShader - Source to the fragment shader
     *
     * @return {WebGLProgram} Raw WebGLProgram
     */
    public function createProgram(vertexShader:String, fragmentShader:String):js.html.webgl.Program;
    /**
     * Wrapper for creating a vertex buffer.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#createVertexBuffer
     * @since 3.0.0
     *
     * @param {ArrayBuffer} initialDataOrSize - It's either ArrayBuffer or an integer indicating the size of the vbo
     * @param {integer} bufferUsage - How the buffer is used. gl.DYNAMIC_DRAW, gl.STATIC_DRAW or gl.STREAM_DRAW
     *
     * @return {WebGLBuffer} Raw vertex buffer
     */
    public function createVertexBuffer(initialDataOrSize:js.html.ArrayBuffer, bufferUsage:Int):js.html.webgl.Buffer;
    /**
     * Wrapper for creating a vertex buffer.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#createIndexBuffer
     * @since 3.0.0
     *
     * @param {ArrayBuffer} initialDataOrSize - Either ArrayBuffer or an integer indicating the size of the vbo.
     * @param {integer} bufferUsage - How the buffer is used. gl.DYNAMIC_DRAW, gl.STATIC_DRAW or gl.STREAM_DRAW.
     *
     * @return {WebGLBuffer} Raw index buffer
     */
    public function createIndexBuffer(initialDataOrSize:js.html.ArrayBuffer, bufferUsage:Int):js.html.webgl.Buffer;
    /**
     * Removes the given texture from the nativeTextures array and then deletes it from the GPU.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#deleteTexture
     * @since 3.0.0
     *
     * @param {WebGLTexture} texture - The WebGL Texture to be deleted.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function deleteTexture(texture:js.html.webgl.Texture):Dynamic;
    /**
     * Deletes a WebGLFramebuffer from the GL instance.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#deleteFramebuffer
     * @since 3.0.0
     *
     * @param {WebGLFramebuffer} framebuffer - The Framebuffer to be deleted.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function deleteFramebuffer(framebuffer:js.html.webgl.Framebuffer):Dynamic;
    /**
     * Deletes a WebGLProgram from the GL instance.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#deleteProgram
     * @since 3.0.0
     *
     * @param {WebGLProgram} program - The shader program to be deleted.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function deleteProgram(program:js.html.webgl.Program):Dynamic;
    /**
     * Deletes a WebGLBuffer from the GL instance.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#deleteBuffer
     * @since 3.0.0
     *
     * @param {WebGLBuffer} vertexBuffer - The WebGLBuffer to be deleted.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function deleteBuffer(vertexBuffer:js.html.webgl.Buffer):Dynamic;
    /**
     * Controls the pre-render operations for the given camera.
     * Handles any clipping needed by the camera and renders the background color if a color is visible.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#preRenderCamera
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to pre-render.
     */
    public function preRenderCamera(camera:phaser.cameras.scene2d.Camera):Void;
    /**
     * Controls the post-render operations for the given camera.
     * Renders the foreground camera effects like flash and fading. It resets the current scissor state.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#postRenderCamera
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to post-render.
     */
    public function postRenderCamera(camera:phaser.cameras.scene2d.Camera):Void;
    /**
     * Clears the current vertex buffer and updates pipelines.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#preRender
     * @since 3.0.0
     */
    public function preRender():Void;
    /**
     * The core render step for a Scene.
     * Iterates through the given Game Object's array and renders them with the given Camera.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#render
     * @since 3.0.0
     *
     * @param {Phaser.Scene} scene - The Scene to render.
     * @param {Phaser.GameObjects.GameObject} children - The Game Object's within the Scene to be rendered.
     * @param {number} interpolationPercentage - The interpolation percentage to apply. Currently un-used.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Scene Camera to render with.
     */
    public function render(scene:phaser.Scene, children:phaser.gameobjects.GameObject, interpolationPercentage:Float, camera:phaser.cameras.scene2d.Camera):Void;
    /**
     * The post-render step happens after all Cameras in all Scenes have been rendered.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#postRender
     * @since 3.0.0
     */
    public function postRender():Void;
    /**
     * Schedules a snapshot to be taken after the current frame is rendered.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#snapshot
     * @since 3.0.0
     *
     * @param {SnapshotCallback} callback - Function to invoke after the snapshot is created.
     * @param {string} type - The format of the image to create, usually `image/png`.
     * @param {number} encoderOptions - The image quality, between 0 and 1, to use for image formats with lossy compression (such as `image/jpeg`).
     *
     * @return {Phaser.Renderer.WebGL.WebGLRenderer} This WebGL Renderer.
     */
    public function snapshot(callback:SnapshotCallback, type:String, encoderOptions:Float):phaser.renderer.webgl.WebGLRenderer;
    /**
     * Creates a WebGL Texture based on the given canvas element.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#canvasToTexture
     * @since 3.0.0
     *
     * @param {HTMLCanvasElement} srcCanvas - The Canvas element that will be used to populate the texture.
     * @param {WebGLTexture} [dstTexture] - Is this going to replace an existing texture? If so, pass it here.
     * @param {boolean} [noRepeat=false] - Should this canvas never be allowed to set REPEAT? (such as for Text objects)
     *
     * @return {WebGLTexture} The newly created WebGL Texture.
     */
    public function canvasToTexture(srcCanvas:js.html.CanvasElement, ?dstTexture:js.html.webgl.Texture, ?noRepeat:Bool):js.html.webgl.Texture;
    /**
     * Sets the minification and magnification filter for a texture.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setTextureFilter
     * @since 3.0.0
     *
     * @param {integer} texture - The texture to set the filter for.
     * @param {integer} filter - The filter to set. 0 for linear filtering, 1 for nearest neighbor (blocky) filtering.
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setTextureFilter(texture:Int, filter:Int):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setFloat1
     * @since 3.0.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {number} x - [description]
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setFloat1(program:js.html.webgl.Program, name:String, x:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setFloat2
     * @since 3.0.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {number} x - [description]
     * @param {number} y - [description]
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setFloat2(program:js.html.webgl.Program, name:String, x:Float, y:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setFloat3
     * @since 3.0.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {number} x - [description]
     * @param {number} y - [description]
     * @param {number} z - [description]
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setFloat3(program:js.html.webgl.Program, name:String, x:Float, y:Float, z:Float):Dynamic;
    /**
     * Sets uniform of a WebGLProgram
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setFloat4
     * @since 3.0.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {number} x - X component
     * @param {number} y - Y component
     * @param {number} z - Z component
     * @param {number} w - W component
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setFloat4(program:js.html.webgl.Program, name:String, x:Float, y:Float, z:Float, w:Float):Dynamic;
    /**
     * Sets the value of a uniform variable in the given WebGLProgram.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setFloat1v
     * @since 3.13.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setFloat1v(program:js.html.webgl.Program, name:String, arr:js.html.Float32Array):Dynamic;
    /**
     * Sets the value of a uniform variable in the given WebGLProgram.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setFloat2v
     * @since 3.13.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setFloat2v(program:js.html.webgl.Program, name:String, arr:js.html.Float32Array):Dynamic;
    /**
     * Sets the value of a uniform variable in the given WebGLProgram.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setFloat3v
     * @since 3.13.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setFloat3v(program:js.html.webgl.Program, name:String, arr:js.html.Float32Array):Dynamic;
    /**
     * Sets the value of a uniform variable in the given WebGLProgram.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setFloat4v
     * @since 3.13.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setFloat4v(program:js.html.webgl.Program, name:String, arr:js.html.Float32Array):Dynamic;
    /**
     * Sets the value of a uniform variable in the given WebGLProgram.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setInt1
     * @since 3.0.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {integer} x - [description]
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setInt1(program:js.html.webgl.Program, name:String, x:Int):Dynamic;
    /**
     * Sets the value of a uniform variable in the given WebGLProgram.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setInt2
     * @since 3.0.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {integer} x - [description]
     * @param {integer} y - [description]
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setInt2(program:js.html.webgl.Program, name:String, x:Int, y:Int):Dynamic;
    /**
     * Sets the value of a uniform variable in the given WebGLProgram.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setInt3
     * @since 3.0.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {integer} x - [description]
     * @param {integer} y - [description]
     * @param {integer} z - [description]
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setInt3(program:js.html.webgl.Program, name:String, x:Int, y:Int, z:Int):Dynamic;
    /**
     * Sets the value of a uniform variable in the given WebGLProgram.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setInt4
     * @since 3.0.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {integer} x - X component
     * @param {integer} y - Y component
     * @param {integer} z - Z component
     * @param {integer} w - W component
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setInt4(program:js.html.webgl.Program, name:String, x:Int, y:Int, z:Int, w:Int):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setMatrix2
     * @since 3.0.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {boolean} transpose - [description]
     * @param {Float32Array} matrix - [description]
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setMatrix2(program:js.html.webgl.Program, name:String, transpose:Bool, matrix:js.html.Float32Array):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setMatrix3
     * @since 3.0.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {boolean} transpose - [description]
     * @param {Float32Array} matrix - [description]
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setMatrix3(program:js.html.webgl.Program, name:String, transpose:Bool, matrix:js.html.Float32Array):Dynamic;
    /**
     * Sets uniform of a WebGLProgram
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setMatrix4
     * @since 3.0.0
     *
     * @param {WebGLProgram} program - The target WebGLProgram from which the uniform location will be looked-up.
     * @param {string} name - The name of the uniform to look-up and modify.
     * @param {boolean} transpose - Is the matrix transposed
     * @param {Float32Array} matrix - Matrix data
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setMatrix4(program:js.html.webgl.Program, name:String, transpose:Bool, matrix:js.html.Float32Array):Dynamic;
    /**
     * Returns the maximum number of texture units that can be used in a fragment shader.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#getMaxTextures
     * @since 3.8.0
     *
     * @return {integer} The maximum number of textures WebGL supports.
     */
    public function getMaxTextures():Int;
    /**
     * Returns the largest texture size (either width or height) that can be created.
     * Note that VRAM may not allow a texture of any given size, it just expresses
     * hardware / driver support for a given size.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#getMaxTextureSize
     * @since 3.8.0
     *
     * @return {integer} The maximum supported texture size.
     */
    public function getMaxTextureSize():Int;
    /**
     * [description]
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
