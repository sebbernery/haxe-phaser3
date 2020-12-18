package phaser.cache;

/**
 * @classdesc
 * The BaseCache is a base Cache class that can be used for storing references to any kind of data.
 *
 * Data can be added, retrieved and removed based on the given keys.
 *
 * Keys are string-based.
 *
 * @class BaseCache
 * @memberof Phaser.Cache
 * @constructor
 * @since 3.0.0
 */
@:native("Phaser.Cache.BaseCache")
extern class BaseCache {
    public function new();
    /**
     * The Map in which the cache objects are stored.
     *
     * You can query the Map directly or use the BaseCache methods.
     *
     * @name Phaser.Cache.BaseCache#entries
     * @type {Phaser.Structs.Map.<String, *>}
     * @since 3.0.0
     */
    public var entries:Dynamic;
    /**
     * An instance of EventEmitter used by the cache to emit related events.
     *
     * @name Phaser.Cache.BaseCache#events
     * @type {Phaser.Events.EventEmitter}
     * @since 3.0.0
     */
    public var events:phaser.events.EventEmitter;
    /**
     * Adds an item to this cache. The item is referenced by a unique string, which you are responsible
     * for setting and keeping track of. The item can only be retrieved by using this string.
     *
     * @method Phaser.Cache.BaseCache#add
     * @fires Phaser.Cache.Events#ADD
     * @since 3.0.0
     *
     * @param {string} key - The unique key by which the data added to the cache will be referenced.
     * @param {*} data - The data to be stored in the cache.
     *
     * @return {this} This BaseCache object.
     */
    public function add(key:String, data:Dynamic):Dynamic;
    /**
     * Checks if this cache contains an item matching the given key.
     * This performs the same action as `BaseCache.exists`.
     *
     * @method Phaser.Cache.BaseCache#has
     * @since 3.0.0
     *
     * @param {string} key - The unique key of the item to be checked in this cache.
     *
     * @return {boolean} Returns `true` if the cache contains an item matching the given key, otherwise `false`.
     */
    public function has(key:String):Bool;
    /**
     * Checks if this cache contains an item matching the given key.
     * This performs the same action as `BaseCache.has` and is called directly by the Loader.
     *
     * @method Phaser.Cache.BaseCache#exists
     * @since 3.7.0
     *
     * @param {string} key - The unique key of the item to be checked in this cache.
     *
     * @return {boolean} Returns `true` if the cache contains an item matching the given key, otherwise `false`.
     */
    public function exists(key:String):Bool;
    /**
     * Gets an item from this cache based on the given key.
     *
     * @method Phaser.Cache.BaseCache#get
     * @since 3.0.0
     *
     * @param {string} key - The unique key of the item to be retrieved from this cache.
     *
     * @return {*} The item in the cache, or `null` if no item matching the given key was found.
     */
    public function get(key:String):Dynamic;
    /**
     * Removes and item from this cache based on the given key.
     *
     * If an entry matching the key is found it is removed from the cache and a `remove` event emitted.
     * No additional checks are done on the item removed. If other systems or parts of your game code
     * are relying on this item, it is up to you to sever those relationships prior to removing the item.
     *
     * @method Phaser.Cache.BaseCache#remove
     * @fires Phaser.Cache.Events#REMOVE
     * @since 3.0.0
     *
     * @param {string} key - The unique key of the item to remove from the cache.
     *
     * @return {this} This BaseCache object.
     */
    public function remove(key:String):Dynamic;
    /**
     * Returns all keys in use in this cache.
     *
     * @method Phaser.Cache.BaseCache#getKeys
     * @since 3.17.0
     *
     * @return {string[]} Array containing all the keys.
     */
    public function getKeys():Array<String>;
    /**
     * Destroys this cache and all items within it.
     *
     * @method Phaser.Cache.BaseCache#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
