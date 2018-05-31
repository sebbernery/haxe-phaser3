package phaser;

typedef LoaderConfig = {
    @:optional var baseURL:String;
    @:optional var path:String;
    @:optional var maxParallelDownloads:Int;
    @:optional var crossOrigin:Dynamic;
    @:optional var responseType:String;
    @:optional var async:Bool;
    @:optional var user:String;
    @:optional var password:String;
    @:optional var timeout:Int;
};
