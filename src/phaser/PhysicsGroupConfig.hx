package phaser;

typedef PhysicsGroupConfig = {
    @:optional var collideWorldBounds:Bool;
    @:optional var accelerationX:Float;
    @:optional var accelerationY:Float;
    @:optional var allowDrag:Bool;
    @:optional var allowGravity:Bool;
    @:optional var allowRotation:Bool;
    @:optional var bounceX:Float;
    @:optional var bounceY:Float;
    @:optional var dragX:Float;
    @:optional var dragY:Float;
    @:optional var gravityX:Float;
    @:optional var gravityY:Float;
    @:optional var frictionX:Float;
    @:optional var frictionY:Float;
    @:optional var velocityX:Float;
    @:optional var velocityY:Float;
    @:optional var angularVelocity:Float;
    @:optional var angularAcceleration:Float;
    @:optional var angularDrag:Float;
    @:optional var mass:Float;
    @:optional var immovable:Bool;
};
