package phaser.loader.filetypes;

/**
 * @typedef {object} Phaser.Loader.FileTypes.PluginFileConfig
 *
 * @property {string} key - The key of the file. Must be unique within the Loader.
 * @property {string} [url] - The absolute or relative URL to load the file from.
 * @property {string} [extension='js'] - The default file extension to use if no url is provided.
 * @property {boolean} [start=false] - Automatically start the plugin after loading?
 * @property {string} [mapping] - If this plugin is to be injected into the Scene, this is the property key used.
 * @property {XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 */
typedef PluginFileConfig = {
var key:String;
    @:optional var url:String;
    @:optional var extension:String;
    @:optional var start:Bool;
    @:optional var mapping:String;
    @:optional var xhrSettings:XHRSettingsObject;
};
