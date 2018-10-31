package phaser.gameobjects;

@:native("Phaser.GameObjects.Arc")
extern class Arc extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?radius:Float, ?startAngle:Int, ?endAngle:Int, ?anticlockwise:Bool, ?fillColor:Float, ?fillAlpha:Float);
    public var iterations:Float;
    public var radius:Float;
    public var startAngle:Int;
    public var endAngle:Int;
    public var anticlockwise:Bool;
    public function setRadius(value:Float):Dynamic;
    public function setIterations(value:Float):Dynamic;
    public function setStartAngle(value:Int):Dynamic;
    public function setEndAngle(value:Int):Dynamic;
}
