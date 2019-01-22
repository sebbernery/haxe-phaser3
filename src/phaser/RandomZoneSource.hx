package phaser;

/**
 * @typedef {object} RandomZoneSource
 *
 * @property {RandomZoneSourceCallback} getRandomPoint - A function modifying its point argument.
 *
 * @see Phaser.Geom.Circle
 * @see Phaser.Geom.Ellipse
 * @see Phaser.Geom.Line
 * @see Phaser.Geom.Polygon
 * @see Phaser.Geom.Rectangle
 * @see Phaser.Geom.Triangle
 */
typedef RandomZoneSource = {
var getRandomPoint:RandomZoneSourceCallback;
};
