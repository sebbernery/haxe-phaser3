package phaser.scenes.settings;

/**
 * @typedef {object} Phaser.Scenes.Settings.Object
 *
 * @property {number} status - [description]
 * @property {string} key - [description]
 * @property {boolean} active - [description]
 * @property {boolean} visible - [description]
 * @property {boolean} isBooted - [description]
 * @property {boolean} isTransition - [description]
 * @property {?Phaser.Scene} transitionFrom - [description]
 * @property {integer} transitionDuration - [description]
 * @property {boolean} transitionAllowInput - [description]
 * @property {object} data - [description]
 * @property {(false|Phaser.Loader.FileTypes.PackFileConfig)} pack - [description]
 * @property {?(InputJSONCameraObject|InputJSONCameraObject[])} cameras - [description]
 * @property {Object.<string, string>} map - [description]
 * @property {object} physics - [description]
 * @property {object} loader - [description]
 * @property {(false|*)} plugins - [description]
 */
typedef Object = {
var status:Float;
var key:String;
var active:Bool;
var visible:Bool;
var isBooted:Bool;
var isTransition:Bool;
var transitionFrom:phaser.Scene;
var transitionDuration:Int;
var transitionAllowInput:Bool;
var data:Dynamic;
var pack:Dynamic;
var cameras:Dynamic;
var map:Dynamic;
var physics:Dynamic;
var loader:Dynamic;
var plugins:Dynamic;
};
