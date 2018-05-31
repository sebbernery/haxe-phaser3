package phaser.physics.arcade;

@:native("Phaser.Physics.Arcade.Image")
extern class Image extends phaser.gameobjects.Image {
    public function new(scene:phaser.Scene, x:Float, y:Float, texture:String, ?frame:Dynamic);
    public function setAcceleration(x:Float, ?y:Float):Dynamic;
    public function setAccelerationX(value:Float):Dynamic;
    public function setAccelerationY(value:Float):Dynamic;
    public function setAngularVelocity(value:Float):Dynamic;
    public function setAngularAcceleration(value:Float):Dynamic;
    public function setAngularDrag(value:Float):Dynamic;
    public function setBounce(x:Float, ?y:Float):Dynamic;
    public function setBounceX(value:Float):Dynamic;
    public function setBounceY(value:Float):Dynamic;
    public function setCollideWorldBounds(value:Bool):Dynamic;
    public var debugShowBody:Bool;
    public var debugShowVelocity:Bool;
    public var debugBodyColor:Float;
    public function setDebug(showBody:Bool, showVelocity:Bool, bodyColor:Float):Dynamic;
    public function setDebugBodyColor(value:Float):Dynamic;
    public function setDrag(x:Float, ?y:Float):Dynamic;
    public function setDragX(value:Float):Dynamic;
    public function setDragY(value:Float):Dynamic;
    public function enableBody(reset:Bool, x:Float, y:Float, enableGameObject:Bool, showGameObject:Bool):Dynamic;
    public function disableBody(?disableGameObject:Bool, ?hideGameObject:Bool):Dynamic;
    public function refreshBody():Dynamic;
    public function setFriction(x:Float, ?y:Float):Dynamic;
    public function setFrictionX(x:Float):Dynamic;
    public function setFrictionY(y:Float):Dynamic;
    public function setGravity(x:Float, ?y:Float):Dynamic;
    public function setGravityX(x:Float):Dynamic;
    public function setGravityY(y:Float):Dynamic;
    public function setImmovable(?value:Bool):Dynamic;
    public function setMass(value:Float):Dynamic;
    public function setOffset(x:Float, ?y:Float):Dynamic;
    public function setCircle(radius:Float, ?offsetX:Float, ?offsetY:Float):Dynamic;
    public function setVelocity(x:Float, ?y:Float):Dynamic;
    public function setVelocityX(x:Float):Dynamic;
    public function setVelocityY(y:Float):Dynamic;
    public function setMaxVelocity(x:Float, ?y:Float):Dynamic;
}
