package phaser.structs;

@:native("Phaser.Structs.ProcessQueue")
extern class ProcessQueue {
    public function new();
    public function add(item:Dynamic):phaser.structs.ProcessQueue;
    public function remove(item:Dynamic):phaser.structs.ProcessQueue;
    public function update():Array<Dynamic>;
    public function getActive():Array<Dynamic>;
    public function destroy():Void;
}
