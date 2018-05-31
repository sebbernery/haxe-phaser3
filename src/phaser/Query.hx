package phaser;

@:native("Query")
extern class Query {
    public function new();
    public function ray():Void;
    public function region():Void;
    public function point():Void;
}
