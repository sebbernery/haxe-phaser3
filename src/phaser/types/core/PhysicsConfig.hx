package phaser.types.core;

/**
 * @typedef {object} Phaser.Types.Core.PhysicsConfig
 * @since 3.0.0
 *
 * @property {string} [default] - The default physics system. It will be started for each scene. Phaser provides 'arcade', 'impact', and 'matter'.
 * @property {Phaser.Types.Physics.Arcade.ArcadeWorldConfig} [arcade] - Arcade Physics configuration.
 * @property {Phaser.Types.Physics.Impact.WorldConfig} [impact] - Impact Physics configuration.
 * @property {Phaser.Types.Physics.Matter.MatterWorldConfig} [matter] - Matter Physics configuration.
 */
typedef PhysicsConfig = {
    @:optional @:native('default') var default_:String;
    @:optional var arcade:phaser.types.physics.arcade.ArcadeWorldConfig;
    @:optional var impact:phaser.types.physics.impact.WorldConfig;
    @:optional var matter:phaser.types.physics.matter.MatterWorldConfig;
};
