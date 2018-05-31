package phaser;

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
