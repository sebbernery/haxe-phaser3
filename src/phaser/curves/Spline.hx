package phaser.curves;

@:native("Phaser.Curves.Spline")
extern class Spline extends phaser.curves.Curve {
    public function new(?points:Array<phaser.math.Vector2>);
    public var points:Array<phaser.math.Vector2>;
    public function addPoints(points:Dynamic):phaser.curves.Spline;
    public function addPoint(x:Float, y:Float):phaser.math.Vector2;
    public function getResolution(divisions:Float):Float;
    public function getPoint(t:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    public function toJSON():JSONCurve;
    public function fromJSON(data:JSONCurve):phaser.curves.Spline;
}
