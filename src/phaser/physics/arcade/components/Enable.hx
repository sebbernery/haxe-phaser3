package phaser.physics.arcade.components;

@:native("Phaser.Physics.Arcade.Components.Enable")
extern class Enable {
    public function new();
    public function enableBody(reset:Bool, x:Float, y:Float, enableGameObject:Bool, showGameObject:Bool):Dynamic;
    public function disableBody(?disableGameObject:Bool, ?hideGameObject:Bool):Dynamic;
    public function refreshBody():Dynamic;
}
