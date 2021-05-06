package phaser.renderer.webgl;

/**
 * @classdesc
 * The `WebGLPipeline` is a base class used by all of the core Phaser pipelines.
 *
 * It describes the way elements will be rendered in WebGL. Internally, it handles
 * compiling the shaders, creating vertex buffers, assigning primitive topology and
 * binding vertex attributes, all based on the given configuration data.
 *
 * The pipeline is configured by passing in a `WebGLPipelineConfig` object. Please
 * see the documentation for this type to fully understand the configuration options
 * available to you.
 *
 * Usually, you would not extend from this class directly, but would instead extend
 * from one of the core pipelines, such as the Multi Pipeline.
 *
 * The pipeline flow per render-step is as follows:
 *
 * 1) onPreRender - called once at the start of the render step
 * 2) onRender - call for each Scene Camera that needs to render (so can be multiple times per render step)
 * 3) Internal flow:
 * 3a)   bind (only called if a Game Object is using this pipeline and it's not currently active)
 * 3b)   onBind (called for every Game Object that uses this pipeline)
 * 3c)   flush (can be called by a Game Object, internal method or from outside by changing pipeline)
 * 4) onPostRender - called once at the end of the render step
 *
 * @class WebGLPipeline
 * @extends Phaser.Events.EventEmitter
 * @memberof Phaser.Renderer.WebGL
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Types.Renderer.WebGL.WebGLPipelineConfig} config - The configuration object for this WebGL Pipeline.
 */
