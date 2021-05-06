package phaser.types.gameobjects.group;

/**
 * @typedef {object} Phaser.Types.GameObjects.Group.GroupConfig
 * @since 3.0.0
 *
 * @property {?Function} [classType=Sprite] - Sets {@link Phaser.GameObjects.Group#classType}.
 * @property {?string} [name=''] - Sets {@link Phaser.GameObjects.Group#name}.
 * @property {?boolean} [active=true] - Sets {@link Phaser.GameObjects.Group#active}.
 * @property {?number} [maxSize=-1] - Sets {@link Phaser.GameObjects.Group#maxSize}.
 * @property {?string} [defaultKey=null] - Sets {@link Phaser.GameObjects.Group#defaultKey}.
 * @property {?(string|number)} [defaultFrame=null] - Sets {@link Phaser.GameObjects.Group#defaultFrame}.
 * @property {?boolean} [runChildUpdate=false] - Sets {@link Phaser.GameObjects.Group#runChildUpdate}.
 * @property {?Phaser.Types.GameObjects.Group.GroupCallback} [createCallback=null] - Sets {@link Phaser.GameObjects.Group#createCallback}.
 * @property {?Phaser.Types.GameObjects.Group.GroupCallback} [removeCallback=null] - Sets {@link Phaser.GameObjects.Group#removeCallback}.
 * @property {?Phaser.Types.GameObjects.Group.GroupMultipleCreateCallback} [createMultipleCallback=null] - Sets {@link Phaser.GameObjects.Group#createMultipleCallback}.
 */
typedef GroupConfig = {
    @:optional var classType:Dynamic;
    @:optional var name:String;
    @:optional var active:Bool;
    @:optional var maxSize:Float;
    @:optional var defaultKey:String;
    @:optional var defaultFrame:Dynamic;
    @:optional var runChildUpdate:Bool;
    @:optional var createCallback:phaser.types.gameobjects.group.GroupCallback;
    @:optional var removeCallback:phaser.types.gameobjects.group.GroupCallback;
    @:optional var createMultipleCallback:phaser.types.gameobjects.group.GroupMultipleCreateCallback;
};
