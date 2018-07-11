package phaser.data;

@:native("Phaser.Data.DataManager")
extern class DataManager {
    public function new(parent:Dynamic, eventEmitter:phaser.events.EventEmitter);
    public var parent:Dynamic;
    public var events:phaser.events.EventEmitter;
    public var list:Dynamic;
    public var values:Dynamic;
    public var freeze:Bool;
    public var count:Int;
    public function get(key:Dynamic):Dynamic;
    public function getAll():Dynamic;
    public function query(search:EReg):Dynamic;
    public function set(key:Dynamic, data:Dynamic):phaser.data.DataManager;
    public function each(callback:DataEachCallback, ?context:Dynamic, ?args:Dynamic):phaser.data.DataManager;
    public function merge(data:Dynamic, ?overwrite:Bool):phaser.data.DataManager;
    public function remove(key:Dynamic):phaser.data.DataManager;
    public function pop(key:String):Dynamic;
    public function has(key:String):Bool;
    public function setFreeze(value:Bool):phaser.data.DataManager;
    public function reset():phaser.data.DataManager;
    public function destroy():Void;
}
