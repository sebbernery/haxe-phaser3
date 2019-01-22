package phaser;

/**
 * @typedef {object} PhysicsConfig
 *
 * @property {string} [default] - The default physics system. It will be started for each scene. Phaser provides 'arcade', 'impact', and 'matter'.
 * @property {ArcadeWorldConfig} [arcade] - Arcade Physics configuration.
 * @property {Phaser.Physics.Impact.WorldConfig} [impact] - Impact Physics configuration.
 * @property {object} [matter] - Matter Physics configuration.
 */
typedef PhysicsConfig = {
    @:optional @:native('default') var default_:String;
    @:optional var arcade:ArcadeWorldConfig;
    @:optional var impact:phaser.physics.impact.WorldConfig;
    @:optional var matter:Dynamic;
};
