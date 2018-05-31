package phaser.physics.impact;

typedef WorldConfig = {
    @:optional var gravity:Float;
    @:optional var cellSize:Float;
    @:optional var timeScale:Float;
    @:optional var maxStep:Float;
    @:optional var debug:Bool;
    @:optional var maxVelocity:Float;
    @:optional var debugShowBody:Bool;
    @:optional var debugShowVelocity:Bool;
    @:optional var debugBodyColor:Float;
    @:optional var debugVelocityColor:Float;
    @:optional var maxVelocityX:Float;
    @:optional var maxVelocityY:Float;
    @:optional var minBounceVelocity:Float;
    @:optional var gravityFactor:Float;
    @:optional var bounciness:Float;
    @:optional var setBounds:Dynamic;
};
