package phaser;

/**
 * @typedef {object} GroupConfig
 *
 * @property {?object} [classType=Sprite] - Sets {@link Phaser.GameObjects.Group#classType}.
 * @property {?boolean} [active=true] - Sets {@link Phaser.GameObjects.Group#active}.
 * @property {?number} [maxSize=-1] - Sets {@link Phaser.GameObjects.Group#maxSize}.
 * @property {?string} [defaultKey=null] - Sets {@link Phaser.GameObjects.Group#defaultKey}.
 * @property {?(string|integer)} [defaultFrame=null] - Sets {@link Phaser.GameObjects.Group#defaultFrame}.
 * @property {?boolean} [runChildUpdate=false] - Sets {@link Phaser.GameObjects.Group#runChildUpdate}.
 * @property {?GroupCallback} [createCallback=null] - Sets {@link Phaser.GameObjects.Group#createCallback}.
 * @property {?GroupCallback} [removeCallback=null] - Sets {@link Phaser.GameObjects.Group#removeCallback}.
 * @property {?GroupMultipleCreateCallback} [createMultipleCallback=null] - Sets {@link Phaser.GameObjects.Group#createMultipleCallback}.
 */
typedef GroupConfig = {
    @:optional var classType:Dynamic;
    @:optional var active:Bool;
    @:optional var maxSize:Float;
    @:optional var defaultKey:String;
    @:optional var defaultFrame:Dynamic;
    @:optional var runChildUpdate:Bool;
    @:optional var createCallback:GroupCallback;
    @:optional var removeCallback:GroupCallback;
    @:optional var createMultipleCallback:GroupMultipleCreateCallback;
};
