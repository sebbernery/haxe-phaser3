package phaser.physics.impact;

@:native("Phaser.Physics.Impact.CollisionMap")
extern class CollisionMap {
    public function new(?tilesize:Int, ?data:Array<Dynamic>);
    public var tilesize:Int;
    public var data:Array<Dynamic>;
    public var width:Float;
    public var height:Float;
    public var lastSlope:Int;
    public var tiledef:Dynamic;
    public function trace(x:Float, y:Float, vx:Float, vy:Float, objectWidth:Float, objectHeight:Float):Bool;
    public function step(res:Dynamic, x:Float, y:Float, vx:Float, vy:Float, width:Float, height:Float, rvx:Float, rvy:Float, step:Float):Void;
    public function checkDef(res:Dynamic, t:Float, x:Float, y:Float, vx:Float, vy:Float, width:Float, height:Float, tileX:Float, tileY:Float):Bool;
}
