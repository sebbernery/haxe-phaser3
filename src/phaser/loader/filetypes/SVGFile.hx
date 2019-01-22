package phaser.loader.filetypes;

/**
 * @classdesc
 * A single SVG File suitable for loading by the Loader.
 *
 * These are created when you use the Phaser.Loader.LoaderPlugin#svg method and are not typically created directly.
 *
 * For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#svg.
 *
 * @class SVGFile
 * @extends Phaser.Loader.File
 * @memberof Phaser.Loader.FileTypes
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - A reference to the Loader that is responsible for this file.
 * @param {(string|Phaser.Loader.FileTypes.SVGFileConfig)} key - The key to use for this file, or a file configuration object.
 * @param {string} [url] - The absolute or relative URL to load this file from. If undefined or `null` it will be set to `<key>.svg`, i.e. if `key` was "alien" then the URL will be "alien.svg".
 * @param {Phaser.Loader.FileTypes.SVGSizeConfig} [svgConfig] - The svg size configuration object.
 * @param {XHRSettingsObject} [xhrSettings] - Extra XHR Settings specifically for this file.
 */
@:native("Phaser.Loader.FileTypes.SVGFile")
extern class SVGFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:String, ?svgConfig:phaser.loader.filetypes.SVGSizeConfig, ?xhrSettings:XHRSettingsObject);
}
