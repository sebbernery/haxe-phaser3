package phaser.types.plugins;

/**
 * @typedef {object} Phaser.Types.Plugins.CustomPluginContainer
 * @since 3.8.0
 *
 * @property {string} key - The unique name of this plugin in the custom plugin cache.
 * @property {function} plugin - The plugin to be stored. Should be the source object, not instantiated.
 */
typedef CustomPluginContainer = {
var key:String;
var plugin:Dynamic;
};
