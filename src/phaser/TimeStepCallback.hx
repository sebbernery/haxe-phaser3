package phaser;

/**
 * @callback TimeStepCallback
 *
 * @param {number} time - The current time. Either a High Resolution Timer value if it comes from Request Animation Frame, or Date.now if using SetTimeout.
 * @param {number} average - The Delta Average.
 * @param {number} interpolation - Interpolation - how far between what is expected and where we are?
 */
typedef TimeStepCallback = Dynamic;
