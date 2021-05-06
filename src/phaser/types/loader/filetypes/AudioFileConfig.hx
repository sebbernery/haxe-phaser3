package phaser.types.loader.filetypes;

/**
 * @typedef {object} Phaser.Types.Loader.FileTypes.AudioFileConfig
 *
 * @property {string} key - The key of the file. Must be unique within the Loader and Audio Cache.
 * @property {(string|string[])} [url] - The absolute or relative URLs to load the audio files from.
 * @property {Phaser.Types.Loader.XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 * @property {AudioContext} [context] - The optional AudioContext this file will use to process itself.
 */
typedef AudioFileConfig = {
var key:String;
    @:optional var url:Dynamic;
    @:optional var xhrSettings:phaser.types.loader.XHRSettingsObject;
    @:optional var context:js.html.audio.AudioContext;
};
