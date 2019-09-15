package phaser.types.gameobjects.graphics;

/**
 * @typedef {object} Phaser.Types.GameObjects.Graphics.RoundedRectRadius
 * @since 3.11.0
 *
 * @property {number} [tl=20] - Top left
 * @property {number} [tr=20] - Top right
 * @property {number} [br=20] - Bottom right
 * @property {number} [bl=20] - Bottom left
 */
typedef RoundedRectRadius = {
    @:optional var tl:Float;
    @:optional var tr:Float;
    @:optional var br:Float;
    @:optional var bl:Float;
};
