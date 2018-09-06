package phaser;

@:native("Grid")
extern class Grid {
    public function new();
    public function create():Void;
    public function update():Void;
    public function clear():Void;
    public function _regionUnion():Void;
    public function _getRegion():Void;
    public function _createRegion():Void;
    public function _getBucketId():Void;
    public function _createBucket():Void;
    public function _bucketAddBody():Void;
    public function _bucketRemoveBody():Void;
    public function _createActivePairsList():Void;
}
