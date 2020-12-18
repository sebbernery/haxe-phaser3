package phaser;

/**
 * @callback ArcadePhysicsCallback
 *
 * A callback receiving two Game Objects.
 *
 * When colliding a single sprite with a Group or TilemapLayer, `object1` is always the sprite.
 *
 * For all other cases, `object1` and `object2` match the same arguments in `collide()` or `overlap()`.
 *
 * @param {Phaser.GameObjects.GameObject} object1 - The first Game Object.
 * @param {Phaser.GameObjects.GameObject} object2 - The second Game Object.
 */
typedef ArcadePhysicsCallback = Dynamic;
