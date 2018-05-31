package phaser.dom;

@:native("Phaser.DOM.RequestAnimationFrame")
extern class RequestAnimationFrame {
    public function new();
    public var isRunning:Bool;
    public var callback:Dynamic;
    public var tick:Float;
    public var isSetTimeOut:Bool;
    public var timeOutID:Float;
    public var lastTime:Float;
    public var step:Dynamic;
    public var stepTimeout:Dynamic;
    public function start(callback:Dynamic, forceSetTimeOut:Bool):Void;
    public function stop():Void;
    public function destroy():Void;
}
