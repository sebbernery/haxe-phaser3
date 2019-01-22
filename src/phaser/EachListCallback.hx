package phaser;

/**
 * @callback EachListCallback
 * @generic I - [item]
 *
 * @param {*} item - The item which is currently being processed.
 * @param {...*} [args] - Additional arguments that will be passed to the callback, after the child.
 */
typedef EachListCallback = Dynamic;
