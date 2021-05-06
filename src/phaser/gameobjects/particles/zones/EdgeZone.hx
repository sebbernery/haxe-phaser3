package phaser.gameobjects.particles.zones;

/**
 * @classdesc
 * A zone that places particles on a shape's edges.
 *
 * @class EdgeZone
 * @memberof Phaser.GameObjects.Particles.Zones
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Types.GameObjects.Particles.EdgeZoneSource} source - An object instance with a `getPoints(quantity, stepRate)` method returning an array of points.
 * @param {number} quantity - The number of particles to place on the source edge. Set to 0 to use `stepRate` instead.
 * @param {number} stepRate - The distance between each particle. When set, `quantity` is implied and should be set to 0.
 * @param {boolean} [yoyo=false] - Whether particles are placed from start to end and then end to start.
 * @param {boolean} [seamless=true] - Whether one endpoint will be removed if it's identical to the other.
 */
@:native("Phaser.GameObjects.Particles.Zones.EdgeZone")
extern class EdgeZone {
    public function new(source:phaser.types.gameobjects.particles.EdgeZoneSource, quantity:Float, stepRate:Float, ?yoyo:Bool, ?seamless:Bool);
    /**
     * An object instance with a `getPoints(quantity, stepRate)` method returning an array of points.
     *
     * @name Phaser.GameObjects.Particles.Zones.EdgeZone#source
     * @type {Phaser.Types.GameObjects.Particles.EdgeZoneSource|Phaser.Types.GameObjects.Particles.RandomZoneSource}
     * @since 3.0.0
     */
    public var source:Dynamic;
    /**
     * The points placed on the source edge.
     *
     * @name Phaser.GameObjects.Particles.Zones.EdgeZone#points
     * @type {Phaser.Geom.Point[]}
     * @default []
     * @since 3.0.0
     */
    public var points:Array<phaser.geom.Point>;
    /**
     * The number of particles to place on the source edge. Set to 0 to use `stepRate` instead.
     *
     * @name Phaser.GameObjects.Particles.Zones.EdgeZone#quantity
     * @type {number}
     * @since 3.0.0
     */
    public var quantity:Float;
    /**
     * The distance between each particle. When set, `quantity` is implied and should be set to 0.
     *
     * @name Phaser.GameObjects.Particles.Zones.EdgeZone#stepRate
     * @type {number}
     * @since 3.0.0
     */
    public var stepRate:Float;
    /**
     * Whether particles are placed from start to end and then end to start.
     *
     * @name Phaser.GameObjects.Particles.Zones.EdgeZone#yoyo
     * @type {boolean}
     * @since 3.0.0
     */
    public var yoyo:Bool;
    /**
     * The counter used for iterating the EdgeZone's points.
     *
     * @name Phaser.GameObjects.Particles.Zones.EdgeZone#counter
     * @type {number}
     * @default -1
     * @since 3.0.0
     */
    public var counter:Float;
    /**
     * Whether one endpoint will be removed if it's identical to the other.
     *
     * @name Phaser.GameObjects.Particles.Zones.EdgeZone#seamless
     * @type {boolean}
     * @since 3.0.0
     */
    public var seamless:Bool;
    /**
     * Update the {@link Phaser.GameObjects.Particles.Zones.EdgeZone#points} from the EdgeZone's
     * {@link Phaser.GameObjects.Particles.Zones.EdgeZone#source}.
     *
     * Also updates internal properties.
     *
     * @method Phaser.GameObjects.Particles.Zones.EdgeZone#updateSource
     * @since 3.0.0
     *
     * @return {this} This Edge Zone.
     */
    public function updateSource():Dynamic;
    /**
     * Change the source of the EdgeZone.
     *
     * @method Phaser.GameObjects.Particles.Zones.EdgeZone#changeSource
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.EdgeZoneSource} source - An object instance with a `getPoints(quantity, stepRate)` method returning an array of points.
     *
     * @return {this} This Edge Zone.
     */
    public function changeSource(source:phaser.types.gameobjects.particles.EdgeZoneSource):Dynamic;
    /**
     * Get the next point in the Zone and set its coordinates on the given Particle.
     *
     * @method Phaser.GameObjects.Particles.Zones.EdgeZone#getPoint
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Particles.Particle} particle - The Particle.
     */
    public function getPoint(particle:phaser.gameobjects.particles.Particle):Void;
}
