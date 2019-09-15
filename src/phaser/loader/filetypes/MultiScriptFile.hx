package phaser.loader.filetypes;

/**
 * @classdesc
 * A Multi Script File suitable for loading by the Loader.
 *
 * These are created when you use the Phaser.Loader.LoaderPlugin#scripts method and are not typically created directly.
 *
 * For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#scripts.
 *
 * @class MultiScriptFile
 * @extends Phaser.Loader.MultiFile
 * @memberof Phaser.Loader.FileTypes
 * @constructor
 * @since 3.17.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - A reference to the Loader that is responsible for this file.
 * @param {(string|Phaser.Types.Loader.FileTypes.MultiScriptFileConfig)} key - The key to use for this file, or a file configuration object.
 * @param {string[]} [url] - An array of absolute or relative URLs to load the script files from. They are processed in the order given in the array.
 * @param {Phaser.Types.Loader.XHRSettingsObject} [xhrSettings] - An XHR Settings configuration object for the script files. Used in replacement of the Loaders default XHR Settings.
 */
@:native("Phaser.Loader.FileTypes.MultiScriptFile")
extern class MultiScriptFile extends phaser.loader.MultiFile {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:Array<String>, ?xhrSettings:phaser.types.loader.XHRSettingsObject);
    /**
     * Adds this file to its target cache upon successful loading and processing.
     *
     * @method Phaser.Loader.FileTypes.MultiScriptFile#addToCache
     * @since 3.17.0
     */
    public function addToCache():Void;
}
