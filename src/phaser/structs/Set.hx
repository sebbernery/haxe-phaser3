package phaser.structs;

@:native("Phaser.Structs.Set")
extern class Set {
    public function new(?elements:Array<Dynamic>);
    public var entries:Array<Dynamic>;
    public var size:Int;
    public function set(value:Dynamic):phaser.structs.Set;
    public function get(property:String, value:Dynamic):Dynamic;
    public function getArray():Array<Dynamic>;
    public function delete(value:Dynamic):phaser.structs.Set;
    public function dump():Void;
    public function each(callback:EachSetCallback, callbackScope:Dynamic):phaser.structs.Set;
    public function iterate(callback:EachSetCallback, callbackScope:Dynamic):phaser.structs.Set;
    public function iterateLocal(callbackKey:String, ?args:Dynamic):phaser.structs.Set;
    public function clear():phaser.structs.Set;
    public function contains(value:Dynamic):Bool;
    public function union(set:phaser.structs.Set):phaser.structs.Set;
    public function intersect(set:phaser.structs.Set):phaser.structs.Set;
    public function difference(set:phaser.structs.Set):phaser.structs.Set;
}
