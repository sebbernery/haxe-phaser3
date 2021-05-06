package phaser.gameobjects.components;

/**
 * Provides methods used for setting the WebGL rendering pipeline of a Game Object.
 *
 * @namespace Phaser.GameObjects.Components.Pipeline
 * @webglOnly
 * @since 3.0.0
 */
@:native("Phaser.GameObjects.Components.Pipeline")
extern class Pipeline {
    public function new();
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
}
