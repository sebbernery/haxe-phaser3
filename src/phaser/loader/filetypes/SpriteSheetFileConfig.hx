package phaser.loader.filetypes;

/**
 * @typedef {object} Phaser.Loader.FileTypes.SpriteSheetFileConfig
 *
 * @property {string} key - The key of the file. Must be unique within both the Loader and the Texture Manager.
 * @property {string} [url] - The absolute or relative URL to load the file from.
 * @property {string} [extension='png'] - The default file extension to use if no url is provided.
 * @property {string} [normalMap] - The filename of an associated normal map. It uses the same path and url to load as the image.
 * @property {Phaser.Loader.FileTypes.ImageFrameConfig} [frameConfig] - The frame configuration object.
 * @property {XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 */
typedef SpriteSheetFileConfig = {
var key:String;
    @:optional var url:String;
    @:optional var extension:String;
    @:optional var normalMap:String;
    @:optional var frameConfig:phaser.loader.filetypes.ImageFrameConfig;
    @:optional var xhrSettings:XHRSettingsObject;
};
