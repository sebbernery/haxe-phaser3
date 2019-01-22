package phaser;

/**
 * @typedef {object} GenerateTextureConfig
 *
 * @property {array} [data=[]] - [description]
 * @property {HTMLCanvasElement} [canvas=null] - [description]
 * @property {Palette} [palette=Arne16] - [description]
 * @property {number} [pixelWidth=1] - The width of each 'pixel' in the generated texture.
 * @property {number} [pixelHeight=1] - The height of each 'pixel' in the generated texture.
 * @property {boolean} [resizeCanvas=true] - [description]
 * @property {boolean} [clearCanvas=true] - [description]
 * @property {GenerateTextureRendererCallback} [preRender] - [description]
 * @property {GenerateTextureRendererCallback} [postRender] - [description]
 */
typedef GenerateTextureConfig = {
    @:optional var data:Array<Dynamic>;
    @:optional var canvas:js.html.CanvasElement;
    @:optional var palette:Palette;
    @:optional var pixelWidth:Float;
    @:optional var pixelHeight:Float;
    @:optional var resizeCanvas:Bool;
    @:optional var clearCanvas:Bool;
    @:optional var preRender:GenerateTextureRendererCallback;
    @:optional var postRender:GenerateTextureRendererCallback;
};
