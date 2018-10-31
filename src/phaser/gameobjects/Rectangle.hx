package phaser.gameobjects;

@:native("Phaser.GameObjects.Rectangle")
extern class Rectangle extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, x:Float, y:Float, ?width:Float, ?height:Float, ?fillColor:Float, ?fillAlpha:Float);
}
