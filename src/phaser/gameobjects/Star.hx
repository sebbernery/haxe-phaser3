package phaser.gameobjects;

@:native("Phaser.GameObjects.Star")
extern class Star extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?points:Float, ?innerRadius:Float, ?outerRadius:Float, ?fillColor:Float, ?fillAlpha:Float);
    public var points:Int;
    public var innerRadius:Float;
    public var outerRadius:Float;
    public function setPoints(value:Int):Dynamic;
    public function setInnerRadius(value:Float):Dynamic;
    public function setOuterRadius(value:Float):Dynamic;
}
