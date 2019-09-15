package phaser.loader.filetypes;

/**
 * @classdesc
 * A single Audio File suitable for loading by the Loader.
 *
 * These are created when you use the Phaser.Loader.LoaderPlugin#audio method and are not typically created directly.
 *
 * For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#audio.
 *
 * @class AudioFile
 * @extends Phaser.Loader.File
 * @memberof Phaser.Loader.FileTypes
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - A reference to the Loader that is responsible for this file.
 * @param {(string|Phaser.Types.Loader.FileTypes.AudioFileConfig)} key - The key to use for this file, or a file configuration object.
 * @param {any} [urlConfig] - The absolute or relative URL to load this file from in a config object.
 * @param {Phaser.Types.Loader.XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 * @param {AudioContext} [audioContext] - The AudioContext this file will use to process itself.
 */
@:native("Phaser.Loader.FileTypes.AudioFile")
extern class AudioFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?urlConfig:Dynamic, ?xhrSettings:phaser.types.loader.XHRSettingsObject, ?audioContext:js.html.audio.AudioContext);
}
