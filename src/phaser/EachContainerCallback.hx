package phaser;

/**
 * @callback EachContainerCallback
 * @generic I - [item]
 *
 * @param {*} item - The child Game Object of the Container.
 * @param {...*} [args] - Additional arguments that will be passed to the callback, after the child.
 */
typedef EachContainerCallback = Dynamic;
