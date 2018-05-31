package phaser.physics.matter;

@:native("Phaser.Physics.Matter.Factory")
extern class Factory {
    public function new(world:phaser.physics.matter.World);
    public var world:phaser.physics.matter.World;
    public var scene:phaser.Scene;
    public var sys:phaser.scenes.Systems;
    public function rectangle(x:Float, y:Float, width:Float, height:Float, options:Dynamic):matterjs.Body;
    public function trapezoid(x:Float, y:Float, width:Float, height:Float, slope:Float, options:Dynamic):matterjs.Body;
    public function circle(x:Float, y:Float, radius:Float, options:Dynamic, maxSides:Float):matterjs.Body;
    public function polygon(x:Float, y:Float, sides:Float, radius:Float, options:Dynamic):matterjs.Body;
    public function fromVertices(x:Float, y:Float, vertexSets:Array<Dynamic>, options:Dynamic, flagInternal:Bool, removeCollinear:Bool, minimumArea:Float):matterjs.Body;
    public function imageStack(key:String, frame:Dynamic, x:Float, y:Float, columns:Float, rows:Float, ?columnGap:Float, ?rowGap:Float, ?options:Dynamic):matterjs.Composite;
    public function stack(x:Float, y:Float, columns:Float, rows:Float, columnGap:Float, rowGap:Float, callback:Dynamic):matterjs.Composite;
    public function pyramid(x:Float, y:Float, columns:Float, rows:Float, columnGap:Float, rowGap:Float, callback:Dynamic):matterjs.Composite;
    public function chain(composite:matterjs.Composite, xOffsetA:Float, yOffsetA:Float, xOffsetB:Float, yOffsetB:Float, options:Dynamic):matterjs.Composite;
    public function mesh(composite:matterjs.Composite, columns:Float, rows:Float, crossBrace:Bool, options:Dynamic):matterjs.Composite;
    public function newtonsCradle(x:Float, y:Float, number:Float, size:Float, length:Float):matterjs.Composite;
    public function car(x:Float, y:Float, width:Float, height:Float, wheelSize:Float):matterjs.Composite;
    public function softBody(x:Float, y:Float, columns:Float, rows:Float, columnGap:Float, rowGap:Float, crossBrace:Bool, particleRadius:Float, particleOptions:Dynamic, constraintOptions:Dynamic):matterjs.Composite;
    public function joint(bodyA:matterjs.Body, bodyB:matterjs.Body, length:Float, ?stiffness:Float, ?options:Dynamic):matterjs.Constraint;
    public function spring(bodyA:matterjs.Body, bodyB:matterjs.Body, length:Float, ?stiffness:Float, ?options:Dynamic):matterjs.Constraint;
    public function constraint(bodyA:matterjs.Body, bodyB:matterjs.Body, length:Float, ?stiffness:Float, ?options:Dynamic):matterjs.Constraint;
    public function worldConstraint(bodyB:matterjs.Body, length:Float, ?stiffness:Float, ?options:Dynamic):matterjs.Constraint;
    public function mouseSpring(options:Dynamic):matterjs.Constraint;
    public function pointerConstraint(options:Dynamic):matterjs.Constraint;
    public function image(x:Float, y:Float, key:String, ?frame:Dynamic, ?options:Dynamic):phaser.physics.matter.Image;
    public function tileBody(tile:phaser.tilemaps.Tile, options:Dynamic):phaser.physics.matter.TileBody;
    public function sprite(x:Float, y:Float, key:String, ?frame:Dynamic, ?options:Dynamic):phaser.physics.matter.Sprite;
    public function gameObject(gameObject:phaser.gameobjects.GameObject, options:Dynamic):phaser.gameobjects.GameObject;
    public function destroy():Void;
}
