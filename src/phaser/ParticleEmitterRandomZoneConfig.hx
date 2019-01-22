package phaser;

/**
 * @typedef {object} ParticleEmitterRandomZoneConfig
 *
 * @property {RandomZoneSource} source - A shape representing the zone. See {@link Phaser.GameObjects.Particles.Zones.RandomZone#source}.
 * @property {string} [type] - 'random'.
 */
typedef ParticleEmitterRandomZoneConfig = {
var source:RandomZoneSource;
    @:optional var type:String;
};
