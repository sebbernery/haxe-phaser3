package phaser.physics.arcade.components;

@:native("Phaser.Physics.Arcade.Components.Drag")
extern class Drag {
    public function new();
    public function setDrag(x:Float, ?y:Float):Dynamic;
    public function setDragX(value:Float):Dynamic;
    public function setDragY(value:Float):Dynamic;
}
