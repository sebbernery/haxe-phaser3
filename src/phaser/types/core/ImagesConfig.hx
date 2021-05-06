package phaser.types.core;

/**
 * @typedef {object} Phaser.Types.Core.ImagesConfig
 * @since 3.0.0
 *
 * @property {string} [default] - A base64 encoded image file to use as the 'default' texture.
 * @property {string} [missing] - A base64 encoded image file to use as the 'missing' texture.
 * @property {string} [white] - A base64 encoded image file to use as the 'white' texture.
 */
typedef ImagesConfig = {
    @:optional @:native('default') var default_:String;
    @:optional var missing:String;
    @:optional var white:String;
};
