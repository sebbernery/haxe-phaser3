package phaser.loader.filetypes;

/**
 * @classdesc
 * A single Wavefront OBJ File suitable for loading by the Loader.
 *
 * These are created when you use the Phaser.Loader.LoaderPlugin#obj method and are not typically created directly.
 *
 * For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#obj.
 *
 * @class OBJFile
 * @extends Phaser.Loader.MultiFile
 * @memberof Phaser.Loader.FileTypes
 * @constructor
 * @since 3.50.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - A reference to the Loader that is responsible for this file.
 * @param {(string|Phaser.Types.Loader.FileTypes.OBJFileConfig)} key - The key to use for this file, or a file configuration object.
 * @param {string} [objURL] - The absolute or relative URL to load the obj file from. If undefined or `null` it will be set to `<key>.obj`, i.e. if `key` was "alien" then the URL will be "alien.obj".
 * @param {string} [matURL] - The absolute or relative URL to load the material file from. If undefined or `null` it will be set to `<key>.mat`, i.e. if `key` was "alien" then the URL will be "alien.mat".
 * @param {boolean} [flipUV] - Flip the UV coordinates stored in the model data?
 * @param {Phaser.Types.Loader.XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for these files.
 */
@:native("Phaser.Loader.FileTypes.OBJFile")
extern class OBJFile extends phaser.loader.MultiFile {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?objURL:String, ?matURL:String, ?flipUV:Bool, ?xhrSettings:phaser.types.loader.XHRSettingsObject);
    /**
     * Adds this file to its target cache upon successful loading and processing.
     *
     * @method Phaser.Loader.FileTypes.OBJFile#addToCache
     * @since 3.50.0
     */
    public function addToCache():Void;
}
