package phaser.loader.filetypes;

/**
 * @typedef {object} Phaser.Loader.FileTypes.AudioFileConfig
 *
 * @property {string} key - The key of the file. Must be unique within the Loader and Audio Cache.
 * @property {string} [urlConfig] - The absolute or relative URL to load the file from.
 * @property {XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 * @property {AudioContext} [audioContext] - The AudioContext this file will use to process itself.
 */
typedef AudioFileConfig = {
var key:String;
    @:optional var urlConfig:String;
    @:optional var xhrSettings:XHRSettingsObject;
    @:optional var audioContext:AudioContext;
};
