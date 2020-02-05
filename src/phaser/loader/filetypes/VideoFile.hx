package phaser.loader.filetypes;

/**
 * @classdesc
 * A single Video File suitable for loading by the Loader.
 *
 * These are created when you use the Phaser.Loader.LoaderPlugin#video method and are not typically created directly.
 *
 * For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#video.
 *
 * @class VideoFile
 * @extends Phaser.Loader.File
 * @memberof Phaser.Loader.FileTypes
 * @constructor
 * @since 3.20.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - A reference to the Loader that is responsible for this file.
 * @param {(string|Phaser.Types.Loader.FileTypes.VideoFileConfig)} key - The key to use for this file, or a file configuration object.
 * @param {any} [urlConfig] - The absolute or relative URL to load this file from in a config object.
 * @param {string} [loadEvent] - The load event to listen for when _not_ loading as a blob. Either 'loadeddata', 'canplay' or 'canplaythrough'.
 * @param {boolean} [asBlob] - Load the video as a data blob, or via the Video element?
 * @param {boolean} [noAudio] - Does the video have an audio track? If not you can enable auto-playing on it.
 * @param {Phaser.Types.Loader.XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 */
@:native("Phaser.Loader.FileTypes.VideoFile")
extern class VideoFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?urlConfig:Dynamic, ?loadEvent:String, ?asBlob:Bool, ?noAudio:Bool, ?xhrSettings:phaser.types.loader.XHRSettingsObject);
}
