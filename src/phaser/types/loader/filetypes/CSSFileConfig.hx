package phaser.types.loader.filetypes;

/**
 * @typedef {object} Phaser.Types.Loader.FileTypes.CSSFileConfig
 *
 * @property {string} key - The key of the file. Must be unique within the Loader.
 * @property {string} [url] - The absolute or relative URL to load the file from.
 * @property {string} [extension='js'] - The default file extension to use if no url is provided.
 * @property {Phaser.Types.Loader.XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 */
typedef CSSFileConfig = {
var key:String;
    @:optional var url:String;
    @:optional var extension:String;
    @:optional var xhrSettings:phaser.types.loader.XHRSettingsObject;
};
