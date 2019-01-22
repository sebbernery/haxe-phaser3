package phaser.loader.filetypes;

/**
 * @typedef {object} Phaser.Loader.FileTypes.SVGFileConfig
 *
 * @property {string} key - The key of the file. Must be unique within both the Loader and the Texture Manager.
 * @property {string} [url] - The absolute or relative URL to load the file from.
 * @property {string} [extension='svg'] - The default file extension to use if no url is provided.
 * @property {XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 * @property {Phaser.Loader.FileTypes.SVGSizeConfig} [svgConfig] - The svg size configuration object.
 */
typedef SVGFileConfig = {
var key:String;
    @:optional var url:String;
    @:optional var extension:String;
    @:optional var xhrSettings:XHRSettingsObject;
    @:optional var svgConfig:phaser.loader.filetypes.SVGSizeConfig;
};
