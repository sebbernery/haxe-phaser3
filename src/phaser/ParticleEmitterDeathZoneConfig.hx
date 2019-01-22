package phaser;

/**
 * @typedef {object} ParticleEmitterDeathZoneConfig
 *
 * @property {DeathZoneSource} source - A shape representing the zone. See {@link Phaser.GameObjects.Particles.Zones.DeathZone#source}.
 * @property {string} [type='onEnter'] - 'onEnter' or 'onLeave'.
 */
typedef ParticleEmitterDeathZoneConfig = {
var source:DeathZoneSource;
    @:optional var type:String;
};
