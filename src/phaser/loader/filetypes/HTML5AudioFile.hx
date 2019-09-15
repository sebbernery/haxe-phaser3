package phaser.loader.filetypes;

/**
 * @classdesc
 * A single Audio File suitable for loading by the Loader.
 *
 * These are created when you use the Phaser.Loader.LoaderPlugin#audio method and are not typically created directly.
 *
 * For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#audio.
 *
 * @class HTML5AudioFile
 * @extends Phaser.Loader.File
 * @memberof Phaser.Loader.FileTypes
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - A reference to the Loader that is responsible for this file.
 * @param {(string|Phaser.Types.Loader.FileTypes.AudioFileConfig)} key - The key to use for this file, or a file configuration object.
 * @param {string} [urlConfig] - The absolute or relative URL to load this file from.
 * @param {Phaser.Types.Loader.XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 */
@:native("Phaser.Loader.FileTypes.HTML5AudioFile")
extern class HTML5AudioFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?urlConfig:String, ?xhrSettings:phaser.types.loader.XHRSettingsObject);
}
