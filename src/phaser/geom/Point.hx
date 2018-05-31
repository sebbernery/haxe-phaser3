package phaser.geom;

@:native("Phaser.Geom.Point")
extern class Point {
    public function new(?x:Float, ?y:Float);
    public var x:Float;
    public var y:Float;
    public function Ceil(point:phaser.geom.Point):phaser.geom.Point;
    public function Clone(source:phaser.geom.Point):phaser.geom.Point;
    public function CopyFrom(source:phaser.geom.Point, dest:phaser.geom.Point):phaser.geom.Point;
    public function Equals(point:phaser.geom.Point, toCompare:phaser.geom.Point):Bool;
    public function Floor(point:phaser.geom.Point):phaser.geom.Point;
    public function GetCentroid(points:Array<phaser.geom.Point>, ?out:phaser.geom.Point):phaser.geom.Point;
    public function GetMagnitude(point:phaser.geom.Point):Float;
    public function GetMagnitudeSq(point:phaser.geom.Point):Float;
    public function GetRectangleFromPoints(points:Array<phaser.geom.Point>, ?out:phaser.geom.Rectangle):phaser.geom.Rectangle;
    public function Interpolate(pointA:phaser.geom.Point, pointB:phaser.geom.Point, ?t:Float, ?out:Dynamic):phaser.geom.Point;
    public function Invert(point:phaser.geom.Point):phaser.geom.Point;
    public function Negative(point:phaser.geom.Point, ?out:phaser.geom.Point):phaser.geom.Point;
    public function setTo(?x:Float, ?y:Float):phaser.geom.Point;
    public function Project(pointA:phaser.geom.Point, pointB:phaser.geom.Point, ?out:phaser.geom.Point):phaser.geom.Point;
    public function ProjectUnit(pointA:phaser.geom.Point, pointB:phaser.geom.Point, ?out:phaser.geom.Point):phaser.geom.Point;
    public function SetMagnitude(point:phaser.geom.Point, magnitude:Float):phaser.geom.Point;
}
