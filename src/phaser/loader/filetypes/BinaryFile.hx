package phaser.loader.filetypes;

/**
 * @classdesc
 * A single Binary File suitable for loading by the Loader.
 *
 * These are created when you use the Phaser.Loader.LoaderPlugin#binary method and are not typically created directly.
 *
 * For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#binary.
 *
 * @class BinaryFile
 * @extends Phaser.Loader.File
 * @memberof Phaser.Loader.FileTypes
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - A reference to the Loader that is responsible for this file.
 * @param {(string|Phaser.Types.Loader.FileTypes.BinaryFileConfig)} key - The key to use for this file, or a file configuration object.
 * @param {string} [url] - The absolute or relative URL to load this file from. If undefined or `null` it will be set to `<key>.bin`, i.e. if `key` was "alien" then the URL will be "alien.bin".
 * @param {Phaser.Types.Loader.XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 * @param {any} [dataType] - Optional type to cast the binary file to once loaded. For example, `Uint8Array`.
 */
@:native("Phaser.Loader.FileTypes.BinaryFile")
extern class BinaryFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:String, ?xhrSettings:phaser.types.loader.XHRSettingsObject, ?dataType:Dynamic);
}
