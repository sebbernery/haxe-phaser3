package phaser.geom;

@:native("Phaser.Geom.Line")
extern class Line {
    public function new(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float);
    public var x1:Float;
    public var y1:Float;
    public var x2:Float;
    public var y2:Float;
    public var left:Float;
    public var right:Float;
    public var top:Float;
    public var bottom:Float;
    public function Angle(line:phaser.geom.Line):Float;
    public function BresenhamPoints(line:phaser.geom.Line, ?stepRate:Int, ?results:Array<Dynamic>):Array<Dynamic>;
    public function CenterOn(line:phaser.geom.Line, x:Float, y:Float):phaser.geom.Line;
    public function Clone(source:phaser.geom.Line):phaser.geom.Line;
    public function CopyFrom(source:phaser.geom.Line, dest:phaser.geom.Line):phaser.geom.Line;
    public function Equals(line:phaser.geom.Line, toCompare:phaser.geom.Line):Bool;
    public function GetMidPoint(line:phaser.geom.Line, ?out:Dynamic):phaser.geom.Point;
    public function GetNormal(line:phaser.geom.Line, ?out:Dynamic):phaser.geom.Point;
    public function GetPoint(line:phaser.geom.Line, position:Float, ?out:Dynamic):phaser.geom.Point;
    public function GetPoints(line:phaser.geom.Line, quantity:Int, ?stepRate:Int, ?out:Dynamic):Array<Dynamic>;
    public function Height(line:phaser.geom.Line):Float;
    public function Length(line:phaser.geom.Line):Float;
    public function getPoint(position:Float, ?output:Dynamic):phaser.geom.Point;
    public function getPoints(quantity:Int, ?stepRate:Int, ?output:Dynamic):Array<Dynamic>;
    public function getRandomPoint(?point:Dynamic):phaser.geom.Point;
    public function setTo(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float):phaser.geom.Line;
    public function getPointA(?vec2:phaser.math.Vector2):phaser.math.Vector2;
    public function getPointB(?vec2:phaser.math.Vector2):phaser.math.Vector2;
    public function NormalAngle(line:phaser.geom.Line):Float;
    public function NormalX(line:phaser.geom.Line):Float;
    public function NormalY(line:phaser.geom.Line):Float;
    public function Offset(line:phaser.geom.Line, x:Float, y:Float):phaser.geom.Line;
    public function PerpSlope(line:phaser.geom.Line):Float;
    public function Random(line:phaser.geom.Line, ?out:Dynamic):phaser.geom.Point;
    public function ReflectAngle(lineA:phaser.geom.Line, lineB:phaser.geom.Line):Float;
    public function Rotate(line:phaser.geom.Line, angle:Float):phaser.geom.Line;
    public function RotateAroundPoint(line:phaser.geom.Line, point:Dynamic, angle:Float):phaser.geom.Line;
    public function RotateAroundXY(line:phaser.geom.Line, x:Float, y:Float, angle:Float):phaser.geom.Line;
    public function SetToAngle(line:phaser.geom.Line, x:Float, y:Float, angle:Float, length:Float):phaser.geom.Line;
    public function Slope(line:phaser.geom.Line):Float;
    public function Width(line:phaser.geom.Line):Float;
}
