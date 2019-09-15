package phaser.types.gameobjects.particles;

/**
 * @typedef {object} Phaser.Types.GameObjects.Particles.ParticleEmitterDeathZoneConfig
 * @since 3.0.0
 *
 * @property {Phaser.Types.GameObjects.Particles.DeathZoneSource} source - A shape representing the zone. See {@link Phaser.GameObjects.Particles.Zones.DeathZone#source}.
 * @property {string} [type='onEnter'] - 'onEnter' or 'onLeave'.
 */
typedef ParticleEmitterDeathZoneConfig = {
var source:phaser.types.gameobjects.particles.DeathZoneSource;
    @:optional var type:String;
};
