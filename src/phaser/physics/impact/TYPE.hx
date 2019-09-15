package phaser.physics.impact;

/**
 * Collision Types - Determine if and how entities collide with each other.
 *
 * In ACTIVE vs. LITE or FIXED vs. ANY collisions, only the "weak" entity moves,
 * while the other one stays fixed. In ACTIVE vs. ACTIVE and ACTIVE vs. PASSIVE
 * collisions, both entities are moved. LITE or PASSIVE entities don't collide
 * with other LITE or PASSIVE entities at all. The behavior for FIXED vs.
 * FIXED collisions is undefined.
 *
 * @namespace Phaser.Physics.Impact.TYPE
 * @memberof Phaser.Physics.Impact
 * @since 3.0.0
 */
@:native("Phaser.Physics.Impact.TYPE")
class TYPE {
}
