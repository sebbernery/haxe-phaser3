package phaser.scenes.settings;

/**
 * @typedef {object} Phaser.Scenes.Settings.Config
 *
 * @property {string} [key] - [description]
 * @property {boolean} [active=false] - [description]
 * @property {boolean} [visible=true] - [description]
 * @property {(false|Phaser.Loader.FileTypes.PackFileConfig)} [pack=false] - [description]
 * @property {?(InputJSONCameraObject|InputJSONCameraObject[])} [cameras=null] - [description]
 * @property {Object.<string, string>} [map] - Overwrites the default injection map for a scene.
 * @property {Object.<string, string>} [mapAdd] - Extends the injection map for a scene.
 * @property {object} [physics={}] - [description]
 * @property {object} [loader={}] - [description]
 * @property {(false|*)} [plugins=false] - [description]
 */
typedef Config = {
    @:optional var key:String;
    @:optional var active:Bool;
    @:optional var visible:Bool;
    @:optional var pack:Dynamic;
    @:optional var cameras:Dynamic;
    @:optional var map:Dynamic;
    @:optional var mapAdd:Dynamic;
    @:optional var physics:Dynamic;
    @:optional var loader:Dynamic;
    @:optional var plugins:Dynamic;
};
