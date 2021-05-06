package phaser.types.gameobjects.graphics;

/**
 * Options for the Graphics Game Object.
 *
 * @typedef {object} Phaser.Types.GameObjects.Graphics.Options
 * @extends Phaser.Types.GameObjects.Graphics.Styles
 * @since 3.0.0
 *
 * @property {number} [x] - The x coordinate of the Graphics.
 * @property {number} [y] - The y coordinate of the Graphics.
 */
typedef Options = {
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var lineStyle:phaser.types.gameobjects.graphics.LineStyle;
    @:optional var fillStyle:phaser.types.gameobjects.graphics.FillStyle;
};
