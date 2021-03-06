package phaser.loader.filetypes;

/**
 * @typedef {object} Phaser.Loader.FileTypes.MultiAtlasFileConfig
 *
 * @property {string} key - The key of the file. Must be unique within both the Loader and the Texture Manager.
 * @property {string} [atlasURL] - The absolute or relative URL to load the multi atlas json file from. Or, a well formed JSON object.
 * @property {string} [atlasExtension='json'] - The default file extension to use for the atlas json if no url is provided.
 * @property {XHRSettingsObject} [atlasXhrSettings] - Extra XHR Settings specifically for the atlas json file.
 * @property {string} [path] - Optional path to use when loading the textures defined in the atlas data.
 * @property {string} [baseURL] - Optional Base URL to use when loading the textures defined in the atlas data.
 * @property {XHRSettingsObject} [textureXhrSettings] - Extra XHR Settings specifically for the texture files.
 */
typedef MultiAtlasFileConfig = {
var key:String;
    @:optional var atlasURL:String;
    @:optional var atlasExtension:String;
    @:optional var atlasXhrSettings:XHRSettingsObject;
    @:optional var path:String;
    @:optional var baseURL:String;
    @:optional var textureXhrSettings:XHRSettingsObject;
};
