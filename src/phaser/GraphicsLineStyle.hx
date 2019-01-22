package phaser;

/**
 * Graphics line style (or stroke style) settings.
 *
 * @typedef {object} GraphicsLineStyle
 *
 * @property {number} [width] - The stroke width.
 * @property {number} [color] - The stroke color.
 * @property {number} [alpha] - The stroke alpha.
 */
typedef GraphicsLineStyle = {
    @:optional var width:Float;
    @:optional var color:Float;
    @:optional var alpha:Float;
};
