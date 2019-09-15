package phaser.types.loader.filetypes;

/**
 * @typedef {object} Phaser.Types.Loader.FileTypes.SVGFileConfig
 *
 * @property {string} key - The key of the file. Must be unique within both the Loader and the Texture Manager.
 * @property {string} [url] - The absolute or relative URL to load the file from.
 * @property {string} [extension='svg'] - The default file extension to use if no url is provided.
 * @property {Phaser.Types.Loader.XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 * @property {Phaser.Types.Loader.FileTypes.SVGSizeConfig} [svgConfig] - The svg size configuration object.
 */
typedef SVGFileConfig = {
var key:String;
    @:optional var url:String;
    @:optional var extension:String;
    @:optional var xhrSettings:phaser.types.loader.XHRSettingsObject;
    @:optional var svgConfig:phaser.types.loader.filetypes.SVGSizeConfig;
};
