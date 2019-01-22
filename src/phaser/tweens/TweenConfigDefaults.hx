package phaser.tweens;

/**
 * @typedef {object} Phaser.Tweens.TweenConfigDefaults
 *
 * @property {(object|object[])} targets - The object, or an array of objects, to run the tween on.
 * @property {number} [delay=0] - The number of milliseconds to delay before the tween will start.
 * @property {number} [duration=1000] - The duration of the tween in milliseconds.
 * @property {string} [ease='Power0'] - The easing equation to use for the tween.
 * @property {array} [easeParams] - Optional easing parameters.
 * @property {number} [hold=0] - The number of milliseconds to hold the tween for before yoyo'ing.
 * @property {number} [repeat=0] - The number of times to repeat the tween.
 * @property {number} [repeatDelay=0] - The number of milliseconds to pause before a tween will repeat.
 * @property {boolean} [yoyo=false] - Should the tween complete, then reverse the values incrementally to get back to the starting tween values? The reverse tweening will also take `duration` milliseconds to complete.
 * @property {boolean} [flipX=false] - Horizontally flip the target of the Tween when it completes (before it yoyos, if set to do so). Only works for targets that support the `flipX` property.
 * @property {boolean} [flipY=false] - Vertically flip the target of the Tween when it completes (before it yoyos, if set to do so). Only works for targets that support the `flipY` property.
 */
typedef TweenConfigDefaults = {
var targets:Dynamic;
    @:optional var delay:Float;
    @:optional var duration:Float;
    @:optional var ease:String;
    @:optional var easeParams:Array<Dynamic>;
    @:optional var hold:Float;
    @:optional var repeat:Float;
    @:optional var repeatDelay:Float;
    @:optional var yoyo:Bool;
    @:optional var flipX:Bool;
    @:optional var flipY:Bool;
};
