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
     * @return {integer} The difference between the depths of each Game Object.
     */
    public function sortByDepth(childA:phaser.gameobjects.GameObject, childB:phaser.gameobjects.GameObject):Int;
    /**
     * Given an array of Game Objects, sort the array and return it, so that
     * the objects are in index order with the lowest at the bottom.
     *
     * @method Phaser.GameObjects.DisplayList#sortGameObjects
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject[]} gameObjects - The array of Game Objects to sort.
     *
     * @return {array} The sorted array of Game Objects.
     */
    public function sortGameObjects(gameObjects:Array<phaser.gameobjects.GameObject>):Array<Dynamic>;
    /**
     * Get the top-most Game Object in the given array of Game Objects, after sorting it.
     *
     * Note that the given array is sorted in place, even though it isn't returned directly it will still be updated.
     *
     * @method Phaser.GameObjects.DisplayList#getTopGameObject
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject[]} gameObjects - The array of Game Objects.
     *
     * @return {Phaser.GameObjects.GameObject} The top-most Game Object in the array of Game Objects.
     */
    public function getTopGameObject(gameObjects:Array<phaser.gameobjects.GameObject>):phaser.gameobjects.GameObject;
    /**
     * All members of the group.
     *
     * @method Phaser.GameObjects.DisplayList#getChildren
     * @since 3.12.0
     *
     * @return {Phaser.GameObjects.GameObject[]} The group members.
     */
    public function getChildren():Array<phaser.gameobjects.GameObject>;
}
