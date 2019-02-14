package phaser.renderer.webgl.pipelines;

/**
 * @classdesc
 * ForwardDiffuseLightPipeline implements a forward rendering approach for 2D lights.
 * This pipeline extends TextureTintPipeline so it implements all it's rendering functions
 * and batching system.
 *
 * @class ForwardDiffuseLightPipeline
 * @extends Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline
 * @memberof Phaser.Renderer.WebGL.Pipelines
 * @constructor
 * @since 3.0.0
 *
 * @param {object} config - The configuration of the pipeline, same as the {@link Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline}. The fragment shader will be replaced with the lighting shader.
 */
@:native("Phaser.Renderer.WebGL.Pipelines.ForwardDiffuseLightPipeline")
extern class ForwardDiffuseLightPipeline extends phaser.renderer.webgl.pipelines.TextureTintPipeline {
    public function new(config:Dynamic);
    /**
     * Called when the Game has fully booted and the Renderer has finished setting up.
     *
     * By this stage all Game level systems are now in place and you can perform any final
     * tasks that the pipeline may need that relied on game systems such as the Texture Manager.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.ForwardDiffuseLightPipeline#boot
     * @override
     * @since 3.11.0
     */
    public function boot():Void;
    /**
     * This function binds its base class resources and this lights 2D resources.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.ForwardDiffuseLightPipeline#onBind
     * @override
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} [gameObject] - The Game Object that invoked this pipeline, if any.
     *
     * @return {this} This WebGLPipeline instance.
     */
    public function onBind(?gameObject:phaser.gameobjects.GameObject):Dynamic;
    /**
     * Sets the Game Objects normal map as the active texture.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.ForwardDiffuseLightPipeline#setNormalMap
     * @since 3.11.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - The Game Object to update.
     */
    public function setNormalMap(gameObject:phaser.gameobjects.GameObject):Void;
    /**
     * Rotates the normal map vectors inversely by the given angle.
     * Only works in 2D space.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.ForwardDiffuseLightPipeline#setNormalMapRotation
     * @since 3.16.0
     *
     * @param {number} rotation - The angle of rotation in radians.
     */
    public function setNormalMapRotation(rotation:Float):Void;
}
