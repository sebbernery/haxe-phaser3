package phaser.structs;

/**
 * @classdesc
 * [description]
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
     * [description]
     *
     * @method Phaser.Structs.ProcessQueue#add
     * @since 3.0.0
     *
     * @genericUse {T} - [item]
     * @genericUse {Phaser.Structs.ProcessQueue.<T>} - [$return]
     *
     * @param {*} item - [description]
     *
     * @return {Phaser.Structs.ProcessQueue} This Process Queue object.
     */
    public function add(item:Dynamic):phaser.structs.ProcessQueue;
    /**
     * [description]
     *
     * @method Phaser.Structs.ProcessQueue#remove
     * @since 3.0.0
     *
     * @genericUse {T} - [item]
     * @genericUse {Phaser.Structs.ProcessQueue.<T>} - [$return]
     *
     * @param {*} item - [description]
     *
     * @return {Phaser.Structs.ProcessQueue} This Process Queue object.
     */
    public function remove(item:Dynamic):phaser.structs.ProcessQueue;
    /**
     * [description]
     *
     * @method Phaser.Structs.ProcessQueue#update
     * @since 3.0.0
     *
     * @genericUse {T[]} - [$return]
     *
     * @return {Array.<*>} [description]
     */
    public function update():Array<Dynamic>;
    /**
     * [description]
     *
     * @method Phaser.Structs.ProcessQueue#getActive
     * @since 3.0.0
     *
     * @genericUse {T[]} - [$return]
     *
     * @return {Array.<*>} [description]
     */
    public function getActive():Array<Dynamic>;
    /**
     * [description]
     *
     * @method Phaser.Structs.ProcessQueue#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
