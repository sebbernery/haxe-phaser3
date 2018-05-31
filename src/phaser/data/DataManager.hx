package phaser.data;

@:native("Phaser.Data.DataManager")
extern class DataManager {
    public function new(parent:Dynamic, eventEmitter:phaser.events.EventEmitter);
    public var parent:Dynamic;
    public var events:phaser.events.EventEmitter;
    public var list:Dynamic;
    public var blockSet:Bool;
    public var freeze:Bool;
    public var count:Int;
    public function get(key:String):Dynamic;
    public function getAll():Dynamic;
    public function query(search:String):Dynamic;
    public function set(key:String, data:Dynamic):phaser.data.DataManager;
    public function each(callback:DataEachCallback, ?scope:Dynamic, ?args:Dynamic):phaser.data.DataManager;
    public function merge(data:Dynamic, overwrite:Bool):phaser.data.DataManager;
    public function remove(key:String):phaser.data.DataManager;
    public function pop(key:String):Dynamic;
    public function has(key:String):Bool;
    public function setFreeze(value:Bool):phaser.data.DataManager;
    public function reset():phaser.data.DataManager;
    public function destroy():Void;
}
