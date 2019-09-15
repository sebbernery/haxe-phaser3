package phaser.gameobjects.particles.zones;

/**
 * @classdesc
 * A Death Zone.
 *
 * A Death Zone is a special type of zone that will kill a Particle as soon as it either enters, or leaves, the zone.
 *
 * The zone consists of a `source` which could be a Geometric shape, such as a Rectangle or Ellipse, or your own
 * object as long as it includes a `contains` method for which the Particles can be tested against.
 *
 * @class DeathZone
 * @memberof Phaser.GameObjects.Particles.Zones
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Types.GameObjects.Particles.DeathZoneSource} source - An object instance that has a `contains` method that returns a boolean when given `x` and `y` arguments.
 * @param {boolean} killOnEnter - Should the Particle be killed when it enters the zone? `true` or leaves it? `false`
 */
@:native("Phaser.GameObjects.Particles.Zones.DeathZone")
extern class DeathZone {
    public function new(source:phaser.types.gameobjects.particles.DeathZoneSource, killOnEnter:Bool);
    /**
     * An object instance that has a `contains` method that returns a boolean when given `x` and `y` arguments.
     * This could be a Geometry shape, such as `Phaser.Geom.Circle`, or your own custom object.
     *
     * @name Phaser.GameObjects.Particles.Zones.DeathZone#source
     * @type {Phaser.Types.GameObjects.Particles.DeathZoneSource}
     * @since 3.0.0
     */
    public var source:phaser.types.gameobjects.particles.DeathZoneSource;
    /**
     * Set to `true` if the Particle should be killed if it enters this zone.
     * Set to `false` to kill the Particle if it leaves this zone.
     *
     * @name Phaser.GameObjects.Particles.Zones.DeathZone#killOnEnter
     * @type {boolean}
     * @since 3.0.0
     */
    public var killOnEnter:Bool;
    /**
     * Checks if the given Particle will be killed or not by this zone.
     *
     * @method Phaser.GameObjects.Particles.Zones.DeathZone#willKill
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Particles.Particle} particle - The Particle to be checked against this zone.
     *
     * @return {boolean} Return `true` if the Particle is to be killed, otherwise return `false`.
     */
    public function willKill(particle:phaser.gameobjects.particles.Particle):Bool;
}
