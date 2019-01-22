package phaser.data;

/**
 * @classdesc
 * The Data Component features a means to store pieces of data specific to a Game Object, System or Plugin.
 * You can then search, query it, and retrieve the data. The parent must either extend EventEmitter,
 * or have a property called `events` that is an instance of it.
 *
 * @class DataManagerPlugin
 * @extends Phaser.Data.DataManager
 * @memberof Phaser.Data
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - A reference to the Scene that this DataManager belongs to.
 */
@:native("Phaser.Data.DataManagerPlugin")
extern class DataManagerPlugin extends phaser.data.DataManager {
    public function new(scene:phaser.Scene);
    /**
     * A reference to the Scene that this DataManager belongs to.
     *
     * @name Phaser.Data.DataManagerPlugin#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * A reference to the Scene's Systems.
     *
     * @name Phaser.Data.DataManagerPlugin#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
}
