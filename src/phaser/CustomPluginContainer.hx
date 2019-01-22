package phaser;

/**
 * @typedef {object} CustomPluginContainer
 *
 * @property {string} key - The unique name of this plugin in the custom plugin cache.
 * @property {function} plugin - The plugin to be stored. Should be the source object, not instantiated.
 */
typedef CustomPluginContainer = {
var key:String;
var plugin:Dynamic;
};
