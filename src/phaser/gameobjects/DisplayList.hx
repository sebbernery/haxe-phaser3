package phaser.gameobjects;

/**
 * @classdesc
 * The Display List plugin.
 *
 * Display Lists belong to a Scene and maintain the list of Game Objects to render every frame.
 *
 * Some of these Game Objects may also be part of the Scene's [Update List]{@link Phaser.GameObjects.UpdateList}, for updating.
 *
 * @class DisplayList
 * @extends Phaser.Structs.List.<Phaser.GameObjects.GameObject>
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene that this Display List belongs to.
 */
@:native("Phaser.GameObjects.DisplayList")
extern class DisplayList {
    public function new(scene:phaser.Scene);
    /**
     * The flag the determines whether Game Objects should be sorted when `depthSort()` is called.
     *
     * @name Phaser.GameObjects.DisplayList#sortChildrenFlag
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var sortChildrenFlag:Bool;
    /**
     * The Scene that this Display List belongs to.
     *
     * @name Phaser.GameObjects.DisplayList#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * The Scene's Systems.
     *
     * @name Phaser.GameObjects.DisplayList#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * The Scene's Event Emitter.
     *
     * @name Phaser.GameObjects.DisplayList#events
     * @type {Phaser.Events.EventEmitter}
     * @since 3.50.0
     */
    public var events:phaser.events.EventEmitter;
    /**
     * Force a sort of the display list on the next call to depthSort.
     *
     * @method Phaser.GameObjects.DisplayList#queueDepthSort
     * @since 3.0.0
     */
    public function queueDepthSort():Void;
    /**
     * Immediately sorts the display list if the flag is set.
     *
     * @method Phaser.GameObjects.DisplayList#depthSort
     * @since 3.0.0
     */
    public function depthSort():Void;
    /**
     * Compare the depth of two Game Objects.
     *
     * @method Phaser.GameObjects.DisplayList#sortByDepth
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} childA - The first Game Object.
     * @param {Phaser.GameObjects.GameObject} childB - The second Game Object.
     *
     * @return {number} The difference between the depths of each Game Object.
     */
    public function sortByDepth(childA:phaser.gameobjects.GameObject, childB:phaser.gameobjects.GameObject):Float;
    /**
     * Returns an array which contains all objects currently on the Display List.
     * This is a reference to the main list array, not a copy of it, so be careful not to modify it.
     *
     * @method Phaser.GameObjects.DisplayList#getChildren
     * @since 3.12.0
     *
     * @return {Phaser.GameObjects.GameObject[]} The group members.
     */
    public function getChildren():Array<phaser.gameobjects.GameObject>;
}
