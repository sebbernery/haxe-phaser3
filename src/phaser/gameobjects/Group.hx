package phaser.gameobjects;

@:native("Phaser.GameObjects.Group")
extern class Group {
    public function new(scene:phaser.Scene, ?children:Dynamic, ?config:Dynamic);
    public var scene:phaser.Scene;
    public var children:Dynamic;
    public var isParent:Bool;
    public var classType:Dynamic;
    public var active:Bool;
    public var maxSize:Int;
    public var defaultKey:String;
    public var defaultFrame:Dynamic;
    public var runChildUpdate:Bool;
    public var createCallback:GroupCallback;
    public var removeCallback:GroupCallback;
    public var createMultipleCallback:GroupMultipleCreateCallback;
    public function create(?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool, ?active:Bool):Dynamic;
    public function createMultiple(config:Dynamic):Array<Dynamic>;
    public function createFromConfig(options:GroupCreateConfig):Array<Dynamic>;
    public function preUpdate(time:Float, delta:Float):Void;
    public function add(child:phaser.gameobjects.GameObject, ?addToScene:Bool):phaser.gameobjects.Group;
    public function addMultiple(children:Array<phaser.gameobjects.GameObject>, ?addToScene:Bool):phaser.gameobjects.Group;
    public function remove(child:phaser.gameobjects.GameObject, ?removeFromScene:Bool, ?destroyChild:Bool):phaser.gameobjects.Group;
    public function clear(?removeFromScene:Bool, ?destroyChild:Bool):phaser.gameobjects.Group;
    public function contains(child:phaser.gameobjects.GameObject):Bool;
    public function getChildren():Array<phaser.gameobjects.GameObject>;
    public function getLength():Int;
    public function getFirst(?state:Bool, ?createIfNull:Bool, ?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
    public function getFirstNth(nth:Int, ?state:Bool, ?createIfNull:Bool, ?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
    public function getLast(?state:Bool, ?createIfNull:Bool, ?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
    public function getLastNth(nth:Int, ?state:Bool, ?createIfNull:Bool, ?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
    public function get(?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
    public function getFirstAlive(?createIfNull:Bool, ?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
    public function getFirstDead(?createIfNull:Bool, ?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
    public function playAnimation(key:String, ?startFrame:String):phaser.gameobjects.Group;
    public function isFull():Bool;
    public function countActive(?value:Bool):Int;
    public function getTotalUsed():Int;
    public function getTotalFree():Int;
    public function setDepth(value:Float, step:Float):phaser.gameobjects.Group;
    public function kill(gameObject:phaser.gameobjects.GameObject):Void;
    public function killAndHide(gameObject:phaser.gameobjects.GameObject):Void;
    public function toggleVisible():phaser.gameobjects.Group;
    public function destroy(?destroyChildren:Bool):Void;
}
