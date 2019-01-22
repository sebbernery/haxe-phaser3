package phaser;

/**
 * @typedef {object} PluginObject
 *
 * @property {?PluginObjectItem[]} [global] - Global plugins to install.
 * @property {?PluginObjectItem[]} [scene] - Scene plugins to install.
 * @property {string[]} [default] - The default set of scene plugins (names).
 * @property {string[]} [defaultMerge] - Plugins to *add* to the default set of scene plugins.
 */
typedef PluginObject = {
    @:optional var global:Array<PluginObjectItem>;
    @:optional var scene:Array<PluginObjectItem>;
    @:optional @:native('default') var default_:Array<String>;
    @:optional var defaultMerge:Array<String>;
};
