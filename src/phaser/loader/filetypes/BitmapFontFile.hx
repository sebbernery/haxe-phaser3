package phaser.loader.filetypes;

/**
 * @classdesc
 * A single Bitmap Font based File suitable for loading by the Loader.
 *
 * These are created when you use the Phaser.Loader.LoaderPlugin#bitmapFont method and are not typically created directly.
 *
 * For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#bitmapFont.
 *
 * @class BitmapFontFile
 * @extends Phaser.Loader.MultiFile
 * @memberof Phaser.Loader.FileTypes
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - A reference to the Loader that is responsible for this file.
 * @param {(string|Phaser.Loader.FileTypes.BitmapFontFileConfig)} key - The key to use for this file, or a file configuration object.
 * @param {string|string[]} [textureURL] - The absolute or relative URL to load the font image file from. If undefined or `null` it will be set to `<key>.png`, i.e. if `key` was "alien" then the URL will be "alien.png".
 * @param {string} [fontDataURL] - The absolute or relative URL to load the font xml data file from. If undefined or `null` it will be set to `<key>.xml`, i.e. if `key` was "alien" then the URL will be "alien.xml".
 * @param {XHRSettingsObject} [textureXhrSettings] - An XHR Settings configuration object for the font image file. Used in replacement of the Loaders default XHR Settings.
 * @param {XHRSettingsObject} [fontDataXhrSettings] - An XHR Settings configuration object for the font data xml file. Used in replacement of the Loaders default XHR Settings.
 */
@:native("Phaser.Loader.FileTypes.BitmapFontFile")
extern class BitmapFontFile extends phaser.loader.MultiFile {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?textureURL:Dynamic, ?fontDataURL:String, ?textureXhrSettings:XHRSettingsObject, ?fontDataXhrSettings:XHRSettingsObject);
}
