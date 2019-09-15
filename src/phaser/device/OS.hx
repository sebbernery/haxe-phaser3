package phaser.device;

/**
 * Determines the operating system of the device running this Phaser Game instance.
 * These values are read-only and populated during the boot sequence of the game.
 * They are then referenced by internal game systems and are available for you to access
 * via `this.sys.game.device.os` from within any Scene.
 *
 * @typedef {object} Phaser.Device.OS
 * @since 3.0.0
 *
 * @property {boolean} android - Is running on android?
 * @property {boolean} chromeOS - Is running on chromeOS?
 * @property {boolean} cordova - Is the game running under Apache Cordova?
 * @property {boolean} crosswalk - Is the game running under the Intel Crosswalk XDK?
 * @property {boolean} desktop - Is running on a desktop?
 * @property {boolean} ejecta - Is the game running under Ejecta?
 * @property {boolean} electron - Is the game running under GitHub Electron?
 * @property {boolean} iOS - Is running on iOS?
 * @property {boolean} iPad - Is running on iPad?
 * @property {boolean} iPhone - Is running on iPhone?
 * @property {boolean} kindle - Is running on an Amazon Kindle?
 * @property {boolean} linux - Is running on linux?
 * @property {boolean} macOS - Is running on macOS?
 * @property {boolean} node - Is the game running under Node.js?
 * @property {boolean} nodeWebkit - Is the game running under Node-Webkit?
 * @property {boolean} webApp - Set to true if running as a WebApp, i.e. within a WebView
 * @property {boolean} windows - Is running on windows?
 * @property {boolean} windowsPhone - Is running on a Windows Phone?
 * @property {number} iOSVersion - If running in iOS this will contain the major version number.
 * @property {number} pixelRatio - PixelRatio of the host device?
 */
typedef OS = {
var android:Bool;
var chromeOS:Bool;
var cordova:Bool;
var crosswalk:Bool;
var desktop:Bool;
var ejecta:Bool;
var electron:Bool;
var iOS:Bool;
var iPad:Bool;
var iPhone:Bool;
var kindle:Bool;
var linux:Bool;
var macOS:Bool;
var node:Bool;
var nodeWebkit:Bool;
var webApp:Bool;
var windows:Bool;
var windowsPhone:Bool;
var iOSVersion:Float;
var pixelRatio:Float;
};
