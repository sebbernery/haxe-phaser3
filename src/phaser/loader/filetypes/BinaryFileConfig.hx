package phaser.loader.filetypes;

/**
 * @typedef {object} Phaser.Loader.FileTypes.BinaryFileConfig
 *
 * @property {string} key - The key of the file. Must be unique within both the Loader and the Binary Cache.
 * @property {string} [url] - The absolute or relative URL to load the file from.
 * @property {string} [extension='bin'] - The default file extension to use if no url is provided.
 * @property {XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 * @property {any} [dataType] - Optional type to cast the binary file to once loaded. For example, `Uint8Array`.
 */
typedef BinaryFileConfig = {
var key:String;
    @:optional var url:String;
    @:optional var extension:String;
    @:optional var xhrSettings:XHRSettingsObject;
    @:optional var dataType:Dynamic;
};
