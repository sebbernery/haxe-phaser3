package phaser;

/**
 * @typedef {object} EdgeZoneSource
 *
 * @property {EdgeZoneSourceCallback} getPoints - A function placing points on the source's edge or edges.
 *
 * @see Phaser.Curves.Curve
 * @see Phaser.Curves.Path
 * @see Phaser.Geom.Circle
 * @see Phaser.Geom.Ellipse
 * @see Phaser.Geom.Line
 * @see Phaser.Geom.Polygon
 * @see Phaser.Geom.Rectangle
 * @see Phaser.Geom.Triangle
 */
typedef EdgeZoneSource = {
var getPoints:EdgeZoneSourceCallback;
};
