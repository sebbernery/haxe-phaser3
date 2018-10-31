package phaser.input;

@:native("Phaser.Input.Pointer")
extern class Pointer {
    public function new(manager:phaser.input.InputManager, id:Int);
    public var manager:phaser.input.InputManager;
    public var id:Int;
    public var event:Dynamic;
    public var camera:phaser.cameras.scene2d.Camera;
    public var buttons:Int;
    public var position:phaser.math.Vector2;
    public var prevPosition:phaser.math.Vector2;
    public var worldX:Float;
    public var worldY:Float;
    public var downX:Float;
    public var downY:Float;
    public var downTime:Float;
    public var upX:Float;
    public var upY:Float;
    public var upTime:Float;
    public var primaryDown:Bool;
    public var dragState:Float;
    public var isDown:Bool;
    public var dirty:Bool;
    public var justDown:Bool;
    public var justUp:Bool;
    public var justMoved:Bool;
    public var wasTouch:Bool;
    public var movementX:Float;
    public var movementY:Float;
    public var identifier:Float;
    public var pointerId:Float;
    public var active:Bool;
    public var x:Float;
    public var y:Float;
    public function positionToCamera(camera:phaser.cameras.scene2d.Camera, ?output:Dynamic):phaser.math.Vector2;
    public function noButtonDown():Bool;
    public function leftButtonDown():Bool;
    public function rightButtonDown():Bool;
    public function middleButtonDown():Bool;
    public function backButtonDown():Bool;
    public function forwardButtonDown():Bool;
    public function getDistance():Float;
    public function getInterpolatedPosition(?steps:Int, ?out:Array<Dynamic>):Array<Dynamic>;
    public function destroy():Void;
}
