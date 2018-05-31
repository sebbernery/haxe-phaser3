package phaser.geom;

@:native("Phaser.Geom.Circle")
extern class Circle {
    public function new(?x:Float, ?y:Float, ?radius:Float);
    public var x:Float;
    public var y:Float;
    public var radius:Float;
    public var diameter:Float;
    public var left:Float;
    public var right:Float;
    public var top:Float;
    public var bottom:Float;
    public function Area(circle:phaser.geom.Circle):Float;
    public function contains(x:Float, y:Float):Bool;
    public function getPoint(position:Float, ?out:Dynamic):phaser.geom.Point;
    public function getPoints(quantity:Int, ?stepRate:Float, ?output:Dynamic):Array<Dynamic>;
    public function getRandomPoint(?point:Dynamic):phaser.geom.Point;
    public function setTo(?x:Float, ?y:Float, ?radius:Float):phaser.geom.Circle;
    public function setEmpty():phaser.geom.Circle;
    public function setPosition(?x:Float, ?y:Float):phaser.geom.Circle;
    public function isEmpty():Bool;
    public function Circumference(circle:phaser.geom.Circle):Float;
    public function CircumferencePoint(circle:phaser.geom.Circle, angle:Float, ?out:Dynamic):phaser.geom.Point;
    public function Clone(source:Dynamic):phaser.geom.Circle;
    public function Contains(circle:phaser.geom.Circle, x:Float, y:Float):Bool;
    public function ContainsPoint(circle:phaser.geom.Circle, point:Dynamic):Bool;
    public function ContainsRect(circle:phaser.geom.Circle, rect:Dynamic):Bool;
    public function CopyFrom(source:phaser.geom.Circle, dest:phaser.geom.Circle):phaser.geom.Circle;
    public function Equals(circle:phaser.geom.Circle, toCompare:phaser.geom.Circle):Bool;
    public function GetBounds(circle:phaser.geom.Circle, ?out:Dynamic):phaser.geom.Rectangle;
    public function GetPoint(circle:phaser.geom.Circle, position:Float, ?out:Dynamic):phaser.geom.Point;
    public function GetPoints(circle:phaser.geom.Circle, quantity:Int, ?stepRate:Float, ?output:Array<Dynamic>):Array<phaser.geom.Point>;
    public function Offset(circle:phaser.geom.Circle, x:Float, y:Float):phaser.geom.Circle;
    public function OffsetPoint(circle:phaser.geom.Circle, point:Dynamic):phaser.geom.Circle;
    public function Random(circle:phaser.geom.Circle, ?out:Dynamic):phaser.geom.Point;
}
