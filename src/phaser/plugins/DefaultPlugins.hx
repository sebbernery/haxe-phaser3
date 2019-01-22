package phaser.plugins;

/**
 * @typedef {object} Phaser.Plugins.DefaultPlugins
 *
 * @property {array} Global - These are the Global Managers that are created by the Phaser.Game instance.
 * @property {array} CoreScene - These are the core plugins that are installed into every Scene.Systems instance, no matter what.
 * @property {array} DefaultScene - These plugins are created in Scene.Systems in addition to the CoreScenePlugins.
 */
typedef DefaultPlugins = {
var Global:Array<Dynamic>;
var CoreScene:Array<Dynamic>;
var DefaultScene:Array<Dynamic>;
};
