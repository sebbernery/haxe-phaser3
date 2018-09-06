package phaser;

typedef InputConfig = {
    @:optional var keyboard:Dynamic;
    @:optional var mouse:Dynamic;
    @:optional var touch:Dynamic;
    @:optional var gamepad:Dynamic;
    @:optional var activePointers:Int;
};
