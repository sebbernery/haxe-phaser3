package phaser.physics.matter;

@:native("Phaser.Physics.Matter.TileBody")
extern class TileBody extends phaser.physics.matter.components.Bounce {
    public function new(world:phaser.physics.matter.World, tile:phaser.tilemaps.Tile, ?options:Dynamic);
    public var tile:phaser.tilemaps.Tile;
    public var world:phaser.physics.matter.World;
    public function setFromTileRectangle(?options:Dynamic):phaser.physics.matter.TileBody;
    public function setFromTileCollision(?options:Dynamic):phaser.physics.matter.TileBody;
    public function setBody(body:matterjs.Body, ?addToWorld:Bool):phaser.physics.matter.TileBody;
    public function removeBody():phaser.physics.matter.TileBody;
    public function destroy():phaser.physics.matter.TileBody;
    public function setCollisionCategory(value:Float):phaser.gameobjects.GameObject;
    public function setCollisionGroup(value:Float):phaser.gameobjects.GameObject;
    public function setCollidesWith(categories:Dynamic):phaser.gameobjects.GameObject;
    public function setFriction(value:Float, ?air:Float, ?fstatic:Float):phaser.gameobjects.GameObject;
    public function setFrictionAir(value:Float):phaser.gameobjects.GameObject;
    public function setFrictionStatic(value:Float):phaser.gameobjects.GameObject;
    public function setIgnoreGravity(value:Bool):phaser.gameobjects.GameObject;
    public function setMass(value:Float):phaser.gameobjects.GameObject;
    public function setDensity(value:Float):phaser.gameobjects.GameObject;
    public function setSensor(value:Bool):phaser.gameobjects.GameObject;
    public function isSensor():Bool;
    public function setSleepThreshold(?value:Float):phaser.gameobjects.GameObject;
    public function setSleepEvents(start:Bool, end:Bool):phaser.gameobjects.GameObject;
    public function setSleepStartEvent(value:Bool):phaser.gameobjects.GameObject;
    public function setSleepEndEvent(value:Bool):phaser.gameobjects.GameObject;
    public function setStatic(value:Bool):phaser.gameobjects.GameObject;
    public function isStatic():Bool;
}
