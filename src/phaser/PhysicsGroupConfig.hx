package phaser;

/**
 * @typedef {object} PhysicsGroupConfig
 * @extends GroupConfig
 *
 * @property {boolean} [collideWorldBounds=false] - Sets {@link Phaser.Physics.Arcade.Body#collideWorldBounds}.
 * @property {number} [accelerationX=0] - Sets {@link Phaser.Physics.Arcade.Body#acceleration acceleration.x}.
 * @property {number} [accelerationY=0] - Sets {@link Phaser.Physics.Arcade.Body#acceleration acceleration.y}.
 * @property {boolean} [allowDrag=true] - Sets {@link Phaser.Physics.Arcade.Body#allowDrag}.
 * @property {boolean} [allowGravity=true] - Sets {@link Phaser.Physics.Arcade.Body#allowGravity}.
 * @property {boolean} [allowRotation=true] - Sets {@link Phaser.Physics.Arcade.Body#allowRotation}.
 * @property {number} [bounceX=0] - Sets {@link Phaser.Physics.Arcade.Body#bounce bounce.x}.
 * @property {number} [bounceY=0] - Sets {@link Phaser.Physics.Arcade.Body#bounce bounce.y}.
 * @property {number} [dragX=0] - Sets {@link Phaser.Physics.Arcade.Body#drag drag.x}.
 * @property {number} [dragY=0] - Sets {@link Phaser.Physics.Arcade.Body#drag drag.y}.
 * @property {boolean} [enable=true] - Sets {@link Phaser.Physics.Arcade.Body#enable enable}.
 * @property {number} [gravityX=0] - Sets {@link Phaser.Physics.Arcade.Body#gravity gravity.x}.
 * @property {number} [gravityY=0] - Sets {@link Phaser.Physics.Arcade.Body#gravity gravity.y}.
 * @property {number} [frictionX=0] - Sets {@link Phaser.Physics.Arcade.Body#friction friction.x}.
 * @property {number} [frictionY=0] - Sets {@link Phaser.Physics.Arcade.Body#friction friction.y}.
 * @property {number} [velocityX=0] - Sets {@link Phaser.Physics.Arcade.Body#velocity velocity.x}.
 * @property {number} [velocityY=0] - Sets {@link Phaser.Physics.Arcade.Body#velocity velocity.y}.
 * @property {number} [angularVelocity=0] - Sets {@link Phaser.Physics.Arcade.Body#angularVelocity}.
 * @property {number} [angularAcceleration=0] - Sets {@link Phaser.Physics.Arcade.Body#angularAcceleration}.
 * @property {number} [angularDrag=0] - Sets {@link Phaser.Physics.Arcade.Body#angularDrag}.
 * @property {number} [mass=0] - Sets {@link Phaser.Physics.Arcade.Body#mass}.
 * @property {boolean} [immovable=false] - Sets {@link Phaser.Physics.Arcade.Body#immovable}.
 */
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
    @:optional var enable:Bool;
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
    @:optional var classType:GroupClassTypeConstructor;
    @:optional var active:Bool;
    @:optional var maxSize:Float;
    @:optional var defaultKey:String;
    @:optional var defaultFrame:Dynamic;
    @:optional var runChildUpdate:Bool;
    @:optional var createCallback:GroupCallback;
    @:optional var removeCallback:GroupCallback;
    @:optional var createMultipleCallback:GroupMultipleCreateCallback;
};
