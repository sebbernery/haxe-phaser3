package phaser.types.core;

/**
 * @typedef {object} Phaser.Types.Core.WidthHeight
 * @since 3.16.0
 *
 * @property {integer} [width=0] - The width.
 * @property {integer} [height=0] - The height.
 */
typedef WidthHeight = {
    @:optional var width:Int;
    @:optional var height:Int;
};
