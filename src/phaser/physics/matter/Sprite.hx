package phaser.physics.matter;

@:native("Phaser.Physics.Matter.Sprite")
extern class Sprite extends phaser.gameobjects.Sprite {
    public function new(world:phaser.physics.matter.World, x:Float, y:Float, texture:String, ?frame:Dynamic, ?options:Dynamic);
    public var world:phaser.physics.matter.World;
    public function setBounce(value:Float):phaser.gameobjects.GameObject;
    public function setCollisionCategory(value:Float):phaser.gameobjects.GameObject;
    public function setCollisionGroup(value:Float):phaser.gameobjects.GameObject;
    public function setCollidesWith(categories:Dynamic):phaser.gameobjects.GameObject;
    public function applyForce(force:phaser.math.Vector2):phaser.gameobjects.GameObject;
    public function applyForceFrom(position:phaser.math.Vector2, force:phaser.math.Vector2):phaser.gameobjects.GameObject;
    public function thrust(speed:Float):phaser.gameobjects.GameObject;
    public function thrustLeft(speed:Float):phaser.gameobjects.GameObject;
    public function thrustRight(speed:Float):phaser.gameobjects.GameObject;
    public function thrustBack(speed:Float):phaser.gameobjects.GameObject;
    public function setFriction(value:Float, ?air:Float, ?fstatic:Float):phaser.gameobjects.GameObject;
    public function setFrictionAir(value:Float):phaser.gameobjects.GameObject;
    public function setFrictionStatic(value:Float):phaser.gameobjects.GameObject;
    public function setIgnoreGravity(value:Bool):phaser.gameobjects.GameObject;
    public var centerOfMass:Dynamic;
    public function setMass(value:Float):phaser.gameobjects.GameObject;
    public function setDensity(value:Float):phaser.gameobjects.GameObject;
    public function setSensor(value:Bool):phaser.gameobjects.GameObject;
    public function isSensor():Bool;
    public function setRectangle(width:Float, height:Float, options:Dynamic):phaser.gameobjects.GameObject;
    public function setCircle(radius:Float, options:Dynamic):phaser.gameobjects.GameObject;
    public function setPolygon(radius:Float, sides:Float, options:Dynamic):phaser.gameobjects.GameObject;
    public function setTrapezoid(width:Float, height:Float, slope:Float, options:Dynamic):phaser.gameobjects.GameObject;
    public function setExistingBody(body:matterjs.Body, ?addToWorld:Bool):phaser.gameobjects.GameObject;
    public function setBody(config:Dynamic, options:Dynamic):phaser.gameobjects.GameObject;
    public function setSleepThreshold(?value:Float):phaser.gameobjects.GameObject;
    public function setSleepEvents(start:Bool, end:Bool):phaser.gameobjects.GameObject;
    public function setSleepStartEvent(value:Bool):phaser.gameobjects.GameObject;
    public function setSleepEndEvent(value:Bool):phaser.gameobjects.GameObject;
    public function setStatic(value:Bool):phaser.gameobjects.GameObject;
    public function isStatic():Bool;
    public function setFixedRotation():Dynamic;
    public function setAngularVelocity(value:Float):phaser.gameobjects.GameObject;
    public function setVelocityX(x:Float):phaser.gameobjects.GameObject;
    public function setVelocityY(y:Float):phaser.gameobjects.GameObject;
    public function setVelocity(x:Float, ?y:Float):phaser.gameobjects.GameObject;
}
