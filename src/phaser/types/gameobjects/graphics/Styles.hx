package phaser.types.gameobjects.graphics;

/**
 * Graphics style settings.
 *
 * @typedef {object} Phaser.Types.GameObjects.Graphics.Styles
 * @since 3.0.0
 *
 * @property {Phaser.Types.GameObjects.Graphics.LineStyle} [lineStyle] - The style applied to shape outlines.
 * @property {Phaser.Types.GameObjects.Graphics.FillStyle} [fillStyle] - The style applied to shape areas.
 */
typedef Styles = {
    @:optional var lineStyle:phaser.types.gameobjects.graphics.LineStyle;
    @:optional var fillStyle:phaser.types.gameobjects.graphics.FillStyle;
};
