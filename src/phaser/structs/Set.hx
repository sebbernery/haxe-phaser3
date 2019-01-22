package phaser.structs;

/**
 * @classdesc
 * A Set is a collection of unique elements.
 *
 * @class Set
 * @memberof Phaser.Structs
 * @constructor
 * @since 3.0.0
 *
 * @generic T
 * @genericUse {T[]} - [elements]
 *
 * @param {Array.<*>} [elements] - An optional array of elements to insert into this Set.
 */
@:native("Phaser.Structs.Set")
extern class Set {
    public function new(?elements:Array<Dynamic>);
    /**
     * The entries of this Set. Stored internally as an array.
     *
     * @genericUse {T[]} - [$type]
     *
     * @name Phaser.Structs.Set#entries
     * @type {Array.<*>}
     * @default []
     * @since 3.0.0
     */
    public var entries:Array<Dynamic>;
    /**
     * The size of this Set. This is the number of entries within it.
     * Changing the size will truncate the Set if the given value is smaller than the current size.
     * Increasing the size larger than the current size has no effect.
     *
     * @name Phaser.Structs.Set#size
     * @type {integer}
     * @since 3.0.0
     */
    public var size:Int;
    /**
     * Inserts the provided value into this Set. If the value is already contained in this Set this method will have no effect.
     *
     * @method Phaser.Structs.Set#set
     * @since 3.0.0
     *
     * @genericUse {T} - [value]
     * @genericUse {Phaser.Structs.Set.<T>} - [$return]
     *
     * @param {*} value - The value to insert into this Set.
     *
     * @return {Phaser.Structs.Set} This Set object.
     */
    public function set(value:Dynamic):phaser.structs.Set;
    /**
     * Get an element of this Set which has a property of the specified name, if that property is equal to the specified value.
     * If no elements of this Set satisfy the condition then this method will return `null`.
     *
     * @method Phaser.Structs.Set#get
     * @since 3.0.0
     *
     * @genericUse {T} - [value,$return]
     *
     * @param {string} property - The property name to check on the elements of this Set.
     * @param {*} value - The value to check for.
     *
     * @return {*} The first element of this Set that meets the required condition, or `null` if this Set contains no elements that meet the condition.
     */
    public function get(property:String, value:Dynamic):Dynamic;
    /**
     * Returns an array containing all the values in this Set.
     *
     * @method Phaser.Structs.Set#getArray
     * @since 3.0.0
     *
     * @genericUse {T[]} - [$return]
     *
     * @return {Array.<*>} An array containing all the values in this Set.
     */
    public function getArray():Array<Dynamic>;
    /**
     * Removes the given value from this Set if this Set contains that value.
     *
     * @method Phaser.Structs.Set#delete
     * @since 3.0.0
     *
     * @genericUse {T} - [value]
     * @genericUse {Phaser.Structs.Set.<T>} - [$return]
     *
     * @param {*} value - The value to remove from the Set.
     *
     * @return {Phaser.Structs.Set} This Set object.
     */
    public function delete(value:Dynamic):phaser.structs.Set;
    /**
     * Dumps the contents of this Set to the console via `console.group`.
     *
     * @method Phaser.Structs.Set#dump
     * @since 3.0.0
     */
    public function dump():Void;
    /**
     * Passes each value in this Set to the given callback.
     * Use this function when you know this Set will be modified during the iteration, otherwise use `iterate`.
     *
     * @method Phaser.Structs.Set#each
     * @since 3.0.0
     *
     * @genericUse {EachSetCallback.<T>} - [callback]
     * @genericUse {Phaser.Structs.Set.<T>} - [$return]
     *
     * @param {EachSetCallback} callback - The callback to be invoked and passed each value this Set contains.
     * @param {*} callbackScope - The scope of the callback.
     *
     * @return {Phaser.Structs.Set} This Set object.
     */
    public function each(callback:EachSetCallback, callbackScope:Dynamic):phaser.structs.Set;
    /**
     * Passes each value in this Set to the given callback.
     * For when you absolutely know this Set won't be modified during the iteration.
     *
     * @method Phaser.Structs.Set#iterate
     * @since 3.0.0
     *
     * @genericUse {EachSetCallback.<T>} - [callback]
     * @genericUse {Phaser.Structs.Set.<T>} - [$return]
     *
     * @param {EachSetCallback} callback - The callback to be invoked and passed each value this Set contains.
     * @param {*} callbackScope - The scope of the callback.
     *
     * @return {Phaser.Structs.Set} This Set object.
     */
    public function iterate(callback:EachSetCallback, callbackScope:Dynamic):phaser.structs.Set;
    /**
     * Goes through each entry in this Set and invokes the given function on them, passing in the arguments.
     *
     * @method Phaser.Structs.Set#iterateLocal
     * @since 3.0.0
     *
     * @genericUse {Phaser.Structs.Set.<T>} - [$return]
     *
     * @param {string} callbackKey - The key of the function to be invoked on each Set entry.
     * @param {...*} [args] - Additional arguments that will be passed to the callback, after the child.
     *
     * @return {Phaser.Structs.Set} This Set object.
     */
    public function iterateLocal(callbackKey:String, ?args:Dynamic):phaser.structs.Set;
    /**
     * Clears this Set so that it no longer contains any values.
     *
     * @method Phaser.Structs.Set#clear
     * @since 3.0.0
     *
     * @genericUse {Phaser.Structs.Set.<T>} - [$return]
     *
     * @return {Phaser.Structs.Set} This Set object.
     */
    public function clear():phaser.structs.Set;
    /**
     * Returns `true` if this Set contains the given value, otherwise returns `false`.
     *
     * @method Phaser.Structs.Set#contains
     * @since 3.0.0
     *
     * @genericUse {T} - [value]
     *
     * @param {*} value - The value to check for in this Set.
     *
     * @return {boolean} `true` if the given value was found in this Set, otherwise `false`.
     */
    public function contains(value:Dynamic):Bool;
    /**
     * Returns a new Set containing all values that are either in this Set or in the Set provided as an argument.
     *
     * @method Phaser.Structs.Set#union
     * @since 3.0.0
     *
     * @genericUse {Phaser.Structs.Set.<T>} - [set,$return]
     *
     * @param {Phaser.Structs.Set} set - The Set to perform the union with.
     *
     * @return {Phaser.Structs.Set} A new Set containing all the values in this Set and the Set provided as an argument.
     */
    public function union(set:phaser.structs.Set):phaser.structs.Set;
    /**
     * Returns a new Set that contains only the values which are in this Set and that are also in the given Set.
     *
     * @method Phaser.Structs.Set#intersect
     * @since 3.0.0
     *
     * @genericUse {Phaser.Structs.Set.<T>} - [set,$return]
     *
     * @param {Phaser.Structs.Set} set - The Set to intersect this set with.
     *
     * @return {Phaser.Structs.Set} The result of the intersection, as a new Set.
     */
    public function intersect(set:phaser.structs.Set):phaser.structs.Set;
    /**
     * Returns a new Set containing all the values in this Set which are *not* also in the given Set.
     *
     * @method Phaser.Structs.Set#difference
     * @since 3.0.0
     *
     * @genericUse {Phaser.Structs.Set.<T>} - [set,$return]
     *
     * @param {Phaser.Structs.Set} set - The Set to perform the difference with.
     *
     * @return {Phaser.Structs.Set} A new Set containing all the values in this Set that are not also in the Set provided as an argument to this method.
     */
    public function difference(set:phaser.structs.Set):phaser.structs.Set;
}
