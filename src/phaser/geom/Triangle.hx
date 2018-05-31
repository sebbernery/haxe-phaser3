package phaser.geom;

@:native("Phaser.Geom.Triangle")
extern class Triangle {
    public function new(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?x3:Float, ?y3:Float);
    public var x1:Float;
    public var y1:Float;
    public var x2:Float;
    public var y2:Float;
    public var x3:Float;
    public var y3:Float;
    public var left:Float;
    public var right:Float;
    public var top:Float;
    public var bottom:Float;
    public function Area(triangle:phaser.geom.Triangle):Float;
    public function BuildEquilateral(x:Float, y:Float, length:Float):phaser.geom.Triangle;
    public function BuildFromPolygon(data:Array<Dynamic>, ?holes:Array<Dynamic>, ?scaleX:Float, ?scaleY:Float, ?out:Dynamic):Array<Dynamic>;
    public function BuildRight(x:Float, y:Float, width:Float, height:Float):phaser.geom.Triangle;
    public function CenterOn(triangle:phaser.geom.Triangle, x:Float, y:Float, ?centerFunc:CenterFunction):phaser.geom.Triangle;
    public function Centroid(triangle:phaser.geom.Triangle, ?out:Dynamic):phaser.geom.Point;
    public function CircumCenter(triangle:phaser.geom.Triangle, ?out:phaser.math.Vector2):phaser.math.Vector2;
    public function CircumCircle(triangle:phaser.geom.Triangle, ?out:phaser.geom.Circle):phaser.geom.Circle;
    public function Clone(source:phaser.geom.Triangle):phaser.geom.Triangle;
    public function Contains(triangle:phaser.geom.Triangle, x:Float, y:Float):Bool;
    public function ContainsArray(triangle:phaser.geom.Triangle, points:Array<phaser.geom.Point>, ?returnFirst:Bool, ?out:Array<Dynamic>):Array<phaser.geom.Point>;
    public function ContainsPoint(triangle:phaser.geom.Triangle, point:phaser.geom.Point):Bool;
    public function CopyFrom(source:phaser.geom.Triangle, dest:phaser.geom.Triangle):phaser.geom.Triangle;
    public function Decompose(triangle:phaser.geom.Triangle, ?out:Array<Dynamic>):Array<Dynamic>;
    public function Equals(triangle:phaser.geom.Triangle, toCompare:phaser.geom.Triangle):Bool;
    public function GetPoint(triangle:phaser.geom.Triangle, position:Float, ?out:Dynamic):phaser.geom.Point;
    public function GetPoints(triangle:phaser.geom.Triangle, quantity:Int, stepRate:Float, ?out:Dynamic):Array<Dynamic>;
    public function InCenter(triangle:phaser.geom.Triangle, ?out:phaser.geom.Point):phaser.geom.Point;
    public function Offset(triangle:phaser.geom.Triangle, x:Float, y:Float):phaser.geom.Triangle;
    public function Perimeter(triangle:phaser.geom.Triangle):Float;
    public function Random(triangle:phaser.geom.Triangle, ?out:phaser.geom.Point):phaser.geom.Point;
    public function Rotate(triangle:phaser.geom.Triangle, angle:Float):phaser.geom.Triangle;
    public function RotateAroundPoint(triangle:phaser.geom.Triangle, point:phaser.geom.Point, angle:Float):phaser.geom.Triangle;
    public function RotateAroundXY(triangle:phaser.geom.Triangle, x:Float, y:Float, angle:Float):phaser.geom.Triangle;
    public function contains(x:Float, y:Float):Bool;
    public function getPoint(position:Float, ?output:Dynamic):phaser.geom.Point;
    public function getPoints(quantity:Int, ?stepRate:Float, ?output:Dynamic):Array<Dynamic>;
    public function getRandomPoint(?point:phaser.geom.Point):phaser.geom.Point;
    public function setTo(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?x3:Float, ?y3:Float):phaser.geom.Triangle;
    public function getLineA(?line:phaser.geom.Line):phaser.geom.Line;
    public function getLineB(?line:phaser.geom.Line):phaser.geom.Line;
    public function getLineC(?line:phaser.geom.Line):phaser.geom.Line;
}
