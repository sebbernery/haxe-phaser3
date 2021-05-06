package phaser.types.cameras.scene2d;

/**
 * @typedef {object} Phaser.Types.Cameras.Scene2D.CameraConfig
 * @since 3.0.0
 *
 * @property {string} [name=''] - The name of the Camera.
 * @property {number} [x=0] - The horizontal position of the Camera viewport.
 * @property {number} [y=0] - The vertical position of the Camera viewport.
 * @property {number} [width] - The width of the Camera viewport.
 * @property {number} [height] - The height of the Camera viewport.
 * @property {number} [zoom=1] - The default zoom level of the Camera.
 * @property {number} [rotation=0] - The rotation of the Camera, in radians.
 * @property {boolean} [roundPixels=false] - Should the Camera round pixels before rendering?
 * @property {number} [scrollX=0] - The horizontal scroll position of the Camera.
 * @property {number} [scrollY=0] - The vertical scroll position of the Camera.
 * @property {(false|string)} [backgroundColor=false] - A CSS color string controlling the Camera background color.
 * @property {?object} [bounds] - Defines the Camera bounds.
 * @property {number} [bounds.x=0] - The top-left extent of the Camera bounds.
 * @property {number} [bounds.y=0] - The top-left extent of the Camera bounds.
 * @property {number} [bounds.width] - The width of the Camera bounds.
 * @property {number} [bounds.height] - The height of the Camera bounds.
 */
typedef CameraConfig = {
    @:optional var name:String;
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var width:Float;
    @:optional var height:Float;
    @:optional var zoom:Float;
    @:optional var rotation:Float;
    @:optional var roundPixels:Bool;
    @:optional var scrollX:Float;
    @:optional var scrollY:Float;
    @:optional var backgroundColor:Dynamic;
    @:optional var bounds:Dynamic;
};
