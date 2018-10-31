package phaser.gameobjects;

@:native("Phaser.GameObjects.Polygon")
extern class Polygon extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?points:Dynamic, ?fillColor:Float, ?fillAlpha:Float);
    public function smooth(?iterations:Int):Dynamic;
}
