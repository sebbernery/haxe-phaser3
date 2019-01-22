package phaser.gameobjects;

/**
 * @classdesc
 * A Scene plugin that provides a {@link Phaser.GameObjects.LightsManager} for the Light2D pipeline.
 *
 * Available from within a Scene via `this.lights`.
 *
 * Add Lights using the {@link Phaser.GameObjects.LightsManager#addLight} method:
 *
 * ```javascript
 * // Enable the Lights Manager because it is disabled by default
 * this.lights.enable();
 *
 * // Create a Light at [400, 300] with a radius of 200
 * this.lights.addLight(400, 300, 200);
 * ```
 *
 * For Game Objects to be affected by the Lights when rendered, you will need to set them to use the `Light2D` pipeline like so:
 *
 * ```javascript
 * sprite.setPipeline('Light2D');
 * ```
 *
 * @class LightsPlugin
 * @extends Phaser.GameObjects.LightsManager
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene that this Lights Plugin belongs to.
 */
@:native("Phaser.GameObjects.LightsPlugin")
extern class LightsPlugin extends phaser.gameobjects.LightsManager {
    public function new(scene:phaser.Scene);
    /**
     * A reference to the Scene that this Lights Plugin belongs to.
     *
     * @name Phaser.GameObjects.LightsPlugin#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * A reference to the Scene's systems.
     *
     * @name Phaser.GameObjects.LightsPlugin#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * Boot the Lights Plugin.
     *
     * @method Phaser.GameObjects.LightsPlugin#boot
     * @since 3.0.0
     */
    public function boot():Void;
}
