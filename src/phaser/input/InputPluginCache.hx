package phaser.input;

/**
 * @namespace Phaser.Input.InputPluginCache
 */
@:native("Phaser.Input.InputPluginCache")
class InputPluginCache {
    /**
     * Static method called directly by the Core internal Plugins.
     * Key is a reference used to get the plugin from the plugins object (i.e. InputPlugin)
     * Plugin is the object to instantiate to create the plugin
     * Mapping is what the plugin is injected into the Scene.Systems as (i.e. input)
     *
     * @name Phaser.Input.InputPluginCache.register
     * @type {function}
     * @static
     * @since 3.10.0
     *
     * @param {string} key - A reference used to get this plugin from the plugin cache.
     * @param {function} plugin - The plugin to be stored. Should be the core object, not instantiated.
     * @param {string} mapping - If this plugin is to be injected into the Input Plugin, this is the property key used.
     * @param {string} settingsKey - The key in the Scene Settings to check to see if this plugin should install or not.
     * @param {string} configKey - The key in the Game Config to check to see if this plugin should install or not.
     */
    static public var register:Dynamic;
    /**
     * Returns the input plugin object from the cache based on the given key.
     *
     * @name Phaser.Input.InputPluginCache.getCore
     * @type {function}
     * @static
     * @since 3.10.0
     *
     * @param {string} key - The key of the input plugin to get.
     *
     * @return {Phaser.Types.Input.InputPluginContainer} The input plugin object.
     */
    static public var getCore:Dynamic;
    /**
     * Installs all of the registered Input Plugins into the given target.
     *
     * @name Phaser.Input.InputPluginCache.install
     * @type {function}
     * @static
     * @since 3.10.0
     *
     * @param {Phaser.Input.InputPlugin} target - The target InputPlugin to install the plugins into.
     */
    static public var install:Dynamic;
    /**
     * Removes an input plugin based on the given key.
     *
     * @name Phaser.Input.InputPluginCache.remove
     * @type {function}
     * @static
     * @since 3.10.0
     *
     * @param {string} key - The key of the input plugin to remove.
     */
    static public var remove:Dynamic;
}
