package phaser;

/**
 * @typedef {object} ScaleConfig
 *
 * @property {(integer|string)} [width=1024] - The base width of your game.
 * @property {(integer|string)} [height=768] - The base height of your game.
 * @property {integer} [zoom=1] - The zoom value of the game canvas.
 * @property {number} [resolution=1] - The rendering resolution of the canvas.
 * @property {(HTMLElement|string)} [parent] - The DOM element that will contain the game canvas, or its `id`. If null (the default) or if the named element doesn't exist, the game canvas is inserted directly into the document body.
 * @property {integer} [mode=0] - The scale mode to apply to the canvas. SHOW_ALL, EXACT_FIT, USER_SCALE, or RESIZE.
 * @property {integer} [minWidth] - The minimum width the canvas can be scaled down to.
 * @property {integer} [minHeight] - The minimum height the canvas can be scaled down to.
 * @property {integer} [maxWidth] - The maximum width the canvas can be scaled up to.
 * @property {integer} [maxHeight] - The maximum height the canvas can be scaled up to.
 */
typedef ScaleConfig = {
    @:optional var width:Dynamic;
    @:optional var height:Dynamic;
    @:optional var zoom:Int;
    @:optional var resolution:Float;
    @:optional var parent:Dynamic;
    @:optional var mode:Int;
    @:optional var minWidth:Int;
    @:optional var minHeight:Int;
    @:optional var maxWidth:Int;
    @:optional var maxHeight:Int;
};
