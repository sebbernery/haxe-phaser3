package phaser;

typedef GameConfig = {
    @:optional var width:Dynamic;
    @:optional var height:Dynamic;
    @:optional var zoom:Float;
    @:optional var resolution:Float;
    @:optional var type:Int;
    @:optional var parent:Dynamic;
    @:optional var canvas:js.html.CanvasElement;
    @:optional var canvasStyle:String;
    @:optional var context:js.html.CanvasRenderingContext2D;
    @:optional var scene:Dynamic;
    @:optional var seed:Array<String>;
    @:optional var title:String;
    @:optional var url:String;
    @:optional var version:String;
    @:optional var autoFocus:Bool;
    @:optional var input:Dynamic;
    @:optional var disableContextMenu:Bool;
    @:optional var banner:Dynamic;
    @:optional var fps:FPSConfig;
    @:optional var backgroundColor:Dynamic;
    @:optional var callbacks:Dynamic;
    @:optional var loader:LoaderConfig;
    @:optional var images:Dynamic;
    @:optional var physics:Dynamic;
};
