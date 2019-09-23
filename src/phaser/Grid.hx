package phaser;

/**
 * The `Matter.Grid` module contains methods for creating and manipulating collision broadphase grid structures.
 *
 * @class Grid
 */
@:native("Grid")
extern class Grid {
    public function new();
    static public function create():Void;
    static public function update():Void;
    static public function clear():Void;
    static public function _regionUnion():Void;
    static public function _getRegion():Void;
    static public function _createRegion():Void;
    static public function _getBucketId():Void;
    static public function _createBucket():Void;
    static public function _bucketAddBody():Void;
    static public function _bucketRemoveBody():Void;
    static public function _createActivePairsList():Void;
}
