package phaser.events;

@:native("Phaser.Events.EventEmitter")
extern class EventEmitter {
    public function new();
    public function shutdown():Void;
    public function destroy():Void;
    public function eventNames():Array<Dynamic>;
    public function listeners(event:Dynamic):Array<Dynamic>;
    public function listenerCount(event:Dynamic):Float;
    public function emit(event:Dynamic, ?args:Dynamic):Bool;
    public function on(event:Dynamic, fn:Dynamic, ?context:Dynamic):phaser.events.EventEmitter;
    public function addListener(event:Dynamic, fn:Dynamic, ?context:Dynamic):phaser.events.EventEmitter;
    public function once(event:Dynamic, fn:Dynamic, ?context:Dynamic):phaser.events.EventEmitter;
    public function removeListener(event:Dynamic, fn:Dynamic, context:Dynamic, once:Bool):phaser.events.EventEmitter;
    public function off(event:Dynamic, fn:Dynamic, context:Dynamic, once:Bool):phaser.events.EventEmitter;
    public function removeAllListeners(?event:Dynamic):phaser.events.EventEmitter;
}
