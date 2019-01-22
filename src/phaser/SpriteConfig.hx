package phaser;

/**
 * @typedef {object} SpriteConfig
 * @extends GameObjectConfig
 *
 * @property {string} [key] - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
 * @property {(number|string)} [frame] - An optional frame from the Texture this Game Object is rendering with.
 */
typedef SpriteConfig = {
    @:optional var key:String;
    @:optional var frame:Dynamic;
};
