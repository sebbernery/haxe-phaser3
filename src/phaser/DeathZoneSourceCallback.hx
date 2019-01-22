package phaser;

/**
 * @callback DeathZoneSourceCallback
 *
 * @param {number} x - The x coordinate of the particle to check against this source area.
 * @param {number} y - The y coordinate of the particle to check against this source area.
 *
 * @return {boolean} - True if the coordinates are within the source area.
 */
typedef DeathZoneSourceCallback = Dynamic;
