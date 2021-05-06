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
 * @extends Phaser.Events.EventEmitter
 * @memberof Phaser.Renderer.WebGL
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Game} game - The Game instance which owns this WebGL Renderer.
 */
@:native("Phaser.Renderer.WebGL.WebGLRenderer")
extern class WebGLRenderer extends phaser.events.EventEmitter {
    public function new(game:phaser.Game);
    /**
     * The local configuration settings of this WebGL Renderer.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#config
     * @type {object}
     * @since 3.0.0
     */
    public var config:Dynamic;
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
     * @type {number}
     * @since 3.0.0
     */
    public var type:Float;
    /**
     * An instance of the Pipeline Manager class, that handles all WebGL Pipelines.
     *
     * Use this to manage all of your interactions with pipelines, such as adding, getting,
     * setting and rendering them.
     *
     * The Pipeline Manager class is created in the `init` method and then populated
     * with pipelines during the `boot` method.
     *
     * Prior to Phaser v3.50.0 this was just a plain JavaScript object, not a class.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#pipelines
     * @type {Phaser.Renderer.WebGL.PipelineManager}
     * @since 3.50.0
     */
    public var pipelines:phaser.renderer.webgl.PipelineManager;
    /**
     * The width of the canvas being rendered to.
     * This is populated in the onResize event handler.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The height of the canvas being rendered to.
     * This is populated in the onResize event handler.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The canvas which this WebGL Renderer draws to.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#canvas
     * @type {HTMLCanvasElement}
     * @since 3.0.0
     */
    public var canvas:js.html.CanvasElement;
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
     * This property is set to `true` if the WebGL context of the renderer is lost.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#contextLost
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var contextLost:Bool;
    /**
     * Details about the currently scheduled snapshot.
     *
     * If a non-null `callback` is set in this object, a snapshot of the canvas will be taken after the current frame is fully rendered.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#snapshotState
     * @type {Phaser.Types.Renderer.Snapshot.SnapshotState}
     * @since 3.0.0
     */
    public var snapshotState:phaser.types.renderer.snapshot.SnapshotState;
    /**
     * Cached value for the last texture unit that was used.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentActiveTexture
     * @type {number}
     * @since 3.1.0
     */
    public var currentActiveTexture:Float;
    /**
     * Contains the current starting active texture unit.
     * This value is constantly updated and should be treated as read-only by your code.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#startActiveTexture
     * @type {number}
     * @since 3.50.0
     */
    public var startActiveTexture:Float;
    /**
     * The maximum number of textures the GPU can handle. The minimum under the WebGL1 spec is 8.
     * This is set via the Game Config `maxTextures` property and should never be changed after boot.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#maxTextures
     * @type {number}
     * @since 3.50.0
     */
    public var maxTextures:Float;
    /**
     * An array of the available WebGL texture units, used to populate the uSampler uniforms.
     *
     * This array is populated during the init phase and should never be changed after boot.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#textureIndexes
     * @type {array}
     * @since 3.50.0
     */
    public var textureIndexes:Array<Dynamic>;
    /**
     * An array of default temporary WebGL Textures.
     *
     * This array is populated during the init phase and should never be changed after boot.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#tempTextures
     * @type {array}
     * @since 3.50.0
     */
    public var tempTextures:Array<Dynamic>;
    /**
     * The currently bound texture at texture unit zero, if any.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#textureZero
     * @type {?WebGLTexture}
     * @since 3.50.0
     */
    public var textureZero:js.html.webgl.Texture;
    /**
     * The currently bound normal map texture at texture unit one, if any.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#normalTexture
     * @type {?WebGLTexture}
     * @since 3.50.0
     */
    public var normalTexture:js.html.webgl.Texture;
    /**
     * The currently bound framebuffer in use.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentFramebuffer
     * @type {WebGLFramebuffer}
     * @default null
     * @since 3.0.0
     */
    public var currentFramebuffer:js.html.webgl.Framebuffer;
    /**
     * A stack into which the frame buffer objects are pushed and popped.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#fboStack
     * @type {WebGLFramebuffer[]}
     * @since 3.50.0
     */
    public var fboStack:Array<js.html.webgl.Framebuffer>;
    /**
     * Current WebGLProgram in use.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentProgram
     * @type {WebGLProgram}
     * @default null
     * @since 3.0.0
     */
    public var currentProgram:js.html.webgl.Program;
    /**
     * Current blend mode in use
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentBlendMode
     * @type {number}
     * @since 3.0.0
     */
    public var currentBlendMode:Float;
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
    public var currentScissor:js.lib.Uint32Array;
    /**
     * Stack of scissor data
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#scissorStack
     * @type {Uint32Array}
     * @since 3.0.0
     */
    public var scissorStack:js.lib.Uint32Array;
    /**
     * The handler to invoke when the context is lost.
     * This should not be changed and is set in the boot method.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#contextLostHandler
     * @type {function}
     * @since 3.19.0
     */
    public var contextLostHandler:Dynamic;
    /**
     * The handler to invoke when the context is restored.
     * This should not be changed and is set in the boot method.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#contextRestoredHandler
     * @type {function}
     * @since 3.19.0
     */
    public var contextRestoredHandler:Dynamic;
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
     * Array of strings that indicate which WebGL extensions are supported by the browser.
     * This is populated in the `boot` method.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#supportedExtensions
     * @type {string[]}
     * @default null
     * @since 3.0.0
     */
    public var supportedExtensions:Array<String>;
    /**
     * If the browser supports the `ANGLE_instanced_arrays` extension, this property will hold
     * a reference to the glExtension for it.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#instancedArraysExtension
     * @type {ANGLE_instanced_arrays}
     * @default null
     * @since 3.50.0
     */
    public var instancedArraysExtension:js.html.webgl.extension.ANGLEInstancedArrays;
    /**
     * If the browser supports the `OES_vertex_array_object` extension, this property will hold
     * a reference to the glExtension for it.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#vaoExtension
     * @type {OES_vertex_array_object}
     * @default null
     * @since 3.50.0
     */
    public var vaoExtension:js.html.webgl.extension.OESVertexArrayObject;
    /**
     * The WebGL Extensions loaded into the current context.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#extensions
     * @type {object}
     * @default {}
     * @since 3.0.0
     */
    public var extensions:Dynamic;
    /**
     * Stores the current WebGL component formats for further use.
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
     * @type {object}
     * @since 3.8.0
     */
    public var compression:Dynamic;
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
     * A pure white 4x4 texture, as used by the Graphics system where needed.
     * This is set in the `boot` method.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#whiteTexture
     * @type {WebGLTexture}
     * @readonly
     * @since 3.50.0
     */
    public var whiteTexture:js.html.webgl.Texture;
    /**
     * The total number of masks currently stacked.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#maskCount
     * @type {number}
     * @since 3.17.0
     */
    public var maskCount:Float;
    /**
     * The mask stack.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#maskStack
     * @type {Phaser.Display.Masks.GeometryMask[]}
     * @since 3.17.0
     */
    public var maskStack:Array<phaser.display.masks.GeometryMask>;
    /**
     * Internal property that tracks the currently set mask.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentMask
     * @type {any}
     * @since 3.17.0
     */
    public var currentMask:Dynamic;
    /**
     * Internal property that tracks the currently set camera mask.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentCameraMask
     * @type {any}
     * @since 3.17.0
     */
    public var currentCameraMask:Dynamic;
    /**
     * Internal gl function mapping for uniform look-up.
     * https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/uniform
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#glFuncMap
     * @type {any}
     * @since 3.17.0
     */
    public var glFuncMap:Dynamic;
    /**
     * The `type` of the Game Object being currently rendered.
     * This can be used by advanced render functions for batching look-ahead.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#currentType
     * @type {string}
     * @since 3.19.0
     */
    public var currentType:String;
    /**
     * Is the `type` of the Game Object being currently rendered different than the
     * type of the object before it in the display list? I.e. it's a 'new' type.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#newType
     * @type {boolean}
     * @since 3.19.0
     */
    public var newType:Bool;
    /**
     * Does the `type` of the next Game Object in the display list match that
     * of the object being currently rendered?
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#nextTypeMatch
     * @type {boolean}
     * @since 3.19.0
     */
    public var nextTypeMatch:Bool;
    /**
     * Is the Game Object being currently rendered the final one in the list?
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#finalType
     * @type {boolean}
     * @since 3.50.0
     */
    public var finalType:Bool;
    /**
     * The mipmap magFilter to be used when creating textures.
     *
     * You can specify this as a string in the game config, i.e.:
     *
     * `renderer: { mipmapFilter: 'NEAREST_MIPMAP_LINEAR' }`
     *
     * The 6 options for WebGL1 are, in order from least to most computationally expensive:
     *
     * NEAREST (for pixel art)
     * LINEAR (the default)
     * NEAREST_MIPMAP_NEAREST
     * LINEAR_MIPMAP_NEAREST
     * NEAREST_MIPMAP_LINEAR
     * LINEAR_MIPMAP_LINEAR
     *
     * Mipmaps only work with textures that are fully power-of-two in size.
     *
     * For more details see https://webglfundamentals.org/webgl/lessons/webgl-3d-textures.html
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#mipmapFilter
     * @type {GLenum}
     * @since 3.21.0
     */
    public var mipmapFilter:Dynamic;
    /**
     * The number of times the renderer had to flush this frame, due to running out of texture units.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#textureFlush
     * @type {number}
     * @since 3.50.0
     */
    public var textureFlush:Float;
    /**
     * Are the WebGL Textures in their default state?
     *
     * Used to avoid constant gl binds.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#isTextureClean
     * @type {boolean}
     * @since 3.51.0
     */
    public var isTextureClean:Bool;
    /**
     * Has this renderer fully booted yet?
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#isBooted
     * @type {boolean}
     * @since 3.50.0
     */
    public var isBooted:Bool;
    /**
     * A Render Target you can use to capture the current state of the Renderer.
     *
     * A Render Target encapsulates a framebuffer and texture for the WebGL Renderer.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#renderTarget
     * @type {Phaser.Renderer.WebGL.RenderTarget}
     * @since 3.50.0
     */
    public var renderTarget:phaser.renderer.webgl.RenderTarget;
    /**
     * The global game Projection matrix, used by shaders as 'uProjectionMatrix' uniform.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#projectionMatrix
     * @type {Phaser.Math.Matrix4}
     * @since 3.50.0
     */
    public var projectionMatrix:phaser.math.Matrix4;
    /**
     * The cached width of the Projection matrix.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#projectionWidth
     * @type {number}
     * @since 3.50.0
     */
    public var projectionWidth:Float;
    /**
     * The cached height of the Projection matrix.
     *
     * @name Phaser.Renderer.WebGL.WebGLRenderer#projectionHeight
     * @type {number}
     * @since 3.50.0
     */
    public var projectionHeight:Float;
    /**
     * Creates a new WebGLRenderingContext and initializes all internal state.
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
     * The event handler that manages the `resize` event dispatched by the Scale Manager.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#onResize
     * @since 3.16.0
     *
     * @param {Phaser.Structs.Size} gameSize - The default Game Size object. This is the un-modified game dimensions.
     * @param {Phaser.Structs.Size} baseSize - The base Size object. The game dimensions. The canvas width / height values match this.
     */
    public function onResize(gameSize:phaser.structs.Size, baseSize:phaser.structs.Size):Void;
    /**
     * Binds the WebGL Renderers Render Target, so all drawn content is now redirected to it.
     *
     * Make sure to call `endCapture` when you are finished.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#beginCapture
     * @since 3.50.0
     *
     * @param {number} [width] - Optional new width of the Render Target.
     * @param {number} [height] - Optional new height of the Render Target.
     */
    public function beginCapture(?width:Float, ?height:Float):Void;
    /**
     * Unbinds the WebGL Renderers Render Target and returns it, stopping any further content being drawn to it.
     *
     * If the viewport or scissors were modified during the capture, you should reset them by calling
     * `resetViewport` and `resetScissor` accordingly.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#endCapture
     * @since 3.50.0
     *
     * @return {Phaser.Renderer.WebGL.RenderTarget} A reference to the WebGL Renderer Render Target.
     */
    public function endCapture():phaser.renderer.webgl.RenderTarget;
    /**
     * Resizes the drawing buffer to match that required by the Scale Manager.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#resize
     * @fires Phaser.Renderer.Events#RESIZE
     * @since 3.0.0
     *
     * @param {number} [width] - The new width of the renderer.
     * @param {number} [height] - The new height of the renderer.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function resize(?width:Float, ?height:Float):Dynamic;
    /**
     * Gets the aspect ratio of the WebGLRenderer dimensions.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#getAspectRatio
     * @since 3.50.0
     *
     * @return {number} The aspect ratio of the WebGLRenderer dimensions.
     */
    public function getAspectRatio():Float;
    /**
     * Sets the Projection Matrix of this renderer to the given dimensions.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setProjectionMatrix
     * @since 3.50.0
     *
     * @param {number} width - The new width of the Projection Matrix.
     * @param {number} height - The new height of the Projection Matrix.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function setProjectionMatrix(width:Float, height:Float):Dynamic;
    /**
     * Resets the Projection Matrix back to this renderers width and height.
     *
     * This is called during `endCapture`, should the matrix have been changed
     * as a result of the capture process.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#resetProjectionMatrix
     * @since 3.50.0
     */
    public function resetProjectionMatrix():Void;
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
     * Pushes a new scissor state. This is used to set nested scissor states.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#pushScissor
     * @since 3.0.0
     *
     * @param {number} x - The x position of the scissor.
     * @param {number} y - The y position of the scissor.
     * @param {number} width - The width of the scissor.
     * @param {number} height - The height of the scissor.
     * @param {number} [drawingBufferHeight] - Optional drawingBufferHeight override value.
     *
     * @return {number[]} An array containing the scissor values.
     */
    public function pushScissor(x:Float, y:Float, width:Float, height:Float, ?drawingBufferHeight:Float):Array<Float>;
    /**
     * Sets the current scissor state.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setScissor
     * @since 3.0.0
     *
     * @param {number} x - The x position of the scissor.
     * @param {number} y - The y position of the scissor.
     * @param {number} width - The width of the scissor.
     * @param {number} height - The height of the scissor.
     * @param {number} [drawingBufferHeight] - Optional drawingBufferHeight override value.
     */
    public function setScissor(x:Float, y:Float, width:Float, height:Float, ?drawingBufferHeight:Float):Void;
    /**
     * Resets the gl scissor state to be whatever the current scissor is, if there is one, without
     * modifying the scissor stack.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#resetScissor
     * @since 3.50.0
     */
    public function resetScissor():Void;
    /**
     * Pops the last scissor state and sets it.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#popScissor
     * @since 3.0.0
     */
    public function popScissor():Void;
    /**
     * Is there an active stencil mask?
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#hasActiveStencilMask
     * @since 3.17.0
     *
     * @return {boolean} `true` if there is an active stencil mask, otherwise `false`.
     */
    public function hasActiveStencilMask():Bool;
    /**
     * Resets the gl viewport to the current renderer dimensions.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#resetViewport
     * @since 3.50.0
     */
    public function resetViewport():Void;
    /**
     * Sets the blend mode to the value given.
     *
     * If the current blend mode is different from the one given, the pipeline is flushed and the new
     * blend mode is enabled.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setBlendMode
     * @since 3.0.0
     *
     * @param {number} blendModeId - The blend mode to be set. Can be a `BlendModes` const or an integer value.
     * @param {boolean} [force=false] - Force the blend mode to be set, regardless of the currently set blend mode.
     *
     * @return {boolean} `true` if the blend mode was changed as a result of this call, forcing a flush, otherwise `false`.
     */
    public function setBlendMode(blendModeId:Float, ?force:Bool):Bool;
    /**
     * Creates a new custom blend mode for the renderer.
     *
     * See https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Constants#Blending_modes
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#addBlendMode
     * @since 3.0.0
     *
     * @param {GLenum[]} func - An array containing the WebGL functions to use for the source and the destination blending factors, respectively. See the possible constants for {@link WebGLRenderingContext#blendFunc()}.
     * @param {GLenum} equation - The equation to use for combining the RGB and alpha components of a new pixel with a rendered one. See the possible constants for {@link WebGLRenderingContext#blendEquation()}.
     *
     * @return {number} The index of the new blend mode, used for referencing it in the future.
     */
    public function addBlendMode(func:Array<Dynamic>, equation:Dynamic):Float;
    /**
     * Updates the function bound to a given custom blend mode.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#updateBlendMode
     * @since 3.0.0
     *
     * @param {number} index - The index of the custom blend mode.
     * @param {function} func - The function to use for the blend mode.
     * @param {function} equation - The equation to use for the blend mode.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function updateBlendMode(index:Float, func:Dynamic, equation:Dynamic):Dynamic;
    /**
     * Removes a custom blend mode from the renderer.
     * Any Game Objects still using this blend mode will error, so be sure to clear them first.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#removeBlendMode
     * @since 3.0.0
     *
     * @param {number} index - The index of the custom blend mode to be removed.
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function removeBlendMode(index:Float):Dynamic;
    /**
     * Activates the Texture Source and assigns it the next available texture unit.
     * If none are available, it will flush the current pipeline first.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setTextureSource
     * @since 3.50.0
     *
     * @param {Phaser.Textures.TextureSource} textureSource - The Texture Source to be assigned the texture unit.
     *
     * @return {number} The texture unit that was assigned to the Texture Source.
     */
    public function setTextureSource(textureSource:phaser.textures.TextureSource):Float;
    /**
     * Checks to see if the given diffuse and normal map textures are already bound, or not.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#isNewNormalMap
     * @since 3.50.0
     *
     * @param {WebGLTexture} texture - The WebGL diffuse texture.
     * @param {WebGLTexture} normalMap - The WebGL normal map texture.
     *
     * @return {boolean} Returns `false` if this combination is already set, or `true` if it's a new combination.
     */
    public function isNewNormalMap(texture:js.html.webgl.Texture, normalMap:js.html.webgl.Texture):Bool;
    /**
     * Binds a texture directly to texture unit zero then activates it.
     * If the texture is already at unit zero, it skips the bind.
     * Make sure to call `clearTextureZero` after using this method.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setTextureZero
     * @since 3.50.0
     *
     * @param {WebGLTexture} texture - The WebGL texture that needs to be bound.
     * @param {boolean} [flush=false] - Flush the pipeline if the texture is different?
     */
    public function setTextureZero(texture:js.html.webgl.Texture, ?flush:Bool):Void;
    /**
     * Clears the texture that was directly bound to texture unit zero.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#clearTextureZero
     * @since 3.50.0
     */
    public function clearTextureZero():Void;
    /**
     * Binds a texture directly to texture unit one then activates it.
     * If the texture is already at unit one, it skips the bind.
     * Make sure to call `clearNormalMap` after using this method.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setNormalMap
     * @since 3.50.0
     *
     * @param {WebGLTexture} texture - The WebGL texture that needs to be bound.
     */
    public function setNormalMap(texture:js.html.webgl.Texture):Void;
    /**
     * Clears the texture that was directly bound to texture unit one and
     * increases the start active texture counter.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#clearNormalMap
     * @since 3.50.0
     */
    public function clearNormalMap():Void;
    /**
     * Activates each texture, in turn, then binds them all to `null`.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#unbindTextures
     * @since 3.50.0
     *
     * @param {boolean} [all=false] - Reset all textures, or just the first two?
     */
    public function unbindTextures(?all:Bool):Void;
    /**
     * Flushes the current pipeline, then resets the first two textures
     * back to the default temporary textures, resets the start active
     * counter and sets texture unit 1 as being active.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#resetTextures
     * @since 3.50.0
     *
     * @param {boolean} [all=false] - Reset all textures, or just the first two?
     */
    public function resetTextures(?all:Bool):Void;
    /**
     * Binds a texture at a texture unit. If a texture is already
     * bound to that unit it will force a flush on the current pipeline.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setTexture2D
     * @since 3.0.0
     * @version 2.0 - Updated in 3.50.0 to remove the `textureUnit` and `flush` parameters.
     *
     * @param {WebGLTexture} texture - The WebGL texture that needs to be bound.
     *
     * @return {number} The texture unit that was assigned to the Texture Source.
     */
    public function setTexture2D(texture:js.html.webgl.Texture):Float;
    /**
     * Pushes a new framebuffer onto the FBO stack and makes it the currently bound framebuffer.
     *
     * If there was another framebuffer already bound it will force a pipeline flush.
     *
     * Call `popFramebuffer` to remove it again.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#pushFramebuffer
     * @since 3.50.0
     *
     * @param {WebGLFramebuffer} framebuffer - The framebuffer that needs to be bound.
     * @param {boolean} [updateScissor=false] - Set the gl scissor to match the frame buffer size? Or, if `null` given, pop the scissor from the stack.
     * @param {boolean} [resetTextures=false] - Should the WebGL Textures be reset after the new framebuffer is bound?
     * @param {boolean} [setViewport=true] - Should the WebGL viewport be set?
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function pushFramebuffer(framebuffer:js.html.webgl.Framebuffer, ?updateScissor:Bool, ?resetTextures:Bool, ?setViewport:Bool):Dynamic;
    /**
     * Sets the given framebuffer as the active and currently bound framebuffer.
     *
     * If there was another framebuffer already bound it will force a pipeline flush.
     *
     * Typically, you should call `pushFramebuffer` instead of this method.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setFramebuffer
     * @since 3.0.0
     *
     * @param {WebGLFramebuffer} framebuffer - The framebuffer that needs to be bound.
     * @param {boolean} [updateScissor=false] - If a framebuffer is given, set the gl scissor to match the frame buffer size? Or, if `null` given, pop the scissor from the stack.
     * @param {boolean} [resetTextures=false] - Should the WebGL Textures be reset after the new framebuffer is bound?
     * @param {boolean} [setViewport=true] - Should the WebGL viewport be set?
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function setFramebuffer(framebuffer:js.html.webgl.Framebuffer, ?updateScissor:Bool, ?resetTextures:Bool, ?setViewport:Bool):Dynamic;
    /**
     * Pops the previous framebuffer from the fbo stack and sets it.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#popFramebuffer
     * @since 3.50.0
     *
     * @param {boolean} [updateScissor=false] - If a framebuffer is given, set the gl scissor to match the frame buffer size? Or, if `null` given, pop the scissor from the stack.
     * @param {boolean} [resetTextures=false] - Should the WebGL Textures be reset after the new framebuffer is bound?
     * @param {boolean} [setViewport=true] - Should the WebGL viewport be set?
     *
     * @return {WebGLFramebuffer} The Framebuffer that was set, or `null` if there aren't any more in the stack.
     */
    public function popFramebuffer(?updateScissor:Bool, ?resetTextures:Bool, ?setViewport:Bool):js.html.webgl.Framebuffer;
    /**
     * Binds a shader program.
     *
     * If there was a different program already bound it will force a pipeline flush first.
     *
     * If the same program given to this method is already set as the current program, no change
     * will take place and this method will return `false`.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setProgram
     * @since 3.0.0
     *
     * @param {WebGLProgram} program - The program that needs to be bound.
     *
     * @return {boolean} `true` if the given program was bound, otherwise `false`.
     */
    public function setProgram(program:js.html.webgl.Program):Bool;
    /**
     * Rebinds whatever program `WebGLRenderer.currentProgram` is set as, without
     * changing anything, or flushing.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#resetProgram
     * @since 3.50.0
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function resetProgram():Dynamic;
    /**
     * Creates a texture from an image source. If the source is not valid it creates an empty texture.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#createTextureFromSource
     * @since 3.0.0
     *
     * @param {object} source - The source of the texture.
     * @param {number} width - The width of the texture.
     * @param {number} height - The height of the texture.
     * @param {number} scaleMode - The scale mode to be used by the texture.
     *
     * @return {?WebGLTexture} The WebGL Texture that was created, or `null` if it couldn't be created.
     */
    public function createTextureFromSource(source:Dynamic, width:Float, height:Float, scaleMode:Float):js.html.webgl.Texture;
    /**
     * A wrapper for creating a WebGLTexture. If no pixel data is passed it will create an empty texture.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#createTexture2D
     * @since 3.0.0
     *
     * @param {number} mipLevel - Mip level of the texture.
     * @param {number} minFilter - Filtering of the texture.
     * @param {number} magFilter - Filtering of the texture.
     * @param {number} wrapT - Wrapping mode of the texture.
     * @param {number} wrapS - Wrapping mode of the texture.
     * @param {number} format - Which format does the texture use.
     * @param {?object} pixels - pixel data.
     * @param {number} width - Width of the texture in pixels.
     * @param {number} height - Height of the texture in pixels.
     * @param {boolean} [pma=true] - Does the texture have premultiplied alpha?
     * @param {boolean} [forceSize=false] - If `true` it will use the width and height passed to this method, regardless of the pixels dimension.
     * @param {boolean} [flipY=false] - Sets the `UNPACK_FLIP_Y_WEBGL` flag the WebGL Texture uses during upload.
     *
     * @return {WebGLTexture} The WebGLTexture that was created.
     */
    public function createTexture2D(mipLevel:Float, minFilter:Float, magFilter:Float, wrapT:Float, wrapS:Float, format:Float, pixels:Dynamic, width:Float, height:Float, ?pma:Bool, ?forceSize:Bool, ?flipY:Bool):js.html.webgl.Texture;
    /**
     * Creates a WebGL Framebuffer object and optionally binds a depth stencil render buffer.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#createFramebuffer
     * @since 3.0.0
     *
     * @param {number} width - If `addDepthStencilBuffer` is true, this controls the width of the depth stencil.
     * @param {number} height - If `addDepthStencilBuffer` is true, this controls the height of the depth stencil.
     * @param {WebGLTexture} renderTexture - The color texture where the color pixels are written.
     * @param {boolean} [addDepthStencilBuffer=false] - Create a Renderbuffer for the depth stencil?
     *
     * @return {WebGLFramebuffer} Raw WebGLFramebuffer
     */
    public function createFramebuffer(width:Float, height:Float, renderTexture:js.html.webgl.Texture, ?addDepthStencilBuffer:Bool):js.html.webgl.Framebuffer;
    /**
     * Creates a WebGLProgram instance based on the given vertex and fragment shader source.
     *
     * Then compiles, attaches and links the program before returning it.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#createProgram
     * @since 3.0.0
     *
     * @param {string} vertexShader - The vertex shader source code as a single string.
     * @param {string} fragmentShader - The fragment shader source code as a single string.
     *
     * @return {WebGLProgram} The linked WebGLProgram created from the given shader source.
     */
    public function createProgram(vertexShader:String, fragmentShader:String):js.html.webgl.Program;
    /**
     * Wrapper for creating a vertex buffer.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#createVertexBuffer
     * @since 3.0.0
     *
     * @param {ArrayBuffer} initialDataOrSize - It's either ArrayBuffer or an integer indicating the size of the vbo
     * @param {number} bufferUsage - How the buffer is used. gl.DYNAMIC_DRAW, gl.STATIC_DRAW or gl.STREAM_DRAW
     *
     * @return {WebGLBuffer} Raw vertex buffer
     */
    public function createVertexBuffer(initialDataOrSize:js.lib.ArrayBuffer, bufferUsage:Float):js.html.webgl.Buffer;
    /**
     * Wrapper for creating a vertex buffer.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#createIndexBuffer
     * @since 3.0.0
     *
     * @param {ArrayBuffer} initialDataOrSize - Either ArrayBuffer or an integer indicating the size of the vbo.
     * @param {number} bufferUsage - How the buffer is used. gl.DYNAMIC_DRAW, gl.STATIC_DRAW or gl.STREAM_DRAW.
     *
     * @return {WebGLBuffer} Raw index buffer
     */
    public function createIndexBuffer(initialDataOrSize:js.lib.ArrayBuffer, bufferUsage:Float):js.html.webgl.Buffer;
    /**
     * Calls `GL.deleteTexture` on the given WebGLTexture and also optionally
     * resets the currently defined textures.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#deleteTexture
     * @since 3.0.0
     *
     * @param {WebGLTexture} texture - The WebGL Texture to be deleted.
     * @param {boolean} [reset=false] - Call the `resetTextures` method after deleting this texture?
     *
     * @return {this} This WebGLRenderer instance.
     */
    public function deleteTexture(texture:js.html.webgl.Texture, ?reset:Bool):Dynamic;
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
     *
     * Renders the foreground camera effects like flash and fading, then resets the current scissor state.
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
     * @fires Phaser.Renderer.Events#PRE_RENDER
     * @since 3.0.0
     */
    public function preRender():Void;
    /**
     * The core render step for a Scene Camera.
     *
     * Iterates through the given array of Game Objects and renders them with the given Camera.
     *
     * This is called by the `CameraManager.render` method. The Camera Manager instance belongs to a Scene, and is invoked
     * by the Scene Systems.render method.
     *
     * This method is not called if `Camera.visible` is `false`, or `Camera.alpha` is zero.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#render
     * @fires Phaser.Renderer.Events#RENDER
     * @since 3.0.0
     *
     * @param {Phaser.Scene} scene - The Scene to render.
     * @param {Phaser.GameObjects.GameObject[]} children - An array of filtered Game Objects that can be rendered by the given Camera.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Scene Camera to render with.
     */
    public function render(scene:phaser.Scene, children:Array<phaser.gameobjects.GameObject>, camera:phaser.cameras.scene2d.Camera):Void;
    /**
     * The post-render step happens after all Cameras in all Scenes have been rendered.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#postRender
     * @fires Phaser.Renderer.Events#POST_RENDER
     * @since 3.0.0
     */
    public function postRender():Void;
    /**
     * Schedules a snapshot of the entire game viewport to be taken after the current frame is rendered.
     *
     * To capture a specific area see the `snapshotArea` method. To capture a specific pixel, see `snapshotPixel`.
     *
     * Only one snapshot can be active _per frame_. If you have already called `snapshotPixel`, for example, then
     * calling this method will override it.
     *
     * Snapshots work by using the WebGL `readPixels` feature to grab every pixel from the frame buffer into an ArrayBufferView.
     * It then parses this, copying the contents to a temporary Canvas and finally creating an Image object from it,
     * which is the image returned to the callback provided. All in all, this is a computationally expensive and blocking process,
     * which gets more expensive the larger the canvas size gets, so please be careful how you employ this in your game.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#snapshot
     * @since 3.0.0
     *
     * @param {Phaser.Types.Renderer.Snapshot.SnapshotCallback} callback - The Function to invoke after the snapshot image is created.
     * @param {string} [type='image/png'] - The format of the image to create, usually `image/png` or `image/jpeg`.
     * @param {number} [encoderOptions=0.92] - The image quality, between 0 and 1. Used for image formats with lossy compression, such as `image/jpeg`.
     *
     * @return {this} This WebGL Renderer.
     */
    public function snapshot(callback:phaser.types.renderer.snapshot.SnapshotCallback, ?type:String, ?encoderOptions:Float):Dynamic;
    /**
     * Schedules a snapshot of the given area of the game viewport to be taken after the current frame is rendered.
     *
     * To capture the whole game viewport see the `snapshot` method. To capture a specific pixel, see `snapshotPixel`.
     *
     * Only one snapshot can be active _per frame_. If you have already called `snapshotPixel`, for example, then
     * calling this method will override it.
     *
     * Snapshots work by using the WebGL `readPixels` feature to grab every pixel from the frame buffer into an ArrayBufferView.
     * It then parses this, copying the contents to a temporary Canvas and finally creating an Image object from it,
     * which is the image returned to the callback provided. All in all, this is a computationally expensive and blocking process,
     * which gets more expensive the larger the canvas size gets, so please be careful how you employ this in your game.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#snapshotArea
     * @since 3.16.0
     *
     * @param {number} x - The x coordinate to grab from.
     * @param {number} y - The y coordinate to grab from.
     * @param {number} width - The width of the area to grab.
     * @param {number} height - The height of the area to grab.
     * @param {Phaser.Types.Renderer.Snapshot.SnapshotCallback} callback - The Function to invoke after the snapshot image is created.
     * @param {string} [type='image/png'] - The format of the image to create, usually `image/png` or `image/jpeg`.
     * @param {number} [encoderOptions=0.92] - The image quality, between 0 and 1. Used for image formats with lossy compression, such as `image/jpeg`.
     *
     * @return {this} This WebGL Renderer.
     */
    public function snapshotArea(x:Float, y:Float, width:Float, height:Float, callback:phaser.types.renderer.snapshot.SnapshotCallback, ?type:String, ?encoderOptions:Float):Dynamic;
    /**
     * Schedules a snapshot of the given pixel from the game viewport to be taken after the current frame is rendered.
     *
     * To capture the whole game viewport see the `snapshot` method. To capture a specific area, see `snapshotArea`.
     *
     * Only one snapshot can be active _per frame_. If you have already called `snapshotArea`, for example, then
     * calling this method will override it.
     *
     * Unlike the other two snapshot methods, this one will return a `Color` object containing the color data for
     * the requested pixel. It doesn't need to create an internal Canvas or Image object, so is a lot faster to execute,
     * using less memory.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#snapshotPixel
     * @since 3.16.0
     *
     * @param {number} x - The x coordinate of the pixel to get.
     * @param {number} y - The y coordinate of the pixel to get.
     * @param {Phaser.Types.Renderer.Snapshot.SnapshotCallback} callback - The Function to invoke after the snapshot pixel data is extracted.
     *
     * @return {this} This WebGL Renderer.
     */
    public function snapshotPixel(x:Float, y:Float, callback:phaser.types.renderer.snapshot.SnapshotCallback):Dynamic;
    /**
     * Takes a snapshot of the given area of the given frame buffer.
     *
     * Unlike the other snapshot methods, this one is processed immediately and doesn't wait for the next render.
     *
     * Snapshots work by using the WebGL `readPixels` feature to grab every pixel from the frame buffer into an ArrayBufferView.
     * It then parses this, copying the contents to a temporary Canvas and finally creating an Image object from it,
     * which is the image returned to the callback provided. All in all, this is a computationally expensive and blocking process,
     * which gets more expensive the larger the canvas size gets, so please be careful how you employ this in your game.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#snapshotFramebuffer
     * @since 3.19.0
     *
     * @param {WebGLFramebuffer} framebuffer - The framebuffer to grab from.
     * @param {number} bufferWidth - The width of the framebuffer.
     * @param {number} bufferHeight - The height of the framebuffer.
     * @param {Phaser.Types.Renderer.Snapshot.SnapshotCallback} callback - The Function to invoke after the snapshot image is created.
     * @param {boolean} [getPixel=false] - Grab a single pixel as a Color object, or an area as an Image object?
     * @param {number} [x=0] - The x coordinate to grab from.
     * @param {number} [y=0] - The y coordinate to grab from.
     * @param {number} [width=bufferWidth] - The width of the area to grab.
     * @param {number} [height=bufferHeight] - The height of the area to grab.
     * @param {string} [type='image/png'] - The format of the image to create, usually `image/png` or `image/jpeg`.
     * @param {number} [encoderOptions=0.92] - The image quality, between 0 and 1. Used for image formats with lossy compression, such as `image/jpeg`.
     *
     * @return {this} This WebGL Renderer.
     */
    public function snapshotFramebuffer(framebuffer:js.html.webgl.Framebuffer, bufferWidth:Float, bufferHeight:Float, callback:phaser.types.renderer.snapshot.SnapshotCallback, ?getPixel:Bool, ?x:Float, ?y:Float, ?width:Float, ?height:Float, ?type:String, ?encoderOptions:Float):Dynamic;
    /**
     * Creates a new WebGL Texture based on the given Canvas Element.
     *
     * If the `dstTexture` parameter is given, the WebGL Texture is updated, rather than created fresh.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#canvasToTexture
     * @since 3.0.0
     *
     * @param {HTMLCanvasElement} srcCanvas - The Canvas to create the WebGL Texture from
     * @param {WebGLTexture} [dstTexture] - The destination WebGL Texture to set.
     * @param {boolean} [noRepeat=false] - Should this canvas be allowed to set `REPEAT` (such as for Text objects?)
     * @param {boolean} [flipY=false] - Should the WebGL Texture set `UNPACK_MULTIPLY_FLIP_Y`?
     *
     * @return {WebGLTexture} The newly created, or updated, WebGL Texture.
     */
    public function canvasToTexture(srcCanvas:js.html.CanvasElement, ?dstTexture:js.html.webgl.Texture, ?noRepeat:Bool, ?flipY:Bool):js.html.webgl.Texture;
    /**
     * Creates a new WebGL Texture based on the given Canvas Element.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#createCanvasTexture
     * @since 3.20.0
     *
     * @param {HTMLCanvasElement} srcCanvas - The Canvas to create the WebGL Texture from
     * @param {boolean} [noRepeat=false] - Should this canvas be allowed to set `REPEAT` (such as for Text objects?)
     * @param {boolean} [flipY=false] - Should the WebGL Texture set `UNPACK_MULTIPLY_FLIP_Y`?
     *
     * @return {WebGLTexture} The newly created WebGL Texture.
     */
    public function createCanvasTexture(srcCanvas:js.html.CanvasElement, ?noRepeat:Bool, ?flipY:Bool):js.html.webgl.Texture;
    /**
     * Updates a WebGL Texture based on the given Canvas Element.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#updateCanvasTexture
     * @since 3.20.0
     *
     * @param {HTMLCanvasElement} srcCanvas - The Canvas to update the WebGL Texture from.
     * @param {WebGLTexture} dstTexture - The destination WebGL Texture to update.
     * @param {boolean} [flipY=false] - Should the WebGL Texture set `UNPACK_MULTIPLY_FLIP_Y`?
     *
     * @return {WebGLTexture} The updated WebGL Texture.
     */
    public function updateCanvasTexture(srcCanvas:js.html.CanvasElement, dstTexture:js.html.webgl.Texture, ?flipY:Bool):js.html.webgl.Texture;
    /**
     * Creates a new WebGL Texture based on the given HTML Video Element.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#createVideoTexture
     * @since 3.20.0
     *
     * @param {HTMLVideoElement} srcVideo - The Video to create the WebGL Texture from
     * @param {boolean} [noRepeat=false] - Should this canvas be allowed to set `REPEAT`?
     * @param {boolean} [flipY=false] - Should the WebGL Texture set `UNPACK_MULTIPLY_FLIP_Y`?
     *
     * @return {WebGLTexture} The newly created WebGL Texture.
     */
    public function createVideoTexture(srcVideo:js.html.VideoElement, ?noRepeat:Bool, ?flipY:Bool):js.html.webgl.Texture;
    /**
     * Updates a WebGL Texture based on the given HTML Video Element.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#updateVideoTexture
     * @since 3.20.0
     *
     * @param {HTMLVideoElement} srcVideo - The Video to update the WebGL Texture with.
     * @param {WebGLTexture} dstTexture - The destination WebGL Texture to update.
     * @param {boolean} [flipY=false] - Should the WebGL Texture set `UNPACK_MULTIPLY_FLIP_Y`?
     *
     * @return {WebGLTexture} The updated WebGL Texture.
     */
    public function updateVideoTexture(srcVideo:js.html.VideoElement, dstTexture:js.html.webgl.Texture, ?flipY:Bool):js.html.webgl.Texture;
    /**
     * Sets the minification and magnification filter for a texture.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#setTextureFilter
     * @since 3.0.0
     *
     * @param {number} texture - The texture to set the filter for.
     * @param {number} filter - The filter to set. 0 for linear filtering, 1 for nearest neighbor (blocky) filtering.
     *
     * @return {this} This WebGL Renderer instance.
     */
    public function setTextureFilter(texture:Float, filter:Float):Dynamic;
    /**
     * Returns the largest texture size (either width or height) that can be created.
     * Note that VRAM may not allow a texture of any given size, it just expresses
     * hardware / driver support for a given size.
     *
     * @method Phaser.Renderer.WebGL.WebGLRenderer#getMaxTextureSize
     * @since 3.8.0
     *
     * @return {number} The maximum supported texture size.
     */
    public function getMaxTextureSize():Float;
}
