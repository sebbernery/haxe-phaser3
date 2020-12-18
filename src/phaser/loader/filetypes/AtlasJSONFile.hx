package phaser.loader.filetypes;

/**
 * @classdesc
 * A single JSON based Texture Atlas File suitable for loading by the Loader.
 *
 * These are created when you use the Phaser.Loader.LoaderPlugin#atlas method and are not typically created directly.
 *
 * For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#atlas.
 *
 * https://www.codeandweb.com/texturepacker/tutorials/how-to-create-sprite-sheets-for-phaser3?source=photonstorm
 *
 * @class AtlasJSONFile
 * @extends Phaser.Loader.MultiFile
 * @memberof Phaser.Loader.FileTypes
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - A reference to the Loader that is responsible for this file.
 * @param {(string|Phaser.Types.Loader.FileTypes.AtlasJSONFileConfig)} key - The key to use for this file, or a file configuration object.
 * @param {string|string[]} [textureURL] - The absolute or relative URL to load the texture image file from. If undefined or `null` it will be set to `<key>.png`, i.e. if `key` was "alien" then the URL will be "alien.png".
 * @param {object|string} [atlasURL] - The absolute or relative URL to load the texture atlas json data file from. If undefined or `null` it will be set to `<key>.json`, i.e. if `key` was "alien" then the URL will be "alien.json". Or, a well formed JSON object.
 * @param {Phaser.Types.Loader.XHRSettingsObject} [textureXhrSettings] - An XHR Settings configuration object for the atlas image file. Used in replacement of the Loaders default XHR Settings.
 * @param {Phaser.Types.Loader.XHRSettingsObject} [atlasXhrSettings] - An XHR Settings configuration object for the atlas json file. Used in replacement of the Loaders default XHR Settings.
 */
@:native("Phaser.Loader.FileTypes.AtlasJSONFile")
extern class AtlasJSONFile extends phaser.loader.MultiFile {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?textureURL:Dynamic, ?atlasURL:Dynamic, ?textureXhrSettings:phaser.types.loader.XHRSettingsObject, ?atlasXhrSettings:phaser.types.loader.XHRSettingsObject);
    /**
     * Adds this file to its target cache upon successful loading and processing.
     *
     * @method Phaser.Loader.FileTypes.AtlasJSONFile#addToCache
     * @since 3.7.0
     */
    public function addToCache():Void;
}
