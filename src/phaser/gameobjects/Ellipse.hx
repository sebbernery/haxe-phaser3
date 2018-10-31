package phaser.gameobjects;

@:native("Phaser.GameObjects.Ellipse")
extern class Ellipse extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?width:Float, ?height:Float, ?fillColor:Float, ?fillAlpha:Float);
    public var smoothness:Int;
    public function setSmoothness(value:Int):Dynamic;
}
