package phaser.gameobjects;

@:native("Phaser.GameObjects.Curve")
extern class Curve extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?curve:phaser.curves.Curve, ?fillColor:Float, ?fillAlpha:Float);
    public var smoothness:Int;
    public function setSmoothness(value:Int):Dynamic;
}
