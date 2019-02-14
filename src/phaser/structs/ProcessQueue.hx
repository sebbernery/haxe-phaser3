package phaser.structs;

/**
 * @classdesc
 * A Process Queue maintains three internal lists.
 *
 * The `pending` list is a selection of items which are due to be made 'active' in the next update.
 * The `active` list is a selection of items which are considered active and should be updated.
 * The `destroy` list is a selection of items that were active and are awaiting being destroyed in the next update.
 *
 * When new items are added to a Process Queue they are put in a pending data, rather than being added
 * immediately the active list. Equally, items that are removed are put into the destroy list, rather than
 * being destroyed immediately. This allows the Process Queue to carefully process each item at a specific, fixed
 * time, rather than at the time of the request from the API.
 *
 * @class ProcessQueue
 * @memberof Phaser.Structs
 * @constructor
 * @since 3.0.0
 *
 * @generic T
 */
@:native("Phaser.Structs.ProcessQueue")
extern class ProcessQueue {
    public function new();
    /**
     * Adds a new item to the Process Queue.
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
     * @return {Phaser.Structs.ProcessQueue} This Process Queue object.
     */
    public function add(item:Dynamic):phaser.structs.ProcessQueue;
    /**
     * Removes an item from the Process Queue.
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
     * @return {Phaser.Structs.ProcessQueue} This Process Queue object.
     */
    public function remove(item:Dynamic):phaser.structs.ProcessQueue;
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
     * @method Phaser.Structs.ProcessQueue#getActive
     * @since 3.0.0
     *
     * @genericUse {T[]} - [$return]
     *
     * @return {Array.<*>} A list of active items.
     */
    public function getActive():Array<Dynamic>;
    /**
     * Immediately destroys this process queue, clearing all of its internal arrays and resetting the process totals.
     *
     * @method Phaser.Structs.ProcessQueue#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
