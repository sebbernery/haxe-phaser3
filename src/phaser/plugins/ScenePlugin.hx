package phaser.plugins;

/**
 * @classdesc
 * A Scene Level Plugin is installed into every Scene and belongs to that Scene.
 * It can listen for Scene events and respond to them.
 * It can map itself to a Scene property, or into the Scene Systems, or both.
 *
 * @class ScenePlugin
 * @memberof Phaser.Plugins
 * @extends Phaser.Plugins.BasePlugin
 * @constructor
 * @since 3.8.0
 *
 * @param {Phaser.Scene} scene - A reference to the Scene that has installed this plugin.
 * @param {Phaser.Plugins.PluginManager} pluginManager - A reference to the Plugin Manager.
 * @param {string} pluginKey - The key under which this plugin has been installed into the Scene Systems.
 */
@:native("Phaser.Plugins.ScenePlugin")
extern class ScenePlugin extends phaser.plugins.BasePlugin {
    public function new(scene:phaser.Scene, pluginManager:phaser.plugins.PluginManager, pluginKey:String);
    /**
     * A reference to the Scene that has installed this plugin.
     * Only set if it's a Scene Plugin, otherwise `null`.
     * This property is only set when the plugin is instantiated and added to the Scene, not before.
     * You can use it during the `boot` method.
     *
     * @name Phaser.Plugins.ScenePlugin#scene
     * @type {?Phaser.Scene}
     * @protected
     * @since 3.8.0
     */
    public var scene:phaser.Scene;
    /**
     * A reference to the Scene Systems of the Scene that has installed this plugin.
     * Only set if it's a Scene Plugin, otherwise `null`.
     * This property is only set when the plugin is instantiated and added to the Scene, not before.
     * You can use it during the `boot` method.
     *
     * @name Phaser.Plugins.ScenePlugin#systems
     * @type {?Phaser.Scenes.Systems}
     * @protected
     * @since 3.8.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * The key under which this plugin was installed into the Scene Systems.
     *
     * This property is only set when the plugin is instantiated and added to the Scene, not before.
     * You can use it during the `boot` method.
     *
     * @name Phaser.Plugins.ScenePlugin#pluginKey
     * @type {string}
     * @readonly
     * @since 3.54.0
     */
    public var pluginKey:String;
    /**
     * This method is called when the Scene boots. It is only ever called once.
     *
     * By this point the plugin properties `scene` and `systems` will have already been set.
     *
     * In here you can listen for {@link Phaser.Scenes.Events Scene events} and set-up whatever you need for this plugin to run.
     * Here are the Scene events you can listen to:
     *
     * - start
     * - ready
     * - preupdate
     * - update
     * - postupdate
     * - resize
     * - pause
     * - resume
     * - sleep
     * - wake
     * - transitioninit
     * - transitionstart
     * - transitioncomplete
     * - transitionout
     * - shutdown
     * - destroy
     *
     * At the very least you should offer a destroy handler for when the Scene closes down, i.e:
     *
     * ```javascript
     * var eventEmitter = this.systems.events;
     * eventEmitter.once('destroy', this.sceneDestroy, this);
     * ```
     *
     * @method Phaser.Plugins.ScenePlugin#boot
     * @since 3.8.0
     */
    public function boot():Void;
}
