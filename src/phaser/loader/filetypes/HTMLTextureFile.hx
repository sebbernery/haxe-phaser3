package phaser.loader.filetypes;

/**
 * @classdesc
 * A single HTML File suitable for loading by the Loader.
 *
 * These are created when you use the Phaser.Loader.LoaderPlugin#htmlTexture method and are not typically created directly.
 *
 * For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#htmlTexture.
 *
 * @class HTMLTextureFile
 * @extends Phaser.Loader.File
 * @memberof Phaser.Loader.FileTypes
 * @constructor
 * @since 3.12.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - A reference to the Loader that is responsible for this file.
 * @param {(string|Phaser.Types.Loader.FileTypes.HTMLTextureFileConfig)} key - The key to use for this file, or a file configuration object.
 * @param {string} [url] - The absolute or relative URL to load this file from. If undefined or `null` it will be set to `<key>.png`, i.e. if `key` was "alien" then the URL will be "alien.png".
 * @param {number} [width] - The width of the texture the HTML will be rendered to.
 * @param {number} [height] - The height of the texture the HTML will be rendered to.
 * @param {Phaser.Types.Loader.XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 */
@:native("Phaser.Loader.FileTypes.HTMLTextureFile")
extern class HTMLTextureFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:String, ?width:Float, ?height:Float, ?xhrSettings:phaser.types.loader.XHRSettingsObject);
}
