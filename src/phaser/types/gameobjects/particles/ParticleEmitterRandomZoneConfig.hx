package phaser.types.gameobjects.particles;

/**
 * @typedef {object} Phaser.Types.GameObjects.Particles.ParticleEmitterRandomZoneConfig
 * @since 3.0.0
 *
 * @property {Phaser.Types.GameObjects.Particles.RandomZoneSource} source - A shape representing the zone. See {@link Phaser.GameObjects.Particles.Zones.RandomZone#source}.
 * @property {string} [type] - 'random'.
 */
typedef ParticleEmitterRandomZoneConfig = {
var source:phaser.types.gameobjects.particles.RandomZoneSource;
    @:optional var type:String;
};
