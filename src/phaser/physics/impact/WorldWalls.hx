package phaser.physics.impact;

/**
 * @typedef {object} Phaser.Physics.Impact.WorldWalls
 *
 * @property {?Phaser.Physics.Impact.Body} left - The left-side wall of the world bounds.
 * @property {?Phaser.Physics.Impact.Body} right - The right-side wall of the world bounds.
 * @property {?Phaser.Physics.Impact.Body} top - The top wall of the world bounds.
 * @property {?Phaser.Physics.Impact.Body} bottom - The bottom wall of the world bounds.
 */
typedef WorldWalls = {
var left:phaser.physics.impact.Body;
var right:phaser.physics.impact.Body;
var top:phaser.physics.impact.Body;
var bottom:phaser.physics.impact.Body;
};
