package phaser;

/**
 * @callback DisplayCallback
 *
 * @param {DisplayCallbackConfig} display - Settings of the character that is about to be rendered.
 *
 * @return {{x:number, y:number, scale:number, rotation:number}} Altered position, scale and rotation values for the character that is about to be rendered.
 */
typedef DisplayCallback = Dynamic;
