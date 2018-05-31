package phaser;

typedef ArcadeWorldConfig = {
    @:optional var gravity:Dynamic;
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var width:Float;
    @:optional var height:Float;
    @:optional var checkCollision:Dynamic;
    @:optional var overlapBias:Float;
    @:optional var tileBias:Float;
    @:optional var forceX:Bool;
    @:optional var isPaused:Bool;
    @:optional var debug:Bool;
    @:optional var debugShowBody:Bool;
    @:optional var debugShowStaticBody:Bool;
    @:optional var debugShowVelocity:Bool;
    @:optional var debugBodyColor:Float;
    @:optional var debugStaticBodyColor:Float;
    @:optional var debugVelocityColor:Float;
    @:optional var maxEntries:Float;
};
