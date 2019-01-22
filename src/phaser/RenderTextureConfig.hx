package phaser;

/**
 * @typedef {object} RenderTextureConfig
 *
 * @property {number} [x=0] - The x coordinate of the RenderTexture's position.
 * @property {number} [y=0] - The y coordinate of the RenderTexture's position.
 * @property {number} [width=32] - The width of the RenderTexture.
 * @property {number} [height=32] - The height of the RenderTexture.
 */
typedef RenderTextureConfig = {
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var width:Float;
    @:optional var height:Float;
};
