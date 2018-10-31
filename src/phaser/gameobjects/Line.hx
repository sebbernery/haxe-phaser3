package phaser.gameobjects;

@:native("Phaser.GameObjects.Line")
extern class Line extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?strokeColor:Float, ?strokeAlpha:Float);
    public function setLineWidth(startWidth:Float, ?endWidth:Float):Dynamic;
    public function setTo(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float):Dynamic;
}
