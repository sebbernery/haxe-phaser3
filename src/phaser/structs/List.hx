package phaser.structs;

@:native("Phaser.Structs.List")
extern class List {
    public function new(parent:Dynamic);
    public var parent:Dynamic;
    public var list:Array<Dynamic>;
    public var position:Int;
    public var addCallback:Dynamic;
    public var removeCallback:Dynamic;
    public var _sortKey:String;
    public var length:Int;
    public var first:Int;
    public var last:Int;
    public var next:Int;
    public var previous:Int;
    public function add(child:Dynamic, ?skipCallback:Bool):Dynamic;
    public function addAt(child:Dynamic, ?index:Int, ?skipCallback:Bool):Dynamic;
    public function getAt(index:Int):Dynamic;
    public function getIndex(child:Dynamic):Int;
    public function sort(property:String):phaser.structs.List;
    public function getByName(name:String):Dynamic;
    public function getRandom(?startIndex:Int, ?length:Int):Dynamic;
    public function getFirst(property:String, value:Dynamic, ?startIndex:Float, ?endIndex:Float):Dynamic;
    public function getAll(?property:String, ?value:Dynamic, ?startIndex:Int, ?endIndex:Int):Array<Dynamic>;
    public function count(property:String, value:Dynamic):Int;
    public function swap(child1:Dynamic, child2:Dynamic):Void;
    public function moveTo(child:Dynamic, index:Int):Dynamic;
    public function remove(child:Dynamic, ?skipCallback:Bool):Dynamic;
    public function removeAt(index:Int, ?skipCallback:Bool):Dynamic;
    public function removeBetween(?startIndex:Int, ?endIndex:Int, ?skipCallback:Bool):Array<Dynamic>;
    public function removeAll(?skipCallback:Bool):phaser.structs.List;
    public function bringToTop(child:Dynamic):Dynamic;
    public function sendToBack(child:Dynamic):Dynamic;
    public function moveUp(child:Dynamic):Dynamic;
    public function moveDown(child:Dynamic):Dynamic;
    public function reverse():phaser.structs.List;
    public function shuffle():phaser.structs.List;
    public function replace(oldChild:Dynamic, newChild:Dynamic):Dynamic;
    public function exists(child:Dynamic):Bool;
    public function setAll(property:String, value:Dynamic, ?startIndex:Int, ?endIndex:Int):Void;
    public function each(callback:EachListCallback, ?context:Dynamic, ?args:Dynamic):Void;
    public function shutdown():Void;
    public function destroy():Void;
}
