package phaser.structs;

/**
 * @classdesc
 * The keys of a Map can be arbitrary values.
 *
 * ```javascript
 * var map = new Map([
 *    [ 1, 'one' ],
 *    [ 2, 'two' ],
 *    [ 3, 'three' ]
 * ]);
 * ```
 *
 * @class Map
 * @memberof Phaser.Structs
 * @constructor
 * @since 3.0.0
 *
 * @generic K
 * @generic V
 * @genericUse {V[]} - [elements]
 *
 * @param {Array.<*>} elements - An optional array of key-value pairs to populate this Map with.
 */
@:native("Phaser.Structs.Map")
extern class Map {
    public function new(elements:Array<Dynamic>);
    /**
     * The entries in this Map.
     *
     * @genericUse {Object.<string, V>} - [$type]
     *
     * @name Phaser.Structs.Map#entries
     * @type {Object.<string, *>}
     * @default {}
     * @since 3.0.0
     */
    public var entries:Dynamic;
    /**
     * The number of key / value pairs in this Map.
     *
     * @name Phaser.Structs.Map#size
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var size:Float;
    /**
     * Adds an element with a specified `key` and `value` to this Map.
     * If the `key` already exists, the value will be replaced.
     *
     * @method Phaser.Structs.Map#set
     * @since 3.0.0
     *
     * @genericUse {K} - [key]
     * @genericUse {V} - [value]
     * @genericUse {Phaser.Structs.Map.<K, V>} - [$return]
     *
     * @param {string} key - The key of the element to be added to this Map.
     * @param {*} value - The value of the element to be added to this Map.
     *
     * @return {Phaser.Structs.Map} This Map object.
     */
    public function set(key:String, value:Dynamic):phaser.structs.Map;
    /**
     * Returns the value associated to the `key`, or `undefined` if there is none.
     *
     * @method Phaser.Structs.Map#get
     * @since 3.0.0
     *
     * @genericUse {K} - [key]
     * @genericUse {V} - [$return]
     *
     * @param {string} key - The key of the element to return from the `Map` object.
     *
     * @return {*} The element associated with the specified key or `undefined` if the key can't be found in this Map object.
     */
    public function get(key:String):Dynamic;
    /**
     * Returns an `Array` of all the values stored in this Map.
     *
     * @method Phaser.Structs.Map#getArray
     * @since 3.0.0
     *
     * @genericUse {V[]} - [$return]
     *
     * @return {Array.<*>} An array of the values stored in this Map.
     */
    public function getArray():Array<Dynamic>;
    /**
     * Returns a boolean indicating whether an element with the specified key exists or not.
     *
     * @method Phaser.Structs.Map#has
     * @since 3.0.0
     *
     * @genericUse {K} - [key]
     *
     * @param {string} key - The key of the element to test for presence of in this Map.
     *
     * @return {boolean} Returns `true` if an element with the specified key exists in this Map, otherwise `false`.
     */
    public function has(key:String):Bool;
    /**
     * Delete the specified element from this Map.
     *
     * @method Phaser.Structs.Map#delete
     * @since 3.0.0
     *
     * @genericUse {K} - [key]
     * @genericUse {Phaser.Structs.Map.<K, V>} - [$return]
     *
     * @param {string} key - The key of the element to delete from this Map.
     *
     * @return {Phaser.Structs.Map} This Map object.
     */
    public function delete(key:String):phaser.structs.Map;
    /**
     * Delete all entries from this Map.
     *
     * @method Phaser.Structs.Map#clear
     * @since 3.0.0
     *
     * @genericUse {Phaser.Structs.Map.<K, V>} - [$return]
     *
     * @return {Phaser.Structs.Map} This Map object.
     */
    public function clear():phaser.structs.Map;
    /**
     * Returns all entries keys in this Map.
     *
     * @method Phaser.Structs.Map#keys
     * @since 3.0.0
     *
     * @genericUse {K[]} - [$return]
     *
     * @return {string[]} Array containing entries' keys.
     */
    public function keys():Array<String>;
    /**
     * Returns an `Array` of all entries.
     *
     * @method Phaser.Structs.Map#values
     * @since 3.0.0
     *
     * @genericUse {V[]} - [$return]
     *
     * @return {Array.<*>} An `Array` of entries.
     */
    public function values():Array<Dynamic>;
    /**
     * Dumps the contents of this Map to the console via `console.group`.
     *
     * @method Phaser.Structs.Map#dump
     * @since 3.0.0
     */
    public function dump():Void;
    /**
     * Iterates through all entries in this Map, passing each one to the given callback.
     *
     * If the callback returns `false`, the iteration will break.
     *
     * @method Phaser.Structs.Map#each
     * @since 3.0.0
     *
     * @genericUse {EachMapCallback.<V>} - [callback]
     * @genericUse {Phaser.Structs.Map.<K, V>} - [$return]
     *
     * @param {EachMapCallback} callback - The callback which will receive the keys and entries held in this Map.
     *
     * @return {Phaser.Structs.Map} This Map object.
     */
    public function each(callback:EachMapCallback):phaser.structs.Map;
    /**
     * Returns `true` if the value exists within this Map. Otherwise, returns `false`.
     *
     * @method Phaser.Structs.Map#contains
     * @since 3.0.0
     *
     * @genericUse {V} - [value]
     *
     * @param {*} value - The value to search for.
     *
     * @return {boolean} `true` if the value is found, otherwise `false`.
     */
    public function contains(value:Dynamic):Bool;
    /**
     * Merges all new keys from the given Map into this one.
     * If it encounters a key that already exists it will be skipped unless override is set to `true`.
     *
     * @method Phaser.Structs.Map#merge
     * @since 3.0.0
     *
     * @genericUse {Phaser.Structs.Map.<K, V>} - [map,$return]
     *
     * @param {Phaser.Structs.Map} map - The Map to merge in to this Map.
     * @param {boolean} [override=false] - Set to `true` to replace values in this Map with those from the source map, or `false` to skip them.
     *
     * @return {Phaser.Structs.Map} This Map object.
     */
    public function merge(map:phaser.structs.Map, ?override:Bool):phaser.structs.Map;
}
