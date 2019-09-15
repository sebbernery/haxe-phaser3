package phaser.types.core;

/**
 * @typedef {object} Phaser.Types.Core.PluginObject
 * @since 3.8.0
 *
 * @property {?Phaser.Types.Core.PluginObjectItem[]} [global] - Global plugins to install.
 * @property {?Phaser.Types.Core.PluginObjectItem[]} [scene] - Scene plugins to install.
 * @property {string[]} [default] - The default set of scene plugins (names).
 * @property {string[]} [defaultMerge] - Plugins to *add* to the default set of scene plugins.
 */
typedef PluginObject = {
    @:optional var global:Array<phaser.types.core.PluginObjectItem>;
    @:optional var scene:Array<phaser.types.core.PluginObjectItem>;
    @:optional @:native('default') var default_:Array<String>;
    @:optional var defaultMerge:Array<String>;
};
