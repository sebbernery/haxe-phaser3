package phaser.gameobjects;

@:native("Phaser.GameObjects.Triangle")
extern class Triangle extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?x3:Float, ?y3:Float, ?fillColor:Float, ?fillAlpha:Float);
    public function setTo(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?x3:Float, ?y3:Float):Dynamic;
}
