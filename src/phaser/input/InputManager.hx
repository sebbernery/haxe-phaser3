package phaser.input;

@:native("Phaser.Input.InputManager")
extern class InputManager {
    public function new(game:phaser.Game, config:Dynamic);
    public var game:phaser.Game;
    public var canvas:js.html.CanvasElement;
    public var config:Dynamic;
    public var enabled:Bool;
    public var events:phaser.events.EventEmitter;
    public var queue:Array<Dynamic>;
    public var defaultCursor:String;
    public var mouse:phaser.input.mouse.MouseManager;
    public var touch:phaser.input.touch.TouchManager;
    public var pointers:Array<phaser.input.Pointer>;
    public var pointersTotal:Int;
    public var mousePointer:phaser.input.Pointer;
    public var activePointer:phaser.input.Pointer;
    public var dirty:Bool;
    public var scale:Dynamic;
    public var globalTopOnly:Bool;
    public var ignoreEvents:Bool;
    public var bounds:phaser.geom.Rectangle;
    public function boot():Void;
    public function updateBounds():Void;
    public function resize():Void;
    public function setDefaultCursor(cursor:String):Void;
    public function addPointer(?quantity:Int):Array<phaser.input.Pointer>;
    public function addUpCallback(callback:Dynamic, ?isOnce:Bool):Dynamic;
    public function addDownCallback(callback:Dynamic, ?isOnce:Bool):Dynamic;
    public function addMoveCallback(callback:Dynamic, ?isOnce:Bool):Dynamic;
    public function hitTest(pointer:phaser.input.Pointer, gameObjects:Array<Dynamic>, camera:phaser.cameras.scene2d.Camera, ?output:Array<Dynamic>):Array<Dynamic>;
    public function pointWithinHitArea(gameObject:phaser.gameobjects.GameObject, x:Float, y:Float):Bool;
    public function pointWithinInteractiveObject(object:phaser.input.InteractiveObject, x:Float, y:Float):Bool;
    public function transformPointer(pointer:phaser.input.Pointer, pageX:Float, pageY:Float):Void;
    public function transformX(pageX:Float):Float;
    public function transformY(pageY:Float):Float;
    public function getOffsetX():Float;
    public function getOffsetY():Float;
    public function getScaleX():Float;
    public function getScaleY():Float;
    public function destroy():Void;
}
