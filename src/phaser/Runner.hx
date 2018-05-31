package phaser;

@:native("Runner")
extern class Runner {
    public function new();
    public function create():Void;
    public function run():Void;
    public function tick():Void;
    public function stop():Void;
    public function start():Void;
}
