package phaser.types.create;

/**
 * @typedef {object} Phaser.Types.Create.GenerateTextureConfig
 * @since 3.0.0
 *
 * @property {array} [data=[]] - An array of data, where each row is a string of single values 0-9A-F, or the period character.
 * @property {HTMLCanvasElement} [canvas=null] - The HTML Canvas to draw the texture to.
 * @property {Phaser.Types.Create.Palette} [palette=Arne16] - The indexed palette that the data cell values map to.
 * @property {number} [pixelWidth=1] - The width of each 'pixel' in the generated texture.
 * @property {number} [pixelHeight=1] - The height of each 'pixel' in the generated texture.
 * @property {boolean} [resizeCanvas=true] - Should the canvas be resized before the texture is drawn?
 * @property {boolean} [clearCanvas=true] - Should the canvas be cleared before the texture is drawn?
 * @property {Phaser.Types.Create.GenerateTextureCallback} [preRender] - A callback to send the canvas to prior to the texture being drawn.
 * @property {Phaser.Types.Create.GenerateTextureCallback} [postRender] - A callback to send the canvas to after the texture has been drawn.
 */
typedef GenerateTextureConfig = {
    @:optional var data:Array<Dynamic>;
    @:optional var canvas:js.html.CanvasElement;
    @:optional var palette:phaser.types.create.Palette;
    @:optional var pixelWidth:Float;
    @:optional var pixelHeight:Float;
    @:optional var resizeCanvas:Bool;
    @:optional var clearCanvas:Bool;
    @:optional var preRender:phaser.types.create.GenerateTextureCallback;
    @:optional var postRender:phaser.types.create.GenerateTextureCallback;
};
