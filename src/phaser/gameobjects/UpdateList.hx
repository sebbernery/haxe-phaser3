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
     * The length of the list.
     *
     * @name Phaser.GameObjects.UpdateList#length
     * @type {integer}
     * @readonly
     * @since 3.10.0
     */
    public var length:Int;
    /**
     * Add a Game Object to the Update List.
     *
     * @method Phaser.GameObjects.UpdateList#add
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The Game Object to add.
     *
     * @return {Phaser.GameObjects.GameObject} The added Game Object.
     */
    public function add(child:phaser.gameobjects.GameObject):phaser.gameobjects.GameObject;
    /**
     * The pre-update step.
     *
     * Handles Game Objects that are pending insertion to and removal from the list.
     *
     * @method Phaser.GameObjects.UpdateList#preUpdate
     * @since 3.0.0
     */
    public function preUpdate():Void;
    /**
     * The update step.
     *
     * Pre-updates every active Game Object in the list.
     *
     * @method Phaser.GameObjects.UpdateList#update
     * @since 3.0.0
     *
     * @param {number} time - The current timestamp.
     * @param {number} delta - The delta time elapsed since the last frame.
     */
    public function update(time:Float, delta:Float):Void;
    /**
     * Remove a Game Object from the list.
     *
     * @method Phaser.GameObjects.UpdateList#remove
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The Game Object to remove from the list.
     *
     * @return {Phaser.GameObjects.GameObject} The removed Game Object.
     */
    public function remove(child:phaser.gameobjects.GameObject):phaser.gameobjects.GameObject;
    /**
     * Remove all Game Objects from the list.
     *
     * @method Phaser.GameObjects.UpdateList#removeAll
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.UpdateList} This UpdateList.
     */
    public function removeAll():phaser.gameobjects.UpdateList;
    /**
     * The Scene that owns this plugin is shutting down.
     * We need to kill and reset all internal properties as well as stop listening to Scene events.
     *
     * @method Phaser.GameObjects.UpdateList#shutdown
     * @since 3.0.0
     */
    public function shutdown():Void;
    /**
     * The Scene that owns this plugin is being destroyed.
     * We need to shutdown and then kill off all external references.
     *
     * @method Phaser.GameObjects.UpdateList#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