@:native("Phaser.Renderer.WebGL.WebGLPipeline")
extern class WebGLPipeline extends phaser.events.EventEmitter {
    public function new(config:phaser.types.renderer.webgl.WebGLPipelineConfig);
    /**
     * Name of the pipeline. Used for identification and setting from Game Objects.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#name
     * @type {string}
     * @since 3.0.0
     */
    public var name:String;
    /**
     * The Phaser Game instance to which this pipeline is bound.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#game
     * @type {Phaser.Game}
     * @since 3.0.0
     */
    public var game:phaser.Game;
    /**
     * The WebGL Renderer instance to which this pipeline is bound.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#renderer
     * @type {Phaser.Renderer.WebGL.WebGLRenderer}
     * @since 3.0.0
     */
    public var renderer:phaser.renderer.webgl.WebGLRenderer;
    /**
     * A reference to the WebGL Pipeline Manager.
     *
     * This is initially undefined and only set when this pipeline is added
     * to the manager.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#manager
     * @type {?Phaser.Renderer.WebGL.PipelineManager}
     * @since 3.50.0
     */
    public var manager:phaser.renderer.webgl.PipelineManager;
    /**
     * The WebGL context this WebGL Pipeline uses.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#gl
     * @type {WebGLRenderingContext}
     * @since 3.0.0
     */
    public var gl:js.html.webgl.RenderingContext;
    /**
     * The canvas which this WebGL Pipeline renders to.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#view
     * @type {HTMLCanvasElement}
     * @since 3.0.0
     */
    public var view:js.html.CanvasElement;
    /**
     * Width of the current viewport.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * Height of the current viewport.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The current number of vertices that have been added to the pipeline batch.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#vertexCount
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var vertexCount:Float;
    /**
     * The total number of vertices that this pipeline batch can hold before it will flush.
     *
     * This defaults to `renderer batchSize * 6`, where `batchSize` is defined in the Renderer Game Config.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#vertexCapacity
     * @type {number}
     * @since 3.0.0
     */
    public var vertexCapacity:Float;
    /**
     * Raw byte buffer of vertices.
     *
     * Either set via the config object `vertices` property, or generates a new Array Buffer of
     * size `vertexCapacity * vertexSize`.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#vertexData
     * @type {ArrayBuffer}
     * @readonly
     * @since 3.0.0
     */
    public var vertexData:js.lib.ArrayBuffer;
    /**
     * The WebGLBuffer that holds the vertex data.
     *
     * Created from the `vertexData` ArrayBuffer. If `vertices` are set in the config, a `STATIC_DRAW` buffer
     * is created. If not, a `DYNAMIC_DRAW` buffer is created.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#vertexBuffer
     * @type {WebGLBuffer}
     * @readonly
     * @since 3.0.0
     */
    public var vertexBuffer:js.html.webgl.Buffer;
    /**
     * The primitive topology which the pipeline will use to submit draw calls.
     *
     * Defaults to GL_TRIANGLES if not otherwise set in the config.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#topology
     * @type {GLenum}
     * @since 3.0.0
     */
    public var topology:Dynamic;
    /**
     * Uint8 view to the `vertexData` ArrayBuffer. Used for uploading vertex buffer resources to the GPU.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#bytes
     * @type {Uint8Array}
     * @since 3.0.0
     */
    public var bytes:js.lib.Uint8Array;
    /**
     * Float32 view of the array buffer containing the pipeline's vertices.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#vertexViewF32
     * @type {Float32Array}
     * @since 3.0.0
     */
    public var vertexViewF32:js.lib.Float32Array;
    /**
     * Uint32 view of the array buffer containing the pipeline's vertices.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#vertexViewU32
     * @type {Uint32Array}
     * @since 3.0.0
     */
    public var vertexViewU32:js.lib.Uint32Array;
    /**
     * Indicates if the current pipeline is active, or not.
     *
     * Toggle this property to enable or disable a pipeline from rendering anything.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#active
     * @type {boolean}
     * @since 3.10.0
     */
    public var active:Bool;
    /**
     * Holds the most recently assigned texture unit.
     *
     * Treat this value as read-only.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#currentUnit
     * @type {number}
     * @since 3.50.0
     */
    public var currentUnit:Float;
    /**
     * Some pipelines require the forced use of texture zero (like the light pipeline).
     *
     * This property should be set when that is the case.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#forceZero
     * @type {boolean}
     * @since 3.50.0
     */
    public var forceZero:Bool;
    /**
     * Indicates if this pipeline has booted or not.
     *
     * A pipeline boots only when the Game instance itself, and all associated systems, is
     * fully ready.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#hasBooted
     * @type {boolean}
     * @readonly
     * @since 3.50.0
     */
    public var hasBooted:Bool;
    /**
     * Indicates if this is a Post FX Pipeline, or not.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#isPostFX
     * @type {boolean}
     * @readonly
     * @since 3.50.0
     */
    public var isPostFX:Bool;
    /**
     * An array of RenderTarget instances that belong to this pipeline.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#renderTargets
     * @type {Phaser.Renderer.WebGL.RenderTarget[]}
     * @since 3.50.0
     */
    public var renderTargets:Array<phaser.renderer.webgl.RenderTarget>;
    /**
     * A reference to the currently bound Render Target instance from the `WebGLPipeline.renderTargets` array.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#currentRenderTarget
     * @type {Phaser.Renderer.WebGL.RenderTarget}
     * @since 3.50.0
     */
    public var currentRenderTarget:phaser.renderer.webgl.RenderTarget;
    /**
     * An array of all the WebGLShader instances that belong to this pipeline.
     *
     * Shaders manage their own attributes and uniforms, but share the same vertex data buffer,
     * which belongs to this pipeline.
     *
     * Shaders are set in a call to the `setShadersFromConfig` method, which happens automatically,
     * but can also be called at any point in your game. See the method documentation for details.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#shaders
     * @type {Phaser.Renderer.WebGL.WebGLShader[]}
     * @since 3.50.0
     */
    public var shaders:Array<phaser.renderer.webgl.WebGLShader>;
    /**
     * A reference to the currently bound WebGLShader instance from the `WebGLPipeline.shaders` array.
     *
     * For lots of pipelines, this is the only shader, so it is a quick way to reference it without
     * an array look-up.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#currentShader
     * @type {Phaser.Renderer.WebGL.WebGLShader}
     * @since 3.50.0
     */
    public var currentShader:phaser.renderer.webgl.WebGLShader;
    /**
     * The Projection matrix, used by shaders as 'uProjectionMatrix' uniform.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#projectionMatrix
     * @type {Phaser.Math.Matrix4}
     * @since 3.50.0
     */
    public var projectionMatrix:phaser.math.Matrix4;
    /**
     * The cached width of the Projection matrix.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#projectionWidth
     * @type {number}
     * @since 3.50.0
     */
    public var projectionWidth:Float;
    /**
     * The cached height of the Projection matrix.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#projectionHeight
     * @type {number}
     * @since 3.50.0
     */
    public var projectionHeight:Float;
    /**
     * The configuration object that was used to create this pipeline.
     *
     * Treat this object as 'read only', because changing it post-creation will not
     * impact this pipeline in any way. However, it is used internally for cloning
     * and post-boot set-up.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#config
     * @type {Phaser.Types.Renderer.WebGL.WebGLPipelineConfig}
     * @since 3.50.0
     */
    public var config:phaser.types.renderer.webgl.WebGLPipelineConfig;
    /**
     * Has the GL Context been reset to the Phaser defaults since the last time
     * this pipeline was bound? This is set automatically when the Pipeline Manager
     * resets itself, usually after handing off to a 3rd party renderer like Spine.
     *
     * You should treat this property as read-only.
     *
     * @name Phaser.Renderer.WebGL.WebGLPipeline#glReset
     * @type {boolean}
     * @since 3.53.0
     */
    public var glReset:Bool;
    /**
     * Called when the Game has fully booted and the Renderer has finished setting up.
     *
     * By this stage all Game level systems are now in place. You can perform any final tasks that the
     * pipeline may need, that relies on game systems such as the Texture Manager being ready.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#boot
     * @fires Phaser.Renderer.WebGL.Pipelines.Events#BOOT
     * @since 3.11.0
     */
    public function boot():Void;
    /**
     * This method is called once when this pipeline has finished being set-up
     * at the end of the boot process. By the time this method is called, all
     * of the shaders are ready and configured.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onBoot
     * @since 3.50.0
     */
    public function onBoot():Void;
    /**
     * This method is called once when this pipeline has finished being set-up
     * at the end of the boot process. By the time this method is called, all
     * of the shaders are ready and configured. It's also called if the renderer
     * changes size.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onResize
     * @since 3.50.0
     *
     * @param {number} width - The new width of this WebGL Pipeline.
     * @param {number} height - The new height of this WebGL Pipeline.
     */
    public function onResize(width:Float, height:Float):Void;
    /**
     * Sets the currently active shader within this pipeline.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setShader
     * @since 3.50.0
     *
     * @param {Phaser.Renderer.WebGL.WebGLShader} shader - The shader to set as being current.
     * @param {boolean} [setAttributes=false] - Should the vertex attribute pointers be set?
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setShader(shader:phaser.renderer.webgl.WebGLShader, ?setAttributes:Bool):Dynamic;
    /**
     * Searches all shaders in this pipeline for one matching the given name, then returns it.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#getShaderByName
     * @since 3.50.0
     *
     * @param {string} name - The index of the shader to set.
     *
     * @return {Phaser.Renderer.WebGL.WebGLShader} The WebGLShader instance, if found.
     */
    public function getShaderByName(name:String):phaser.renderer.webgl.WebGLShader;
    /**
     * Destroys all shaders currently set in the `WebGLPipeline.shaders` array and then parses the given
     * `config` object, extracting the shaders from it, creating `WebGLShader` instances and finally
     * setting them into the `shaders` array of this pipeline.
     *
     * This is a destructive process. Be very careful when you call it, should you need to.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setShadersFromConfig
     * @since 3.50.0
     *
     * @param {Phaser.Types.Renderer.WebGL.WebGLPipelineConfig} config - The configuration object for this WebGL Pipeline.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setShadersFromConfig(config:phaser.types.renderer.webgl.WebGLPipelineConfig):Dynamic;
    /**
     * Custom pipelines can use this method in order to perform any required pre-batch tasks
     * for the given Game Object. It must return the texture unit the Game Object was assigned.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setGameObject
     * @since 3.50.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - The Game Object being rendered or added to the batch.
     * @param {Phaser.Textures.Frame} [frame] - Optional frame to use. Can override that of the Game Object.
     *
     * @return {number} The texture unit the Game Object has been assigned.
     */
    public function setGameObject(gameObject:phaser.gameobjects.GameObject, ?frame:phaser.textures.Frame):Float;
    /**
     * Check if the current batch of vertices is full.
     *
     * You can optionally provide an `amount` parameter. If given, it will check if the batch
     * needs to flush _if_ the `amount` is added to it. This allows you to test if you should
     * flush before populating the batch.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#shouldFlush
     * @since 3.0.0
     *
     * @param {number} [amount=0] - Will the batch need to flush if this many vertices are added to it?
     *
     * @return {boolean} `true` if the current batch should be flushed, otherwise `false`.
     */
    public function shouldFlush(?amount:Float):Bool;
    /**
     * Resizes the properties used to describe the viewport.
     *
     * This method is called automatically by the renderer during its resize handler.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#resize
     * @fires Phaser.Renderer.WebGL.Pipelines.Events#RESIZE
     * @since 3.0.0
     *
     * @param {number} width - The new width of this WebGL Pipeline.
     * @param {number} height - The new height of this WebGL Pipeline.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function resize(width:Float, height:Float):Dynamic;
    /**
     * Adjusts this pipelines ortho Projection Matrix to use the given dimensions
     * and resets the `uProjectionMatrix` uniform on all bound shaders.
     *
     * This method is called automatically by the renderer during its resize handler.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setProjectionMatrix
     * @since 3.50.0
     *
     * @param {number} width - The new width of this WebGL Pipeline.
     * @param {number} height - The new height of this WebGL Pipeline.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setProjectionMatrix(width:Float, height:Float):Dynamic;
    /**
     * Adjusts this pipelines ortho Projection Matrix to match that of the global
     * WebGL Renderer Projection Matrix.
     *
     * This method is called automatically by the Pipeline Manager when this
     * pipeline is set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#updateProjectionMatrix
     * @since 3.50.0
     */
    public function updateProjectionMatrix():Void;
    /**
     * This method is called every time the Pipeline Manager makes this pipeline the currently active one.
     *
     * It binds the resources and shader needed for this pipeline, including setting the vertex buffer
     * and attribute pointers.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#bind
     * @fires Phaser.Renderer.WebGL.Pipelines.Events#BIND
     * @since 3.0.0
     *
     * @param {Phaser.Renderer.WebGL.WebGLShader} [currentShader] - The shader to set as being current.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function bind(?currentShader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * This method is called every time the Pipeline Manager rebinds this pipeline.
     *
     * It resets all shaders this pipeline uses, setting their attributes again.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#rebind
     * @fires Phaser.Renderer.WebGL.Pipelines.Events#REBIND
     * @since 3.0.0
     *
     * @param {Phaser.Renderer.WebGL.WebGLShader} [currentShader] - The shader to set as being current.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function rebind(?currentShader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Binds the vertex buffer to be the active ARRAY_BUFFER on the WebGL context.
     *
     * It first checks to see if it's already set as the active buffer and only
     * binds itself if not.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setVertexBuffer
     * @since 3.50.0
     *
     * @return {boolean} `true` if the vertex buffer was bound, or `false` if it was already bound.
     */
    public function setVertexBuffer():Bool;
    /**
     * This method is called as a result of the `WebGLPipeline.batchQuad` method, right before a quad
     * belonging to a Game Object is about to be added to the batch. When this is called, the
     * renderer has just performed a flush. It will bind the current render target, if any are set
     * and finally call the `onPreBatch` hook.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#preBatch
     * @since 3.50.0
     *
     * @param {(Phaser.GameObjects.GameObject|Phaser.Cameras.Scene2D.Camera)} [gameObject] - The Game Object or Camera that invoked this pipeline, if any.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function preBatch(?gameObject:Dynamic):Dynamic;
    /**
     * This method is called as a result of the `WebGLPipeline.batchQuad` method, right after a quad
     * belonging to a Game Object has been added to the batch. When this is called, the
     * renderer has just performed a flush.
     *
     * It calls the `onDraw` hook followed by the `onPostBatch` hook, which can be used to perform
     * additional Post FX Pipeline processing.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#postBatch
     * @since 3.50.0
     *
     * @param {(Phaser.GameObjects.GameObject|Phaser.Cameras.Scene2D.Camera)} [gameObject] - The Game Object or Camera that invoked this pipeline, if any.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function postBatch(?gameObject:Dynamic):Dynamic;
    /**
     * This method is only used by Post FX Pipelines and those that extend from them.
     *
     * This method is called every time the `postBatch` method is called and is passed a
     * reference to the current render target.
     *
     * At the very least a Post FX Pipeline should call `this.bindAndDraw(renderTarget)`,
     * however, you can do as much additional processing as you like in this method if
     * you override it from within your own pipelines.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onDraw
     * @since 3.50.0
     *
     * @param {Phaser.Renderer.WebGL.RenderTarget} renderTarget - The Render Target.
     */
    public function onDraw(renderTarget:phaser.renderer.webgl.RenderTarget):Void;
    /**
     * This method is called every time the Pipeline Manager deactivates this pipeline, swapping from
     * it to another one. This happens after a call to `flush` and before the new pipeline is bound.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#unbind
     * @since 3.50.0
     */
    public function unbind():Void;
    /**
     * Uploads the vertex data and emits a draw call for the current batch of vertices.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#flush
     * @fires Phaser.Renderer.WebGL.Pipelines.Events#BEFORE_FLUSH
     * @fires Phaser.Renderer.WebGL.Pipelines.Events#AFTER_FLUSH
     * @since 3.0.0
     *
     * @param {boolean} [isPostFlush=false] - Was this flush invoked as part of a post-process, or not?
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function flush(?isPostFlush:Bool):Dynamic;
    /**
     * By default this is an empty method hook that you can override and use in your own custom pipelines.
     *
     * This method is called every time the Pipeline Manager makes this the active pipeline. It is called
     * at the end of the `WebGLPipeline.bind` method, after the current shader has been set. The current
     * shader is passed to this hook.
     *
     * For example, if a display list has 3 Sprites in it that all use the same pipeline, this hook will
     * only be called for the first one, as the 2nd and 3rd Sprites do not cause the pipeline to be changed.
     *
     * If you need to listen for that event instead, use the `onBind` hook.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onActive
     * @since 3.50.0
     *
     * @param {Phaser.Renderer.WebGL.WebGLShader} currentShader - The shader that was set as current.
     */
    public function onActive(currentShader:phaser.renderer.webgl.WebGLShader):Void;
    /**
     * By default this is an empty method hook that you can override and use in your own custom pipelines.
     *
     * This method is called every time a **Game Object** asks the Pipeline Manager to use this pipeline,
     * even if the pipeline is already active.
     *
     * Unlike the `onActive` method, which is only called when the Pipeline Manager makes this pipeline
     * active, this hook is called for every Game Object that requests use of this pipeline, allowing you to
     * perform per-object set-up, such as loading shader uniform data.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onBind
     * @since 3.50.0
     *
     * @param {Phaser.GameObjects.GameObject} [gameObject] - The Game Object that invoked this pipeline, if any.
     */
    public function onBind(?gameObject:phaser.gameobjects.GameObject):Void;
    /**
     * By default this is an empty method hook that you can override and use in your own custom pipelines.
     *
     * This method is called when the Pipeline Manager needs to rebind this pipeline. This happens after a
     * pipeline has been cleared, usually when passing control over to a 3rd party WebGL library, like Spine,
     * and then returing to Phaser again.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onRebind
     * @since 3.50.0
     */
    public function onRebind():Void;
    /**
     * By default this is an empty method hook that you can override and use in your own custom pipelines.
     *
     * This method is called every time the `batchQuad` or `batchTri` methods are called. If this was
     * as a result of a Game Object, then the Game Object reference is passed to this hook too.
     *
     * This hook is called _after_ the quad (or tri) has been added to the batch, so you can safely
     * call 'flush' from within this.
     *
     * Note that Game Objects may call `batchQuad` or `batchTri` multiple times for a single draw,
     * for example the Graphics Game Object.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onBatch
     * @since 3.50.0
     *
     * @param {Phaser.GameObjects.GameObject} [gameObject] - The Game Object that invoked this pipeline, if any.
     */
    public function onBatch(?gameObject:phaser.gameobjects.GameObject):Void;
    /**
     * By default this is an empty method hook that you can override and use in your own custom pipelines.
     *
     * This method is called immediately before a **Game Object** is about to add itself to the batch.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onPreBatch
     * @since 3.50.0
     *
     * @param {Phaser.GameObjects.GameObject} [gameObject] - The Game Object that invoked this pipeline, if any.
     */
    public function onPreBatch(?gameObject:phaser.gameobjects.GameObject):Void;
    /**
     * By default this is an empty method hook that you can override and use in your own custom pipelines.
     *
     * This method is called immediately after a **Game Object** has been added to the batch.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onPostBatch
     * @since 3.50.0
     *
     * @param {Phaser.GameObjects.GameObject} [gameObject] - The Game Object that invoked this pipeline, if any.
     */
    public function onPostBatch(?gameObject:phaser.gameobjects.GameObject):Void;
    /**
     * By default this is an empty method hook that you can override and use in your own custom pipelines.
     *
     * This method is called once per frame, right before anything has been rendered, but after the canvas
     * has been cleared. If this pipeline has a render target, it will also have been cleared by this point.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onPreRender
     * @since 3.50.0
     */
    public function onPreRender():Void;
    /**
     * By default this is an empty method hook that you can override and use in your own custom pipelines.
     *
     * This method is called _once per frame_, by every Camera in a Scene that wants to render.
     *
     * It is called at the start of the rendering process, before anything has been drawn to the Camera.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onRender
     * @since 3.50.0
     *
     * @param {Phaser.Scene} scene - The Scene being rendered.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Scene Camera being rendered with.
     */
    public function onRender(scene:phaser.Scene, camera:phaser.cameras.scene2d.Camera):Void;
    /**
     * By default this is an empty method hook that you can override and use in your own custom pipelines.
     *
     * This method is called _once per frame_, after all rendering has happened and snapshots have been taken.
     *
     * It is called at the very end of the rendering process, once all Cameras, for all Scenes, have
     * been rendered.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onPostRender
     * @since 3.50.0
     */
    public function onPostRender():Void;
    /**
     * By default this is an empty method hook that you can override and use in your own custom pipelines.
     *
     * This method is called every time this pipeline is asked to flush its batch.
     *
     * It is called immediately before the `gl.bufferData` and `gl.drawArrays` calls are made, so you can
     * perform any final pre-render modifications. To apply changes post-render, see `onAfterFlush`.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onBeforeFlush
     * @since 3.50.0
     *
     * @param {boolean} [isPostFlush=false] - Was this flush invoked as part of a post-process, or not?
     */
    public function onBeforeFlush(?isPostFlush:Bool):Void;
    /**
     * By default this is an empty method hook that you can override and use in your own custom pipelines.
     *
     * This method is called immediately after this pipeline has finished flushing its batch.
     *
     * It is called after the `gl.drawArrays` call.
     *
     * You can perform additional post-render effects, but be careful not to call `flush`
     * on this pipeline from within this method, or you'll cause an infinite loop.
     *
     * To apply changes pre-render, see `onBeforeFlush`.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#onAfterFlush
     * @since 3.50.0
     *
     * @param {boolean} [isPostFlush=false] - Was this flush invoked as part of a post-process, or not?
     */
    public function onAfterFlush(?isPostFlush:Bool):Void;
    /**
     * Adds a single vertex to the current vertex buffer and increments the
     * `vertexCount` property by 1.
     *
     * This method is called directly by `batchTri` and `batchQuad`.
     *
     * It does not perform any batch limit checking itself, so if you need to call
     * this method directly, do so in the same way that `batchQuad` does, for example.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#batchVert
     * @since 3.50.0
     *
     * @param {number} x - The vertex x position.
     * @param {number} y - The vertex y position.
     * @param {number} u - UV u value.
     * @param {number} v - UV v value.
     * @param {number} unit - Texture unit to which the texture needs to be bound.
     * @param {(number|boolean)} tintEffect - The tint effect for the shader to use.
     * @param {number} tint - The tint color value.
     */
    public function batchVert(x:Float, y:Float, u:Float, v:Float, unit:Float, tintEffect:Dynamic, tint:Float):Void;
    /**
     * Adds the vertices data into the batch and flushes if full.
     *
     * Assumes 6 vertices in the following arrangement:
     *
     * ```
     * 0----3
     * |\  B|
     * | \  |
     * |  \ |
     * | A \|
     * |    \
     * 1----2
     * ```
     *
     * Where tx0/ty0 = 0, tx1/ty1 = 1, tx2/ty2 = 2 and tx3/ty3 = 3
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#batchQuad
     * @since 3.50.0
     *
     * @param {(Phaser.GameObjects.GameObject|null)} gameObject - The Game Object, if any, drawing this quad.
     * @param {number} x0 - The top-left x position.
     * @param {number} y0 - The top-left y position.
     * @param {number} x1 - The bottom-left x position.
     * @param {number} y1 - The bottom-left y position.
     * @param {number} x2 - The bottom-right x position.
     * @param {number} y2 - The bottom-right y position.
     * @param {number} x3 - The top-right x position.
     * @param {number} y3 - The top-right y position.
     * @param {number} u0 - UV u0 value.
     * @param {number} v0 - UV v0 value.
     * @param {number} u1 - UV u1 value.
     * @param {number} v1 - UV v1 value.
     * @param {number} tintTL - The top-left tint color value.
     * @param {number} tintTR - The top-right tint color value.
     * @param {number} tintBL - The bottom-left tint color value.
     * @param {number} tintBR - The bottom-right tint color value.
     * @param {(number|boolean)} tintEffect - The tint effect for the shader to use.
     * @param {WebGLTexture} [texture] - WebGLTexture that will be assigned to the current batch if a flush occurs.
     * @param {number} [unit=0] - Texture unit to which the texture needs to be bound.
     *
     * @return {boolean} `true` if this method caused the batch to flush, otherwise `false`.
     */
    public function batchQuad(gameObject:Dynamic, x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, u0:Float, v0:Float, u1:Float, v1:Float, tintTL:Float, tintTR:Float, tintBL:Float, tintBR:Float, tintEffect:Dynamic, ?texture:js.html.webgl.Texture, ?unit:Float):Bool;
    /**
     * Adds the vertices data into the batch and flushes if full.
     *
     * Assumes 3 vertices in the following arrangement:
     *
     * ```
     * 0
     * |\
     * | \
     * |  \
     * |   \
     * |    \
     * 1-----2
     * ```
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#batchTri
     * @since 3.50.0
     *
     * @param {(Phaser.GameObjects.GameObject|null)} gameObject - The Game Object, if any, drawing this quad.
     * @param {number} x1 - The bottom-left x position.
     * @param {number} y1 - The bottom-left y position.
     * @param {number} x2 - The bottom-right x position.
     * @param {number} y2 - The bottom-right y position.
     * @param {number} x3 - The top-right x position.
     * @param {number} y3 - The top-right y position.
     * @param {number} u0 - UV u0 value.
     * @param {number} v0 - UV v0 value.
     * @param {number} u1 - UV u1 value.
     * @param {number} v1 - UV v1 value.
     * @param {number} tintTL - The top-left tint color value.
     * @param {number} tintTR - The top-right tint color value.
     * @param {number} tintBL - The bottom-left tint color value.
     * @param {(number|boolean)} tintEffect - The tint effect for the shader to use.
     * @param {WebGLTexture} [texture] - WebGLTexture that will be assigned to the current batch if a flush occurs.
     * @param {number} [unit=0] - Texture unit to which the texture needs to be bound.
     *
     * @return {boolean} `true` if this method caused the batch to flush, otherwise `false`.
     */
    public function batchTri(gameObject:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, u0:Float, v0:Float, u1:Float, v1:Float, tintTL:Float, tintTR:Float, tintBL:Float, tintEffect:Dynamic, ?texture:js.html.webgl.Texture, ?unit:Float):Bool;
    /**
     * Pushes a filled rectangle into the vertex batch.
     *
     * The dimensions are run through `Math.floor` before the quad is generated.
     *
     * Rectangle has no transform values and isn't transformed into the local space.
     *
     * Used for directly batching untransformed rectangles, such as Camera background colors.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#drawFillRect
     * @since 3.50.0
     *
     * @param {number} x - Horizontal top left coordinate of the rectangle.
     * @param {number} y - Vertical top left coordinate of the rectangle.
     * @param {number} width - Width of the rectangle.
     * @param {number} height - Height of the rectangle.
     * @param {number} color - Color of the rectangle to draw.
     * @param {number} alpha - Alpha value of the rectangle to draw.
     * @param {WebGLTexture} [texture] - WebGLTexture that will be assigned to the current batch if a flush occurs.
     * @param {boolean} [flipUV=true] - Flip the vertical UV coordinates of the texture before rendering?
     */
    public function drawFillRect(x:Float, y:Float, width:Float, height:Float, color:Float, alpha:Float, ?texture:js.html.webgl.Texture, ?flipUV:Bool):Void;
    /**
     * Sets the texture to be bound to the next available texture unit and returns
     * the unit id.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setTexture2D
     * @since 3.50.0
     *
     * @param {WebGLTexture} [texture] - WebGLTexture that will be assigned to the current batch. If not given uses `whiteTexture`.
     *
     * @return {number} The assigned texture unit.
     */
    public function setTexture2D(?texture:js.html.webgl.Texture):Float;
    /**
     * Activates the given WebGL Texture and binds it to the requested texture slot.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#bindTexture
     * @since 3.50.0
     *
     * @param {WebGLTexture} [target] - The WebGLTexture to activate and bind.
     * @param {number} [unit=0] - The WebGL texture ID to activate. Defaults to `gl.TEXTURE0`.
     *
     * @return {this} This WebGL Pipeline instance.
     */
    public function bindTexture(?target:js.html.webgl.Texture, ?unit:Float):Dynamic;
    /**
     * Activates the given Render Target texture and binds it to the
     * requested WebGL texture slot.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#bindRenderTarget
     * @since 3.50.0
     *
     * @param {Phaser.Renderer.WebGL.RenderTarget} [target] - The Render Target to activate and bind.
     * @param {number} [unit=0] - The WebGL texture ID to activate. Defaults to `gl.TEXTURE0`.
     *
     * @return {this} This WebGL Pipeline instance.
     */
    public function bindRenderTarget(?target:phaser.renderer.webgl.RenderTarget, ?unit:Float):Dynamic;
    /**
     * Sets the current duration into a 1f uniform value based on the given name.
     *
     * This can be used for mapping time uniform values, such as `iTime`.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setTime
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setTime(name:String):Dynamic;
    /**
     * Sets a 1f uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set1f
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - The new value of the `float` uniform.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set1f(name:String, x:Float, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 2f uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set2f
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - The new X component of the `vec2` uniform.
     * @param {number} y - The new Y component of the `vec2` uniform.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set2f(name:String, x:Float, y:Float, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 3f uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set3f
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - The new X component of the `vec3` uniform.
     * @param {number} y - The new Y component of the `vec3` uniform.
     * @param {number} z - The new Z component of the `vec3` uniform.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set3f(name:String, x:Float, y:Float, z:Float, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 4f uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set4f
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - X component of the uniform
     * @param {number} y - Y component of the uniform
     * @param {number} z - Z component of the uniform
     * @param {number} w - W component of the uniform
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set4f(name:String, x:Float, y:Float, z:Float, w:Float, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 1fv uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set1fv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set1fv(name:String, arr:Dynamic, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 2fv uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set2fv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set2fv(name:String, arr:Dynamic, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 3fv uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set3fv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set3fv(name:String, arr:Dynamic, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 4fv uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set4fv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set4fv(name:String, arr:Dynamic, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 1iv uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set1iv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set1iv(name:String, arr:Dynamic, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 2iv uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set2iv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set2iv(name:String, arr:Dynamic, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 3iv uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set3iv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set3iv(name:String, arr:Dynamic, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 4iv uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set4iv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set4iv(name:String, arr:Dynamic, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 1i uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set1i
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - The new value of the `int` uniform.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set1i(name:String, x:Float, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 2i uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set2i
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - The new X component of the `ivec2` uniform.
     * @param {number} y - The new Y component of the `ivec2` uniform.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set2i(name:String, x:Float, y:Float, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 3i uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set3i
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - The new X component of the `ivec3` uniform.
     * @param {number} y - The new Y component of the `ivec3` uniform.
     * @param {number} z - The new Z component of the `ivec3` uniform.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set3i(name:String, x:Float, y:Float, z:Float, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a 4i uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#set4i
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - X component of the uniform.
     * @param {number} y - Y component of the uniform.
     * @param {number} z - Z component of the uniform.
     * @param {number} w - W component of the uniform.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function set4i(name:String, x:Float, y:Float, z:Float, w:Float, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a matrix 2fv uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setMatrix2fv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {boolean} transpose - Whether to transpose the matrix. Should be `false`.
     * @param {number[]|Float32Array} matrix - The new values for the `mat2` uniform.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setMatrix2fv(name:String, transpose:Bool, matrix:Dynamic, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a matrix 3fv uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setMatrix3fv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {boolean} transpose - Whether to transpose the matrix. Should be `false`.
     * @param {Float32Array} matrix - The new values for the `mat3` uniform.
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setMatrix3fv(name:String, transpose:Bool, matrix:js.lib.Float32Array, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
    /**
     * Sets a matrix 4fv uniform value based on the given name on the currently set shader.
     *
     * The current shader is bound, before the uniform is set, making it active within the
     * WebGLRenderer. This means you can safely call this method from a location such as
     * a Scene `create` or `update` method. However, when working within a Shader file
     * directly, use the `WebGLShader` method equivalent instead, to avoid the program
     * being set.
     *
     * @method Phaser.Renderer.WebGL.WebGLPipeline#setMatrix4fv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {boolean} transpose - Should the matrix be transpose
     * @param {Float32Array} matrix - Matrix data
     * @param {Phaser.Renderer.WebGL.WebGLShader} [shader] - The shader to set the value on. If not given, the `currentShader` is used.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function setMatrix4fv(name:String, transpose:Bool, matrix:js.lib.Float32Array, ?shader:phaser.renderer.webgl.WebGLShader):Dynamic;
}
