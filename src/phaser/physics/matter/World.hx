package phaser.physics.matter;

@:native("Phaser.Physics.Matter.World")
extern class World extends phaser.events.EventEmitter {
    public function new(scene:phaser.Scene, config:Dynamic);
    public var scene:phaser.Scene;
    public var engine:matterjs.Engine;
    public var localWorld:matterjs.World;
    public var walls:Dynamic;
    public var enabled:Bool;
    public var correction:Float;
    public var getDelta:Dynamic;
    public var autoUpdate:Bool;
    public var drawDebug:Bool;
    public var debugGraphic:phaser.gameobjects.Graphics;
    public var defaults:Dynamic;
    public function setEventsProxy():Void;
    public function setBounds(?x:Float, ?y:Float, ?width:Float, ?height:Float, ?thickness:Float, ?left:Bool, ?right:Bool, ?top:Bool, ?bottom:Bool):phaser.physics.matter.World;
    public function updateWall(add:Bool, position:String, x:Float, y:Float, width:Float, height:Float):Void;
    public function createDebugGraphic():phaser.gameobjects.Graphics;
    public function disableGravity():phaser.physics.matter.World;
    public function setGravity(?x:Float, ?y:Float, ?scale:Float):phaser.physics.matter.World;
    public function create(x:Float, y:Float, width:Float, height:Float, options:Dynamic):matterjs.Body;
    public function add(object:Dynamic):phaser.physics.matter.World;
    public function remove(object:Dynamic, deep:Bool):phaser.physics.matter.World;
    public function removeConstraint(constraint:matterjs.Constraint, deep:Bool):phaser.physics.matter.World;
    public function convertTilemapLayer(tilemapLayer:Dynamic, ?options:Dynamic):phaser.physics.matter.World;
    public function convertTiles(tiles:Array<phaser.tilemaps.Tile>, ?options:Dynamic):phaser.physics.matter.World;
    public function nextGroup(isNonColliding:Bool):Float;
    public function nextCategory():Float;
    public function pause():phaser.physics.matter.World;
    public function resume():phaser.physics.matter.World;
    public function update(time:Float, delta:Float):Void;
    public function step(?delta:Float, ?correction:Float):Void;
    public function update60Hz():Float;
    public function update30Hz():Float;
    public function postUpdate():Void;
    public function fromPath(path:String, points:Array<Dynamic>):Array<Dynamic>;
}
