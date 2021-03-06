package phaser.loader.filetypes;

/**
 * @typedef {object} Phaser.Loader.FileTypes.TilemapJSONFileConfig
 *
 * @property {string} key - The key of the file. Must be unique within both the Loader and the Tilemap Cache.
 * @property {string} [url] - The absolute or relative URL to load the file from.
 * @property {string} [extension='json'] - The default file extension to use if no url is provided.
 * @property {XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 */
typedef TilemapJSONFileConfig = {
var key:String;
    @:optional var url:String;
    @:optional var extension:String;
    @:optional var xhrSettings:XHRSettingsObject;
};
