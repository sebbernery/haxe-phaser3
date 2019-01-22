package phaser;

/**
 * @typedef {object} CorePluginContainer
 *
 * @property {string} key - The unique name of this plugin in the core plugin cache.
 * @property {function} plugin - The plugin to be stored. Should be the source object, not instantiated.
 * @property {string} [mapping] - If this plugin is to be injected into the Scene Systems, this is the property key map used.
 * @property {boolean} [custom=false] - Core Scene plugin or a Custom Scene plugin?
 */
typedef CorePluginContainer = {
var key:String;
var plugin:Dynamic;
    @:optional var mapping:String;
    @:optional var custom:Bool;
};
