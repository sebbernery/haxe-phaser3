package phaser.curves;

@:native("Phaser.Curves.MoveTo")
extern class MoveTo {
    public function new(?x:Float, ?y:Float);
    public var active:Bool;
    public var p0:phaser.math.Vector2;
    public function getPoint(t:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    public function getPointAt(u:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    public function getResolution():Float;
    public function getLength():Float;
    public function toJSON():JSONCurve;
}
