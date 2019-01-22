package phaser;

/**
 * @typedef {object} InputPluginContainer
 *
 * @property {string} key - The unique name of this plugin in the input plugin cache.
 * @property {function} plugin - The plugin to be stored. Should be the source object, not instantiated.
 * @property {string} [mapping] - If this plugin is to be injected into the Input Plugin, this is the property key map used.
 */
typedef InputPluginContainer = {
var key:String;
var plugin:Dynamic;
    @:optional var mapping:String;
};
