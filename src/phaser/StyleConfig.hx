package phaser;

/**
 * @typedef {object} StyleConfig
 *
 * @property {?number} [tileColor=blue] - Color to use for drawing a filled rectangle at non-colliding tile locations. If set to null, non-colliding tiles will not be drawn.
 * @property {?number} [collidingTileColor=orange] - Color to use for drawing a filled rectangle at colliding tile locations. If set to null, colliding tiles will not be drawn.
 * @property {?number} [faceColor=grey] - Color to use for drawing a line at interesting tile faces. If set to null, interesting tile faces will not be drawn.
 */
typedef StyleConfig = {
    @:optional var tileColor:Float;
    @:optional var collidingTileColor:Float;
    @:optional var faceColor:Float;
};
