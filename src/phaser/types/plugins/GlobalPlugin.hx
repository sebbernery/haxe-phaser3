package phaser.types.plugins;

/**
 * @typedef {object} Phaser.Types.Plugins.GlobalPlugin
 * @since 3.0.0
 *
 * @property {string} key - The unique name of this plugin within the plugin cache.
 * @property {function} plugin - An instance of the plugin.
 * @property {boolean} [active] - Is the plugin active or not?
 * @property {string} [mapping] - If this plugin is to be injected into the Scene Systems, this is the property key map used.
 */
typedef GlobalPlugin = {
var key:String;
var plugin:Dynamic;
    @:optional var active:Bool;
    @:optional var mapping:String;
};
