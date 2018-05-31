package phaser.physics.impact;

@:native("Phaser.Physics.Impact.World")
extern class World extends phaser.events.EventEmitter {
    public function new(scene:phaser.Scene, config:phaser.physics.impact.WorldConfig);
    public var scene:phaser.Scene;
    public var bodies:Dynamic;
    public var gravity:Float;
    public var cellSize:Int;
    public var collisionMap:phaser.physics.impact.CollisionMap;
    public var timeScale:Float;
    public var maxStep:Float;
    public var enabled:Bool;
    public var drawDebug:Bool;
    public var debugGraphic:phaser.gameobjects.Graphics;
    public var defaults:phaser.physics.impact.WorldDefaults;
    public var walls:phaser.physics.impact.WorldWalls;
    public var delta:Float;
    public function setCollisionMap(key:Dynamic, tileSize:Int):phaser.physics.impact.CollisionMap;
    public function setCollisionMapFromTilemapLayer(tilemapLayer:Dynamic, ?options:Dynamic):phaser.physics.impact.CollisionMap;
    public function setBounds(?x:Float, ?y:Float, ?width:Float, ?height:Float, ?thickness:Float, ?left:Bool, ?right:Bool, ?top:Bool, ?bottom:Bool):phaser.physics.impact.World;
    public function updateWall(add:Bool, position:String, x:Float, y:Float, width:Float, height:Float):Void;
    public function createDebugGraphic():phaser.gameobjects.Graphics;
    public function getNextID():Int;
    public function create(x:Float, y:Float, sizeX:Float, sizeY:Float):phaser.physics.impact.Body;
    public function remove(object:phaser.physics.impact.Body):Void;
    public function pause():phaser.physics.impact.World;
    public function resume():phaser.physics.impact.World;
    public function update(time:Float, delta:Float):Void;
    public function checkHash(body:phaser.physics.impact.Body, hash:Dynamic, size:Float):Void;
    public function checkBodies(bodyA:phaser.physics.impact.Body, bodyB:phaser.physics.impact.Body):Void;
    public function setCollidesNever(bodies:Array<phaser.physics.impact.Body>):phaser.physics.impact.World;
    public function setLite(bodies:Array<phaser.physics.impact.Body>):phaser.physics.impact.World;
    public function setPassive(bodies:Array<phaser.physics.impact.Body>):phaser.physics.impact.World;
    public function setActive(bodies:Array<phaser.physics.impact.Body>):phaser.physics.impact.World;
    public function setFixed(bodies:Array<phaser.physics.impact.Body>):phaser.physics.impact.World;
    public function setTypeNone(bodies:Array<phaser.physics.impact.Body>):phaser.physics.impact.World;
    public function setTypeA(bodies:Array<phaser.physics.impact.Body>):phaser.physics.impact.World;
    public function setTypeB(bodies:Array<phaser.physics.impact.Body>):phaser.physics.impact.World;
    public function setAvsB(bodies:Array<phaser.physics.impact.Body>):phaser.physics.impact.World;
    public function setBvsA(bodies:Array<phaser.physics.impact.Body>):phaser.physics.impact.World;
    public function setCheckAgainstNone(bodies:Array<phaser.physics.impact.Body>):phaser.physics.impact.World;
    public function setCheckAgainstA(bodies:Array<phaser.physics.impact.Body>):phaser.physics.impact.World;
    public function setCheckAgainstB(bodies:Array<phaser.physics.impact.Body>):phaser.physics.impact.World;
}
