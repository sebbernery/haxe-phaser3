package phaser.types.textures;

/**
 * @typedef {object} Phaser.Types.Textures.SpriteSheetConfig
 * @since 3.0.0
 *
 * @property {integer} frameWidth - The fixed width of each frame.
 * @property {integer} [frameHeight] - The fixed height of each frame. If not set it will use the frameWidth as the height.
 * @property {integer} [startFrame=0] - Skip a number of frames. Useful when there are multiple sprite sheets in one Texture.
 * @property {integer} [endFrame=-1] - The total number of frames to extract from the Sprite Sheet. The default value of -1 means "extract all frames".
 * @property {integer} [margin=0] - If the frames have been drawn with a margin, specify the amount here.
 * @property {integer} [spacing=0] - If the frames have been drawn with spacing between them, specify the amount here.
 */
typedef SpriteSheetConfig = {
var frameWidth:Int;
    @:optional var frameHeight:Int;
    @:optional var startFrame:Int;
    @:optional var endFrame:Int;
    @:optional var margin:Int;
    @:optional var spacing:Int;
};
