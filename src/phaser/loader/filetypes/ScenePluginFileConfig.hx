package phaser.loader.filetypes;

/**
 * @typedef {object} Phaser.Loader.FileTypes.ScenePluginFileConfig
 *
 * @property {string} key - The key of the file. Must be unique within the Loader.
 * @property {(string|function)} [url] - The absolute or relative URL to load the file from. Or, a Scene Plugin.
 * @property {string} [extension='js'] - The default file extension to use if no url is provided.
 * @property {string} [systemKey] - If this plugin is to be added to Scene.Systems, this is the property key for it.
 * @property {string} [sceneKey] - If this plugin is to be added to the Scene, this is the property key for it.
 * @property {XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 */
typedef ScenePluginFileConfig = {
var key:String;
    @:optional var url:Dynamic;
    @:optional var extension:String;
    @:optional var systemKey:String;
    @:optional var sceneKey:String;
    @:optional var xhrSettings:XHRSettingsObject;
};
