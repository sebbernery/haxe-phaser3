package phaser.curves;

@:native("Phaser.Curves.Ellipse")
extern class Ellipse extends phaser.curves.Curve {
    public function new(?x:Dynamic, ?y:Float, ?xRadius:Float, ?yRadius:Float, ?startAngle:Int, ?endAngle:Int, ?clockwise:Bool, ?rotation:Int);
    public var p0:phaser.math.Vector2;
    public var x:Float;
    public var y:Float;
    public var xRadius:Float;
    public var yRadius:Float;
    public var startAngle:Float;
    public var endAngle:Float;
    public var clockwise:Bool;
    public var rotation:Float;
    public function getResolution(divisions:Float):Float;
    public function getPoint(t:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    public function setXRadius(value:Float):phaser.curves.Ellipse;
    public function setYRadius(value:Float):phaser.curves.Ellipse;
    public function setWidth(value:Float):phaser.curves.Ellipse;
    public function setHeight(value:Float):phaser.curves.Ellipse;
    public function setStartAngle(value:Float):phaser.curves.Ellipse;
    public function setEndAngle(value:Float):phaser.curves.Ellipse;
    public function setClockwise(value:Bool):phaser.curves.Ellipse;
    public function setRotation(value:Float):phaser.curves.Ellipse;
    public function toJSON():JSONEllipseCurve;
    public function fromJSON(data:JSONEllipseCurve):phaser.curves.Ellipse;
}
