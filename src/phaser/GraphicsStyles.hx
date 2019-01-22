package phaser;

/**
 * Graphics style settings.
 *
 * @typedef {object} GraphicsStyles
 *
 * @property {GraphicsLineStyle} [lineStyle] - The style applied to shape outlines.
 * @property {GraphicsFillStyle} [fillStyle] - The style applied to shape areas.
 */
typedef GraphicsStyles = {
    @:optional var lineStyle:GraphicsLineStyle;
    @:optional var fillStyle:GraphicsFillStyle;
};
