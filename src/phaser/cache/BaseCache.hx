package phaser.cache;

@:native("Phaser.Cache.BaseCache")
extern class BaseCache {
    public function new();
    public var entries:Dynamic;
    public var events:phaser.events.EventEmitter;
    public function add(key:String, data:Dynamic):phaser.cache.BaseCache;
    public function has(key:String):Bool;
    public function exists(key:String):Bool;
    public function get(key:String):Dynamic;
    public function remove(key:String):phaser.cache.BaseCache;
    public function destroy():Void;
}
