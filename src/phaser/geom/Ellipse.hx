package phaser.geom;

@:native("Phaser.Geom.Ellipse")
extern class Ellipse {
    public function new(?x:Float, ?y:Float, ?width:Float, ?height:Float);
    public var x:Float;
    public var y:Float;
    public var width:Float;
    public var height:Float;
    public var left:Float;
    public var right:Float;
    public var top:Float;
    public var bottom:Float;
    public function Area(ellipse:phaser.geom.Ellipse):Float;
    public function Circumference(ellipse:phaser.geom.Ellipse):Float;
    public function CircumferencePoint(ellipse:phaser.geom.Ellipse, angle:Float, ?out:Dynamic):phaser.geom.Point;
    public function Clone(source:phaser.geom.Ellipse):phaser.geom.Ellipse;
    public function Contains(ellipse:phaser.geom.Ellipse, x:Float, y:Float):Bool;
    public function ContainsPoint(ellipse:phaser.geom.Ellipse, point:Dynamic):Bool;
    public function ContainsRect(ellipse:phaser.geom.Ellipse, rect:Dynamic):Bool;
    public function CopyFrom(source:phaser.geom.Ellipse, dest:phaser.geom.Ellipse):phaser.geom.Ellipse;
    public function contains(x:Float, y:Float):Bool;
    public function getPoint(position:Float, ?out:Dynamic):phaser.geom.Point;
    public function getPoints(quantity:Int, ?stepRate:Float, ?output:Array<Dynamic>):Array<phaser.geom.Point>;
    public function getRandomPoint(?point:Dynamic):phaser.geom.Point;
    public function setTo(x:Float, y:Float, width:Float, height:Float):phaser.geom.Ellipse;
    public function setEmpty():phaser.geom.Ellipse;
    public function setPosition(x:Float, y:Float):phaser.geom.Ellipse;
    public function setSize(width:Float, ?height:Float):phaser.geom.Ellipse;
    public function isEmpty():Bool;
    public function getMinorRadius():Float;
    public function getMajorRadius():Float;
    public function Equals(ellipse:phaser.geom.Ellipse, toCompare:phaser.geom.Ellipse):Bool;
    public function GetBounds(ellipse:phaser.geom.Ellipse, ?out:Dynamic):phaser.geom.Rectangle;
    public function GetPoint(ellipse:phaser.geom.Ellipse, position:Float, ?out:Dynamic):phaser.geom.Point;
    public function GetPoints(ellipse:phaser.geom.Ellipse, quantity:Int, ?stepRate:Float, ?out:Dynamic):Array<Dynamic>;
    public function Offset(ellipse:phaser.geom.Ellipse, x:Float, y:Float):phaser.geom.Ellipse;
    public function OffsetPoint(ellipse:phaser.geom.Ellipse, point:Dynamic):phaser.geom.Ellipse;
    public function Random(ellipse:phaser.geom.Ellipse, ?out:Dynamic):phaser.geom.Point;
}
