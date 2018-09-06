package phaser;

typedef RenderConfig = {
    @:optional var antialias:Bool;
    @:optional var pixelArt:Bool;
    @:optional var autoResize:Bool;
    @:optional var roundPixels:Bool;
    @:optional var transparent:Bool;
    @:optional var clearBeforeRender:Bool;
    @:optional var premultipliedAlpha:Bool;
    @:optional var preserveDrawingBuffer:Bool;
    @:optional var failIfMajorPerformanceCaveat:Bool;
    @:optional var powerPreference:String;
    @:optional var batchSize:Int;
};
