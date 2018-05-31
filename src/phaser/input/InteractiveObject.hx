package phaser.input;

typedef InteractiveObject = {
var gameObject:phaser.gameobjects.GameObject;
var enabled:Bool;
var draggable:Bool;
var dropZone:Bool;
var target:phaser.gameobjects.GameObject;
var camera:phaser.cameras.scene2d.Camera;
var hitArea:Dynamic;
var hitAreaCallback:HitAreaCallback;
var localX:Float;
var localY:Float;
var dragState:Dynamic;
var dragStartX:Float;
var dragStartY:Float;
var dragX:Float;
var dragY:Float;
};
