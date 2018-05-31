package phaser.structs;

@:native("Phaser.Structs.Map")
extern class Map {
    public function new(elements:Array<Dynamic>);
    public var entries:Dynamic;
    public var size:Float;
    public function set(key:String, value:Dynamic):phaser.structs.Map;
    public function get(key:String):Dynamic;
    public function getArray():Array<Dynamic>;
    public function has(key:String):Bool;
    public function delete(key:String):phaser.structs.Map;
    public function clear():phaser.structs.Map;
    public function keys():Array<String>;
    public function values():Array<Dynamic>;
    public function dump():Void;
    public function each(callback:EachMapCallback):phaser.structs.Map;
    public function contains(value:Dynamic):Bool;
    public function merge(map:phaser.structs.Map, ?override:Bool):phaser.structs.Map;
}
