package phaser.types.gameobjects.graphics;

/**
 * Graphics fill style settings.
 *
 * @typedef {object} Phaser.Types.GameObjects.Graphics.FillStyle
 * @since 3.0.0
 *
 * @property {number} [color] - The fill color.
 * @property {number} [alpha] - The fill alpha.
 */
typedef FillStyle = {
    @:optional var color:Float;
    @:optional var alpha:Float;
};
