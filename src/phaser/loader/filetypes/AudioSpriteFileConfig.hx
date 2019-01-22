package phaser.loader.filetypes;

/**
 * @typedef {object} Phaser.Loader.FileTypes.AudioSpriteFileConfig
 *
 * @property {string} key - The key of the file. Must be unique within both the Loader and the Audio Cache.
 * @property {string} jsonURL - The absolute or relative URL to load the json file from. Or a well formed JSON object to use instead.
 * @property {XHRSettingsObject} [jsonXhrSettings] - Extra XHR Settings specifically for the json file.
 * @property {{(string|string[])}} [audioURL] - The absolute or relative URL to load the audio file from.
 * @property {any} [audioConfig] - The audio configuration options.
 * @property {XHRSettingsObject} [audioXhrSettings] - Extra XHR Settings specifically for the audio file.
 */
typedef AudioSpriteFileConfig = {
var key:String;
var jsonURL:String;
    @:optional var jsonXhrSettings:XHRSettingsObject;
    @:optional var audioURL:Dynamic;
    @:optional var audioConfig:Dynamic;
    @:optional var audioXhrSettings:XHRSettingsObject;
};
