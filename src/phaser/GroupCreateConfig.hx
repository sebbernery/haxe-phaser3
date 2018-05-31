package phaser;

typedef GroupCreateConfig = {
    @:optional var classType:Dynamic;
    @:optional var key:String;
    @:optional var frame:Dynamic;
    @:optional var visible:Bool;
    @:optional var active:Bool;
    @:optional var repeat:Float;
    @:optional var randomKey:Bool;
    @:optional var randomFrame:Bool;
    @:optional var yoyo:Bool;
    @:optional var frameQuantity:Float;
    @:optional var max:Float;
    @:optional var setXY:Dynamic;
    @:optional var setRotation:Dynamic;
    @:optional var setScale:Dynamic;
    @:optional var setAlpha:Dynamic;
    @:optional var hitArea:Dynamic;
    @:optional var hitAreaCallback:HitAreaCallback;
    @:optional var gridAlign:Dynamic;
};
