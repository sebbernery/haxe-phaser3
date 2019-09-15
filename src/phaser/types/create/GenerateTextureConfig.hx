package phaser.types.create;

/**
 * @typedef {object} Phaser.Types.Create.GenerateTextureConfig
 * @since 3.0.0
 *
 * @property {array} [data=[]] - [description]
 * @property {HTMLCanvasElement} [canvas=null] - [description]
 * @property {Phaser.Types.Create.Palette} [palette=Arne16] - [description]
 * @property {number} [pixelWidth=1] - The width of each 'pixel' in the generated texture.
 * @property {number} [pixelHeight=1] - The height of each 'pixel' in the generated texture.
 * @property {boolean} [resizeCanvas=true] - [description]
 * @property {boolean} [clearCanvas=true] - [description]
 * @property {Phaser.Types.Create.GenerateTextureCallback} [preRender] - [description]
 * @property {Phaser.Types.Create.GenerateTextureCallback} [postRender] - [description]
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
