package phaser;

typedef FixedKeyControlConfig = {
    @:optional var camera:phaser.cameras.scene2d.Camera;
    @:optional var left:phaser.input.keyboard.Key;
    @:optional var right:phaser.input.keyboard.Key;
    @:optional var up:phaser.input.keyboard.Key;
    @:optional var zoomIn:phaser.input.keyboard.Key;
    @:optional var zoomOut:phaser.input.keyboard.Key;
    @:optional var zoomSpeed:Float;
    @:optional var speed:Dynamic;
};
