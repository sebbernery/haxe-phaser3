package phaser.loader.filetypes;

/**
 * @classdesc
 * A single Multi Texture Atlas File suitable for loading by the Loader.
 *
 * These are created when you use the Phaser.Loader.LoaderPlugin#multiatlas method and are not typically created directly.
 *
 * For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#multiatlas.
 *
 * @class MultiAtlasFile
 * @extends Phaser.Loader.MultiFile
 * @memberof Phaser.Loader.FileTypes
 * @constructor
 * @since 3.7.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - A reference to the Loader that is responsible for this file.
 * @param {string} key - The key of the file. Must be unique within both the Loader and the Texture Manager.
 * @param {string} [atlasURL] - The absolute or relative URL to load the multi atlas json file from.
 * @param {string} [path] - Optional path to use when loading the textures defined in the atlas data.
 * @param {string} [baseURL] - Optional Base URL to use when loading the textures defined in the atlas data.
 * @param {XHRSettingsObject} [atlasXhrSettings] - Extra XHR Settings specifically for the atlas json file.
 * @param {XHRSettingsObject} [textureXhrSettings] - Extra XHR Settings specifically for the texture files.
 */
@:native("Phaser.Loader.FileTypes.MultiAtlasFile")
extern class MultiAtlasFile extends phaser.loader.MultiFile {
    public function new(loader:phaser.loader.LoaderPlugin, key:String, ?atlasURL:String, ?path:String, ?baseURL:String, ?atlasXhrSettings:XHRSettingsObject, ?textureXhrSettings:XHRSettingsObject);
}
