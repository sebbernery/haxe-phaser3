package phaser.types.gameobjects.bitmaptext;

/**
 * @typedef {object} Phaser.Types.GameObjects.BitmapText.BitmapTextSize
 * @since 3.0.0
 *
 * @property {Phaser.Types.GameObjects.BitmapText.GlobalBitmapTextSize} global - The position and size of the BitmapText, taking into account the position and scale of the Game Object.
 * @property {Phaser.Types.GameObjects.BitmapText.LocalBitmapTextSize} local - The position and size of the BitmapText, taking just the font size into account.
 */
typedef BitmapTextSize = {
var global:phaser.types.gameobjects.bitmaptext.GlobalBitmapTextSize;
var local:phaser.types.gameobjects.bitmaptext.LocalBitmapTextSize;
};
