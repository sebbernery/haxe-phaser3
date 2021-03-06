package phaser.loader.filetypes;

/**
 * @typedef {object} Phaser.Loader.FileTypes.AtlasJSONFileConfig
 *
 * @property {string} key - The key of the file. Must be unique within both the Loader and the Texture Manager.
 * @property {string} [textureURL] - The absolute or relative URL to load the texture image file from.
 * @property {string} [textureExtension='png'] - The default file extension to use for the image texture if no url is provided.
 * @property {XHRSettingsObject} [textureXhrSettings] - Extra XHR Settings specifically for the texture image file.
 * @property {string} [normalMap] - The filename of an associated normal map. It uses the same path and url to load as the texture image.
 * @property {string} [atlasURL] - The absolute or relative URL to load the atlas json file from. Or a well formed JSON object to use instead.
 * @property {string} [atlasExtension='json'] - The default file extension to use for the atlas json if no url is provided.
 * @property {XHRSettingsObject} [atlasXhrSettings] - Extra XHR Settings specifically for the atlas json file.
 */
typedef AtlasJSONFileConfig = {
var key:String;
    @:optional var textureURL:String;
    @:optional var textureExtension:String;
    @:optional var textureXhrSettings:XHRSettingsObject;
    @:optional var normalMap:String;
    @:optional var atlasURL:String;
    @:optional var atlasExtension:String;
    @:optional var atlasXhrSettings:XHRSettingsObject;
};
