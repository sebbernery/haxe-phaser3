package phaser.physics.impact;

@:native("Phaser.Physics.Impact.Body")
extern class Body {
    public function new(world:phaser.physics.impact.World, x:Float, y:Float, ?sx:Float, ?sy:Float);
    public var world:phaser.physics.impact.World;
    public var gameObject:phaser.gameobjects.GameObject;
    public var enabled:Bool;
    public var parent:Dynamic;
    public var id:Int;
    public var name:String;
    public var size:Dynamic;
    public var offset:Dynamic;
    public var pos:Dynamic;
    public var last:Dynamic;
    public var vel:Dynamic;
    public var accel:Dynamic;
    public var friction:Dynamic;
    public var maxVel:Dynamic;
    public var standing:Bool;
    public var gravityFactor:Float;
    public var bounciness:Float;
    public var minBounceVelocity:Float;
    public var accelGround:Float;
    public var accelAir:Float;
    public var jumpSpeed:Float;
    public var type:Dynamic;
    public var checkAgainst:Dynamic;
    public var collides:Dynamic;
    public var debugShowBody:Bool;
    public var debugShowVelocity:Bool;
    public var debugBodyColor:Int;
    public var updateCallback:BodyUpdateCallback;
    public var slopeStanding:Dynamic;
    public function reset(x:Float, y:Float):Void;
    public function update(delta:Float):Void;
    public function drawDebug(graphic:phaser.gameobjects.Graphics):Void;
    public function willDrawDebug():Bool;
    public function skipHash():Bool;
    public function touches(other:phaser.physics.impact.Body):Bool;
    public function resetSize(x:Float, y:Float, width:Float, height:Float):phaser.physics.impact.Body;
    public function toJSON():JSONImpactBody;
    public function fromJSON(config:Dynamic):Void;
    public function check(other:phaser.physics.impact.Body):Void;
    public function collideWith(other:phaser.physics.impact.Body, axis:String):Void;
    public function handleMovementTrace(res:Float):Bool;
    public function destroy():Void;
}
