package phaser.loader.filetypes;

/**
 * @classdesc
 * An Audio Sprite File suitable for loading by the Loader.
 *
 * These are created when you use the Phaser.Loader.LoaderPlugin#audioSprite method and are not typically created directly.
 *
 * For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#audioSprite.
 *
 * @class AudioSpriteFile
 * @extends Phaser.Loader.MultiFile
 * @memberof Phaser.Loader.FileTypes
 * @constructor
 * @since 3.7.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - A reference to the Loader that is responsible for this file.
 * @param {(string|Phaser.Types.Loader.FileTypes.AudioSpriteFileConfig)} key - The key to use for this file, or a file configuration object.
 * @param {string} jsonURL - The absolute or relative URL to load the json file from. Or a well formed JSON object to use instead.
 * @param {{(string|string[])}} [audioURL] - The absolute or relative URL to load the audio file from. If empty it will be obtained by parsing the JSON file.
 * @param {any} [audioConfig] - The audio configuration options.
 * @param {Phaser.Types.Loader.XHRSettingsObject} [audioXhrSettings] - An XHR Settings configuration object for the audio file. Used in replacement of the Loaders default XHR Settings.
 * @param {Phaser.Types.Loader.XHRSettingsObject} [jsonXhrSettings] - An XHR Settings configuration object for the json file. Used in replacement of the Loaders default XHR Settings.
 */
@:native("Phaser.Loader.FileTypes.AudioSpriteFile")
extern class AudioSpriteFile extends phaser.loader.MultiFile {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, jsonURL:String, ?audioURL:Dynamic, ?audioConfig:Dynamic, ?audioXhrSettings:phaser.types.loader.XHRSettingsObject, ?jsonXhrSettings:phaser.types.loader.XHRSettingsObject);
    /**
     * Adds this file to its target cache upon successful loading and processing.
     *
     * @method Phaser.Loader.FileTypes.AudioSpriteFile#addToCache
     * @since 3.7.0
     */
    public function addToCache():Void;
}
