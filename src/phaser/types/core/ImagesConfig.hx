package phaser.types.core;

/**
 * @typedef {object} Phaser.Types.Core.ImagesConfig
 * @since 3.0.0
 *
 * @property {string} [default] - URL to use for the 'default' texture.
 * @property {string} [missing] - URL to use for the 'missing' texture.
 */
typedef ImagesConfig = {
    @:optional @:native('default') var default_:String;
    @:optional var missing:String;
};
