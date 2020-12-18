package phaser.types.tweens;

/**
 * @typedef {object} Phaser.Types.Tweens.NumberTweenBuilderConfig
 * @since 3.18.0
 *
 * @property {number} [from=0] - The start number.
 * @property {number} [to=1] - The end number.
 * @property {number} [delay=0] - The number of milliseconds to delay before the tween will start.
 * @property {number} [duration=1000] - The duration of the tween in milliseconds.
 * @property {(string|function)} [ease='Power0'] - The easing equation to use for the tween.
 * @property {array} [easeParams] - Optional easing parameters.
 * @property {number} [hold=0] - The number of milliseconds to hold the tween for before yoyo'ing.
 * @property {number} [repeat=0] - The number of times to repeat the tween.
 * @property {number} [repeatDelay=0] - The number of milliseconds to pause before a tween will repeat.
 * @property {boolean} [yoyo=false] - Should the tween complete, then reverse the values incrementally to get back to the starting tween values? The reverse tweening will also take `duration` milliseconds to complete.
 * @property {string|number|function|object|array} [offset=null] - Used when the Tween is part of a Timeline.
 * @property {string|number|function|object|array} [completeDelay=0] - The time the tween will wait before the onComplete event is dispatched once it has completed, in ms.
 * @property {string|number|function|object|array} [loop=0] - The number of times the tween will repeat. (A value of 1 means the tween will play twice, as it repeated once.) The first loop starts after every property tween has completed once.
 * @property {string|number|function|object|array} [loopDelay=0] - The time the tween will pause before starting either a yoyo or returning to the start for a repeat.
 * @property {boolean} [paused=false] - Does the tween start in a paused state (true) or playing (false)?
 * @property {boolean} [useFrames=false] - Use frames or milliseconds?
 * @property {any} [callbackScope] - Scope (this) for the callbacks. The default scope is the tween.
 * @property {Phaser.Types.Tweens.TweenOnCompleteCallback} [onComplete] - A function to call when the tween completes.
 * @property {array} [onCompleteParams] - Additional parameters to pass to `onComplete`.
 * @property {any} [onCompleteScope] - Scope (this) for `onComplete`.
 * @property {Phaser.Types.Tweens.TweenOnLoopCallback} [onLoop] - A function to call each time the tween loops.
 * @property {array} [onLoopParams] - Additional parameters to pass to `onLoop`.
 * @property {any} [onLoopScope] - Scope (this) for `onLoop`.
 * @property {Phaser.Types.Tweens.TweenOnRepeatCallback} [onRepeat] - A function to call each time the tween repeats. Called once per property per target.
 * @property {array} [onRepeatParams] - Additional parameters to pass to `onRepeat`.
 * @property {any} [onRepeatScope] - Scope (this) for `onRepeat`.
 * @property {Phaser.Types.Tweens.TweenOnStartCallback} [onStart] - A function to call when the tween starts.
 * @property {array} [onStartParams] - Additional parameters to pass to `onStart`.
 * @property {any} [onStartScope] - Scope (this) for `onStart`.
 * @property {Phaser.Types.Tweens.TweenOnUpdateCallback} [onUpdate] - A function to call each time the tween steps. Called once per property per target.
 * @property {array} [onUpdateParams] - Additional parameters to pass to `onUpdate`.
 * @property {any} [onUpdateScope] - Scope (this) for `onUpdate`.
 * @property {Phaser.Types.Tweens.TweenOnYoyoCallback} [onYoyo] - A function to call each time the tween yoyos. Called once per property per target.
 * @property {array} [onYoyoParams] - Additional parameters to pass to `onYoyo`.
 * @property {any} [onYoyoScope] - Scope (this) for `onYoyo`.
 */
typedef NumberTweenBuilderConfig = {
    @:optional var from:Float;
    @:optional var to:Float;
    @:optional var delay:Float;
    @:optional var duration:Float;
    @:optional var ease:Dynamic;
    @:optional var easeParams:Array<Dynamic>;
    @:optional var hold:Float;
    @:optional var repeat:Float;
    @:optional var repeatDelay:Float;
    @:optional var yoyo:Bool;
    @:optional var offset:Dynamic;
    @:optional var completeDelay:Dynamic;
    @:optional var loop:Dynamic;
    @:optional var loopDelay:Dynamic;
    @:optional var paused:Bool;
    @:optional var useFrames:Bool;
    @:optional var callbackScope:Dynamic;
    @:optional var onComplete:phaser.types.tweens.TweenOnCompleteCallback;
    @:optional var onCompleteParams:Array<Dynamic>;
    @:optional var onCompleteScope:Dynamic;
    @:optional var onLoop:phaser.types.tweens.TweenOnLoopCallback;
    @:optional var onLoopParams:Array<Dynamic>;
    @:optional var onLoopScope:Dynamic;
    @:optional var onRepeat:phaser.types.tweens.TweenOnRepeatCallback;
    @:optional var onRepeatParams:Array<Dynamic>;
    @:optional var onRepeatScope:Dynamic;
    @:optional var onStart:phaser.types.tweens.TweenOnStartCallback;
    @:optional var onStartParams:Array<Dynamic>;
    @:optional var onStartScope:Dynamic;
    @:optional var onUpdate:phaser.types.tweens.TweenOnUpdateCallback;
    @:optional var onUpdateParams:Array<Dynamic>;
    @:optional var onUpdateScope:Dynamic;
    @:optional var onYoyo:phaser.types.tweens.TweenOnYoyoCallback;
    @:optional var onYoyoParams:Array<Dynamic>;
    @:optional var onYoyoScope:Dynamic;
};
