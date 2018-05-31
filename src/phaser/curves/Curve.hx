package phaser.curves;

@:native("Phaser.Curves.Curve")
extern class Curve {
    public function new(type:String);
    public var type:String;
    public var defaultDivisions:Int;
    public var arcLengthDivisions:Int;
    public var cacheArcLengths:Array<Float>;
    public var needsUpdate:Bool;
    public var active:Bool;
    public function draw(graphics:phaser.gameobjects.Graphics, ?pointsTotal:Int):phaser.gameobjects.Graphics;
    public function getBounds(?out:phaser.geom.Rectangle, ?accuracy:Int):phaser.geom.Rectangle;
    public function getDistancePoints(distance:Int):Array<phaser.geom.Point>;
    public function getEndPoint(out:phaser.math.Vector2):phaser.math.Vector2;
    public function getLength():Float;
    public function getLengths(?divisions:Int):Array<Float>;
    public function getPointAt(u:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    public function getPoints(?divisions:Int):Array<phaser.math.Vector2>;
    public function getRandomPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    public function getSpacedPoints(?divisions:Int):Array<phaser.math.Vector2>;
    public function getStartPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    public function getTangent(t:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    public function getTangentAt(u:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    public function getTFromDistance(distance:Int, ?divisions:Int):Float;
    public function getUtoTmapping(u:Float, distance:Int, ?divisions:Int):Float;
    public function updateArcLengths():Void;
}
