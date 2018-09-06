package phaser.cache;

@:native("Phaser.Cache.CacheManager")
extern class CacheManager {
    public function new(game:phaser.Game);
    public var game:phaser.Game;
    public var binary:phaser.cache.BaseCache;
    public var bitmapFont:phaser.cache.BaseCache;
    public var json:phaser.cache.BaseCache;
    public var physics:phaser.cache.BaseCache;
    public var shader:phaser.cache.BaseCache;
    public var audio:phaser.cache.BaseCache;
    public var text:phaser.cache.BaseCache;
    public var html:phaser.cache.BaseCache;
    public var obj:phaser.cache.BaseCache;
    public var tilemap:phaser.cache.BaseCache;
    public var xml:phaser.cache.BaseCache;
    public var custom:Dynamic;
    public function addCustom(key:String):phaser.cache.BaseCache;
    public function destroy():Void;
}
