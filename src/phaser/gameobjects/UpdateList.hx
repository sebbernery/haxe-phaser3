package phaser.gameobjects;

/**
 * @classdesc
 * The Update List plugin.
 *
 * Update Lists belong to a Scene and maintain the list Game Objects to be updated every frame.
 *
 * Some or all of these Game Objects may also be part of the Scene's [Display List]{@link Phaser.GameObjects.DisplayList}, for Rendering.
 *
 * @class UpdateList
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene that the Update List belongs to.
 */
@:native("Phaser.GameObjects.UpdateList")
extern class UpdateList {
    public function new(scene:phaser.Scene);
    /**
     * The Scene that the Update List belongs to.
     *
     * @name Phaser.GameObjects.UpdateList#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * The Scene's Systems.
     *
     * @name Phaser.GameObjects.UpdateList#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * The update step.
     *
     * Pre-updates every active Game Object in the list.
     *
     * @method Phaser.GameObjects.UpdateList#sceneUpdate
     * @since 3.20.0
     *
     * @param {number} time - The current timestamp.
     * @param {number} delta - The delta time elapsed since the last frame.
     */
    public function sceneUpdate(time:Float, delta:Float):Void;
    /**
     * The Scene that owns this plugin is shutting down.
     *
     * We need to kill and reset all internal properties as well as stop listening to Scene events.
     *
     * @method Phaser.GameObjects.UpdateList#shutdown
     * @since 3.0.0
     */
    public function shutdown():Void;
    /**
     * The Scene that owns this plugin is being destroyed.
     *
     * We need to shutdown and then kill off all external references.
     *
     * @method Phaser.GameObjects.UpdateList#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
