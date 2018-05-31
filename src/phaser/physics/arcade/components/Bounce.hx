package phaser.physics.arcade.components;

@:native("Phaser.Physics.Arcade.Components.Bounce")
extern class Bounce {
    public function new();
    public function setBounce(x:Float, ?y:Float):Dynamic;
    public function setBounceX(value:Float):Dynamic;
    public function setBounceY(value:Float):Dynamic;
    public function setCollideWorldBounds(value:Bool):Dynamic;
}
