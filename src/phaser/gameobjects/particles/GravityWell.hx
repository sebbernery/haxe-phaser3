package phaser.gameobjects.particles;

/**
 * @classdesc
 * The GravityWell action applies a force on the particle to draw it towards, or repel it from, a single point.
 *
 * The force applied is inversely proportional to the square of the distance from the particle to the point, in accordance with Newton's law of gravity.
 *
 * This simulates the effect of gravity over large distances (as between planets, for example).
 *
 * @class GravityWell
 * @memberof Phaser.GameObjects.Particles
 * @constructor
 * @since 3.0.0
 *
 * @param {(number|GravityWellConfig)} [x=0] - The x coordinate of the Gravity Well, in world space.
 * @param {number} [y=0] - The y coordinate of the Gravity Well, in world space.
 * @param {number} [power=0] - The strength of the gravity force - larger numbers produce a stronger force.
 * @param {number} [epsilon=100] - The minimum distance for which the gravity force is calculated.
 * @param {number} [gravity=50] - The gravitational force of this Gravity Well.
 */
@:native("Phaser.GameObjects.Particles.GravityWell")
extern class GravityWell {
    public function new(?x:Dynamic, ?y:Float, ?power:Float, ?epsilon:Float, ?gravity:Float);
    /**
     * The x coordinate of the Gravity Well, in world space.
     *
     * @name Phaser.GameObjects.Particles.GravityWell#x
     * @type {number}
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y coordinate of the Gravity Well, in world space.
     *
     * @name Phaser.GameObjects.Particles.GravityWell#y
     * @type {number}
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The active state of the Gravity Well. An inactive Gravity Well will not influence any particles.
     *
     * @name Phaser.GameObjects.Particles.GravityWell#active
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var active:Bool;
    /**
     * The strength of the gravity force - larger numbers produce a stronger force.
     *
     * @name Phaser.GameObjects.Particles.GravityWell#power
     * @type {number}
     * @since 3.0.0
     */
    public var power:Float;
    /**
     * The minimum distance for which the gravity force is calculated.
     *
     * @name Phaser.GameObjects.Particles.GravityWell#epsilon
     * @type {number}
     * @since 3.0.0
     */
    public var epsilon:Float;
    /**
     * Takes a Particle and updates it based on the properties of this Gravity Well.
     *
     * @method Phaser.GameObjects.Particles.GravityWell#update
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Particles.Particle} particle - The Particle to update.
     * @param {number} delta - The delta time in ms.
     * @param {number} step - The delta value divided by 1000.
     */
    public function update(particle:phaser.gameobjects.particles.Particle, delta:Float, step:Float):Void;
}
