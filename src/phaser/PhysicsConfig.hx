package phaser;

typedef PhysicsConfig = {
    @:optional @:native('default') var default_:String;
    @:optional var arcade:ArcadeWorldConfig;
    @:optional var impact:phaser.physics.impact.WorldConfig;
    @:optional var matter:Dynamic;
};
