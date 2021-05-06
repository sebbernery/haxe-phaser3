package phaser.structs;

/**
 * @classdesc
 * A Process Queue maintains three internal lists.
 *
 * The `pending` list is a selection of items which are due to be made 'active' in the next update.
 * The `active` list is a selection of items which are considered active and should be updated.
 * The `destroy` list is a selection of items that were active and are awaiting being destroyed in the next update.
 *
 * When new items are added to a Process Queue they are put in the pending list, rather than being added
 * immediately the active list. Equally, items that are removed are put into the destroy list, rather than
 * being destroyed immediately. This allows the Process Queue to carefully process each item at a specific, fixed
 * time, rather than at the time of the request from the API.
 *
 * @class ProcessQueue
 * @extends Phaser.Events.EventEmitter
 * @memberof Phaser.Structs
 * @constructor
 * @since 3.0.0
 *
 * @generic T
 */
@:native("Phaser.Structs.ProcessQueue")
extern class ProcessQueue extends phaser.events.EventEmitter {
    public function new();
    /**
     * If `true` only unique objects will be allowed in the queue.
     *
     * @name Phaser.Structs.ProcessQueue#checkQueue
     * @type {boolean}
     * @since 3.50.0
     */
    public var checkQueue:Bool;
    /**
     * The number of entries in the active list.
     *
     * @name Phaser.Structs.ProcessQueue#length
     * @type {number}
     * @readonly
     * @since 3.20.0
     */
    public var length:Float;
    /**
     * Adds a new item to the Process Queue.
     *
     * The item is added to the pending list and made active in the next update.
     *
     * @method Phaser.Structs.ProcessQueue#add
     * @since 3.0.0
     *
     * @genericUse {T} - [item]
     * @genericUse {Phaser.Structs.ProcessQueue.<T>} - [$return]
     *
     * @param {*} item - The item to add to the queue.
     *
     * @return {*} The item that was added.
     */
    public function add(item:Dynamic):Dynamic;
    /**
     * Removes an item from the Process Queue.
     *
     * The item is added to the pending destroy and fully removed in the next update.
     *
     * @method Phaser.Structs.ProcessQueue#remove
     * @since 3.0.0
     *
     * @genericUse {T} - [item]
     * @genericUse {Phaser.Structs.ProcessQueue.<T>} - [$return]
     *
     * @param {*} item - The item to be removed from the queue.
     *
     * @return {*} The item that was removed.
     */
    public function remove(item:Dynamic):Dynamic;
    /**
     * Removes all active items from this Process Queue.
     *
     * All the items are marked as 'pending destroy' and fully removed in the next update.
     *
     * @method Phaser.Structs.ProcessQueue#removeAll
     * @since 3.20.0
     *
     * @return {this} This Process Queue object.
     */
    public function removeAll():Dynamic;
    /**
     * Update this queue. First it will process any items awaiting destruction, and remove them.
     *
     * Then it will check to see if there are any items pending insertion, and move them to an
     * active state. Finally, it will return a list of active items for further processing.
     *
     * @method Phaser.Structs.ProcessQueue#update
     * @since 3.0.0
     *
     * @genericUse {T[]} - [$return]
     *
     * @return {Array.<*>} A list of active items.
     */
    public function update():Array<Dynamic>;
    /**
     * Returns the current list of active items.
     *
     * This method returns a reference to the active list array, not a copy of it.
     * Therefore, be careful to not modify this array outside of the ProcessQueue.
     *
     * @method Phaser.Structs.ProcessQueue#getActive
     * @since 3.0.0
     *
     * @genericUse {T[]} - [$return]
     *
     * @return {Array.<*>} A list of active items.
     */
    public function getActive():Array<Dynamic>;
}
