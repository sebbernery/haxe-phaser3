package phaser;

/**
 * @typedef {object} TimerEventConfig
 *
 * @property {number} [delay=0] - [description]
 * @property {number} [repeat=0] - [description]
 * @property {boolean} [loop=false] - [description]
 * @property {function} [callback] - [description]
 * @property {*} [callbackScope] - [description]
 * @property {Array.<*>} [args] - [description]
 * @property {number} [timeScale=1] - [description]
 * @property {number} [startAt=1] - [description]
 * @property {boolean} [paused=false] - [description]
 */
typedef TimerEventConfig = {
    @:optional var delay:Float;
    @:optional var repeat:Float;
    @:optional var loop:Bool;
    @:optional var callback:Dynamic;
    @:optional var callbackScope:Dynamic;
    @:optional var args:Array<Dynamic>;
    @:optional var timeScale:Float;
    @:optional var startAt:Float;
    @:optional var paused:Bool;
};
