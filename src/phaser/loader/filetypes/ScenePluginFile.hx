package phaser.loader.filetypes;

/**
 * @classdesc
 * A single Scene Plugin Script File suitable for loading by the Loader.
 *
 * These are created when you use the Phaser.Loader.LoaderPlugin#scenePlugin method and are not typically created directly.
 *
 * For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#scenePlugin.
 *
 * @class ScenePluginFile
 * @extends Phaser.Loader.File
 * @memberof Phaser.Loader.FileTypes
 * @constructor
 * @since 3.8.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - A reference to the Loader that is responsible for this file.
 * @param {(string|Phaser.Types.Loader.FileTypes.ScenePluginFileConfig)} key - The key to use for this file, or a file configuration object.
 * @param {string} [url] - The absolute or relative URL to load this file from. If undefined or `null` it will be set to `<key>.js`, i.e. if `key` was "alien" then the URL will be "alien.js".
 * @param {string} [systemKey] - If this plugin is to be added to Scene.Systems, this is the property key for it.
 * @param {string} [sceneKey] - If this plugin is to be added to the Scene, this is the property key for it.
 * @param {Phaser.Types.Loader.XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 */
@:native("Phaser.Loader.FileTypes.ScenePluginFile")
extern class ScenePluginFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:String, ?systemKey:String, ?sceneKey:String, ?xhrSettings:phaser.types.loader.XHRSettingsObject);
}
