package phaser.curves;

@:native("Phaser.Curves.Path")
extern class Path {
    public function new(?x:Float, ?y:Float);
    public var name:String;
    public var curves:Array<phaser.curves.Curve>;
    public var cacheLengths:Array<Float>;
    public var autoClose:Bool;
    public var startPoint:phaser.math.Vector2;
    public function add(curve:phaser.curves.Curve):phaser.curves.Path;
    public function circleTo(radius:Float, ?clockwise:Bool, ?rotation:Float):phaser.curves.Path;
    public function closePath():phaser.curves.Path;
    public function cubicBezierTo(x:Dynamic, y:Dynamic, control1X:Dynamic, ?control1Y:Float, ?control2X:Float, ?control2Y:Float):phaser.curves.Path;
    public function quadraticBezierTo(x:Dynamic, ?y:Float, ?controlX:Float, ?controlY:Float):phaser.curves.Path;
    public function draw(graphics:phaser.gameobjects.Graphics, ?pointsTotal:Int):phaser.gameobjects.Graphics;
    public function ellipseTo(xRadius:Float, yRadius:Float, startAngle:Float, endAngle:Float, clockwise:Bool, rotation:Float):phaser.curves.Path;
    public function fromJSON(data:Dynamic):phaser.curves.Path;
    public function getBounds(?out:phaser.geom.Rectangle, ?accuracy:Int):phaser.geom.Rectangle;
    public function getCurveLengths():Array<Float>;
    public function getEndPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    public function getLength():Float;
    public function getPoint(t:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    public function getPoints(?divisions:Int):Array<phaser.math.Vector2>;
    public function getRandomPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    public function getSpacedPoints(?divisions:Int):Array<phaser.math.Vector2>;
    public function getStartPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    public function lineTo(x:Dynamic, ?y:Float):phaser.curves.Path;
    public function splineTo(points:Array<phaser.math.Vector2>):phaser.curves.Path;
    public function moveTo(x:Float, y:Float):phaser.curves.Path;
    public function toJSON():JSONPath;
    public function updateArcLengths():Void;
    public function destroy():Void;
}
