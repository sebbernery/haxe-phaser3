package phaser;

/**
 * @typedef {object} GetTilesWithinFilteringOptions
 *
 * @property {boolean} [isNotEmpty=false] - If true, only return tiles that don't have -1 for an index.
 * @property {boolean} [isColliding=false] - If true, only return tiles that collide on at least one side.
 * @property {boolean} [hasInterestingFace=false] - If true, only return tiles that have at least one interesting face.
 */
typedef GetTilesWithinFilteringOptions = {
    @:optional var isNotEmpty:Bool;
    @:optional var isColliding:Bool;
    @:optional var hasInterestingFace:Bool;
};
