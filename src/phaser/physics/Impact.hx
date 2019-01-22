package phaser.physics;

/**
 * An Impact.js compatible physics world, body and solver, for those who are used
 * to the Impact way of defining and controlling physics bodies. Also works with
 * the new Loader support for Weltmeister map data.
 *
 * World updated to run off the Phaser main loop.
 * Body extended to support additional setter functions.
 *
 * To create the map data you'll need Weltmeister, which comes with Impact
 * and can be purchased from http://impactjs.com
 *
 * My thanks to Dominic Szablewski for his permission to support Impact in Phaser.
 *
 * @namespace Phaser.Physics.Impact
 */
@:native("Phaser.Physics.Impact")
class Impact {
    /**
     * Collision Types - Determine if and how entities collide with each other.
     *
     * In ACTIVE vs. LITE or FIXED vs. ANY collisions, only the "weak" entity moves,
     * while the other one stays fixed. In ACTIVE vs. ACTIVE and ACTIVE vs. PASSIVE
     * collisions, both entities are moved. LITE or PASSIVE entities don't collide
     * with other LITE or PASSIVE entities at all. The behavior for FIXED vs.
     * FIXED collisions is undefined.
     *
     * @name Phaser.Physics.Impact.COLLIDES
     * @enum {integer}
     * @memberof Phaser.Physics.Impact
     * @readonly
     * @since 3.0.0
     */
    static public var COLLIDES:Int;
    /**
     * Collision Types - Determine if and how entities collide with each other.
     *
     * In ACTIVE vs. LITE or FIXED vs. ANY collisions, only the "weak" entity moves,
     * while the other one stays fixed. In ACTIVE vs. ACTIVE and ACTIVE vs. PASSIVE
     * collisions, both entities are moved. LITE or PASSIVE entities don't collide
     * with other LITE or PASSIVE entities at all. The behavior for FIXED vs.
     * FIXED collisions is undefined.
     *
     * @name Phaser.Physics.Impact.TYPE
     * @enum {integer}
     * @memberof Phaser.Physics.Impact
     * @readonly
     * @since 3.0.0
     */
    static public var TYPE:Int;
}
