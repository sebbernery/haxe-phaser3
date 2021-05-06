package phaser.types.loader.filetypes;

/**
 * @typedef {object} Phaser.Types.Loader.FileTypes.HTMLTextureFileConfig
 *
 * @property {string} key - The key of the file. Must be unique within both the Loader and the Texture Manager.
 * @property {string} [url] - The absolute or relative URL to load the file from.
 * @property {string} [extension='html'] - The default file extension to use if no url is provided.
 * @property {Phaser.Types.Loader.XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 * @property {number} [width=512] - The width of the texture the HTML will be rendered to.
 * @property {number} [height=512] - The height of the texture the HTML will be rendered to.
 */
typedef HTMLTextureFileConfig = {
var key:String;
    @:optional var url:String;
    @:optional var extension:String;
    @:optional var xhrSettings:phaser.types.loader.XHRSettingsObject;
    @:optional var width:Float;
    @:optional var height:Float;
};
