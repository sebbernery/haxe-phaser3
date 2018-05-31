package phaser.scenes.sceneplugin;

typedef SceneTransitionConfig = {
var target:String;
    @:optional var duration:Int;
    @:optional var sleep:Bool;
    @:optional var allowInput:Bool;
    @:optional var moveAbove:Bool;
    @:optional var moveBelow:Bool;
    @:optional var onUpdate:Dynamic;
    @:optional var onUpdateScope:Dynamic;
    @:optional var data:Dynamic;
};
