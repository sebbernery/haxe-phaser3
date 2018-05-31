package phaser;

typedef GroupConfig = {
    @:optional var classType:Dynamic;
    @:optional var active:Bool;
    @:optional var maxSize:Float;
    @:optional var defaultKey:String;
    @:optional var defaultFrame:Dynamic;
    @:optional var runChildUpdate:Bool;
    @:optional var createCallback:GroupCallback;
    @:optional var removeCallback:GroupCallback;
    @:optional var createMultipleCallback:GroupMultipleCreateCallback;
};
