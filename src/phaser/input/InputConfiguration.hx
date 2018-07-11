package phaser.input;

typedef InputConfiguration = {
    @:optional var hitArea:Dynamic;
    @:optional var hitAreaCallback:Dynamic;
    @:optional var draggable:Bool;
    @:optional var dropZone:Bool;
    @:optional var useHandCursor:Bool;
    @:optional var cursor:String;
    @:optional var pixelPerfect:Bool;
    @:optional var alphaTolerance:Int;
};
