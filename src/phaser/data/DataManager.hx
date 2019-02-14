package phaser.data;

/**
 * @classdesc
 * The Data Manager Component features a means to store pieces of data specific to a Game Object, System or Plugin.
 * You can then search, query it, and retrieve the data. The parent must either extend EventEmitter,
 * or have a property called `events` that is an instance of it.
 *
 * @class DataManager
 * @memberof Phaser.Data
 * @constructor
 * @since 3.0.0
 *
 * @param {object} parent - The object that this DataManager belongs to.
 * @param {Phaser.Events.EventEmitter} eventEmitter - The DataManager's event emitter.
 */
@:native("Phaser.Data.DataManager")
extern class DataManager {
    public function new(parent:Dynamic, eventEmitter:phaser.events.EventEmitter);
    /**
     * The object that this DataManager belongs to.
     *
     * @name Phaser.Data.DataManager#parent
     * @type {*}
     * @since 3.0.0
     */
    public var parent:Dynamic;
    /**
     * The DataManager's event emitter.
     *
     * @name Phaser.Data.DataManager#events
     * @type {Phaser.Events.EventEmitter}
     * @since 3.0.0
     */
    public var events:phaser.events.EventEmitter;
    /**
     * The data list.
     *
     * @name Phaser.Data.DataManager#list
     * @type {Object.<string, *>}
     * @default {}
     * @since 3.0.0
     */
    public var list:Dynamic;
    /**
     * The public values list. You can use this to access anything you have stored
     * in this Data Manager. For example, if you set a value called `gold` you can
     * access it via:
     *
     * ```javascript
     * this.data.values.gold;
     * ```
     *
     * You can also modify it directly:
     *
     * ```javascript
     * this.data.values.gold += 1000;
     * ```
     *
     * Doing so will emit a `setdata` event from the parent of this Data Manager.
     *
     * Do not modify this object directly. Adding properties directly to this object will not
     * emit any events. Always use `DataManager.set` to create new items the first time around.
     *
     * @name Phaser.Data.DataManager#values
     * @type {Object.<string, *>}
     * @default {}
     * @since 3.10.0
     */
    public var values:Dynamic;
    /**
     * Gets or sets the frozen state of this Data Manager.
     * A frozen Data Manager will block all attempts to create new values or update existing ones.
     *
     * @name Phaser.Data.DataManager#freeze
     * @type {boolean}
     * @since 3.0.0
     */
    public var freeze:Bool;
    /**
     * Return the total number of entries in this Data Manager.
     *
     * @name Phaser.Data.DataManager#count
     * @type {integer}
     * @since 3.0.0
     */
    public var count:Int;
    /**
     * Retrieves the value for the given key, or undefined if it doesn't exist.
     *
     * You can also access values via the `values` object. For example, if you had a key called `gold` you can do either:
     *
     * ```javascript
     * this.data.get('gold');
     * ```
     *
     * Or access the value directly:
     *
     * ```javascript
     * this.data.values.gold;
     * ```
     *
     * You can also pass in an array of keys, in which case an array of values will be returned:
     *
     * ```javascript
     * this.data.get([ 'gold', 'armor', 'health' ]);
     * ```
     *
     * This approach is useful for destructuring arrays in ES6.
     *
     * @method Phaser.Data.DataManager#get
     * @since 3.0.0
     *
     * @param {(string|string[])} key - The key of the value to retrieve, or an array of keys.
     *
     * @return {*} The value belonging to the given key, or an array of values, the order of which will match the input array.
     */
    public function get(key:Dynamic):Dynamic;
    /**
     * Retrieves all data values in a new object.
     *
     * @method Phaser.Data.DataManager#getAll
     * @since 3.0.0
     *
     * @return {Object.<string, *>} All data values.
     */
    public function getAll():Dynamic;
    /**
     * Queries the DataManager for the values of keys matching the given regular expression.
     *
     * @method Phaser.Data.DataManager#query
     * @since 3.0.0
     *
     * @param {RegExp} search - A regular expression object. If a non-RegExp object obj is passed, it is implicitly converted to a RegExp by using new RegExp(obj).
     *
     * @return {Object.<string, *>} The values of the keys matching the search string.
     */
    public function query(search:EReg):Dynamic;
    /**
     * Sets a value for the given key. If the key doesn't already exist in the Data Manager then it is created.
     *
     * ```javascript
     * data.set('name', 'Red Gem Stone');
     * ```
     *
     * You can also pass in an object of key value pairs as the first argument:
     *
     * ```javascript
     * data.set({ name: 'Red Gem Stone', level: 2, owner: 'Link', gold: 50 });
     * ```
     *
     * To get a value back again you can call `get`:
     *
     * ```javascript
     * data.get('gold');
     * ```
     *
     * Or you can access the value directly via the `values` property, where it works like any other variable:
     *
     * ```javascript
     * data.values.gold += 50;
     * ```
     *
     * When the value is first set, a `setdata` event is emitted.
     *
     * If the key already exists, a `changedata` event is emitted instead, along an event named after the key.
     * For example, if you updated an existing key called `PlayerLives` then it would emit the event `changedata-PlayerLives`.
     * These events will be emitted regardless if you use this method to set the value, or the direct `values` setter.
     *
     * Please note that the data keys are case-sensitive and must be valid JavaScript Object property strings.
     * This means the keys `gold` and `Gold` are treated as two unique values within the Data Manager.
     *
     * @method Phaser.Data.DataManager#set
     * @fires Phaser.Data.Events#SET_DATA
     * @fires Phaser.Data.Events#CHANGE_DATA
     * @fires Phaser.Data.Events#CHANGE_DATA_KEY
     * @since 3.0.0
     *
     * @param {(string|object)} key - The key to set the value for. Or an object or key value pairs. If an object the `data` argument is ignored.
     * @param {*} data - The value to set for the given key. If an object is provided as the key this argument is ignored.
     *
     * @return {Phaser.Data.DataManager} This DataManager object.
     */
    public function set(key:Dynamic, data:Dynamic):phaser.data.DataManager;
    /**
     * Passes all data entries to the given callback.
     *
     * @method Phaser.Data.DataManager#each
     * @since 3.0.0
     *
     * @param {DataEachCallback} callback - The function to call.
     * @param {*} [context] - Value to use as `this` when executing callback.
     * @param {...*} [args] - Additional arguments that will be passed to the callback, after the game object, key, and data.
     *
     * @return {Phaser.Data.DataManager} This DataManager object.
     */
    public function each(callback:DataEachCallback, ?context:Dynamic, ?args:Dynamic):phaser.data.DataManager;
    /**
     * Merge the given object of key value pairs into this DataManager.
     *
     * Any newly created values will emit a `setdata` event. Any updated values (see the `overwrite` argument)
     * will emit a `changedata` event.
     *
     * @method Phaser.Data.DataManager#merge
     * @fires Phaser.Data.Events#SET_DATA
     * @fires Phaser.Data.Events#CHANGE_DATA
     * @fires Phaser.Data.Events#CHANGE_DATA_KEY
     * @since 3.0.0
     *
     * @param {Object.<string, *>} data - The data to merge.
     * @param {boolean} [overwrite=true] - Whether to overwrite existing data. Defaults to true.
     *
     * @return {Phaser.Data.DataManager} This DataManager object.
     */
    public function merge(data:Dynamic, ?overwrite:Bool):phaser.data.DataManager;
    /**
     * Remove the value for the given key.
     *
     * If the key is found in this Data Manager it is removed from the internal lists and a
     * `removedata` event is emitted.
     *
     * You can also pass in an array of keys, in which case all keys in the array will be removed:
     *
     * ```javascript
     * this.data.remove([ 'gold', 'armor', 'health' ]);
     * ```
     *
     * @method Phaser.Data.DataManager#remove
     * @fires Phaser.Data.Events#REMOVE_DATA
     * @since 3.0.0
     *
     * @param {(string|string[])} key - The key to remove, or an array of keys to remove.
     *
     * @return {Phaser.Data.DataManager} This DataManager object.
     */
    public function remove(key:Dynamic):phaser.data.DataManager;
    /**
     * Retrieves the data associated with the given 'key', deletes it from this Data Manager, then returns it.
     *
     * @method Phaser.Data.DataManager#pop
     * @fires Phaser.Data.Events#REMOVE_DATA
     * @since 3.0.0
     *
     * @param {string} key - The key of the value to retrieve and delete.
     *
     * @return {*} The value of the given key.
     */
    public function pop(key:String):Dynamic;
    /**
     * Determines whether the given key is set in this Data Manager.
     *
     * Please note that the keys are case-sensitive and must be valid JavaScript Object property strings.
     * This means the keys `gold` and `Gold` are treated as two unique values within the Data Manager.
     *
     * @method Phaser.Data.DataManager#has
     * @since 3.0.0
     *
     * @param {string} key - The key to check.
     *
     * @return {boolean} Returns `true` if the key exists, otherwise `false`.
     */
    public function has(key:String):Bool;
    /**
     * Freeze or unfreeze this Data Manager. A frozen Data Manager will block all attempts
     * to create new values or update existing ones.
     *
     * @method Phaser.Data.DataManager#setFreeze
     * @since 3.0.0
     *
     * @param {boolean} value - Whether to freeze or unfreeze the Data Manager.
     *
     * @return {Phaser.Data.DataManager} This DataManager object.
     */
    public function setFreeze(value:Bool):phaser.data.DataManager;
    /**
     * Delete all data in this Data Manager and unfreeze it.
     *
     * @method Phaser.Data.DataManager#reset
     * @since 3.0.0
     *
     * @return {Phaser.Data.DataManager} This DataManager object.
     */
    public function reset():phaser.data.DataManager;
    /**
     * Destroy this data manager.
     *
     * @method Phaser.Data.DataManager#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
