package phaser.types.gameobjects.text;

/**
 * @typedef {object} Phaser.Types.GameObjects.Text.TextConfig
 * @extends Phaser.Types.GameObjects.GameObjectConfig
 * @since 3.0.0
 *
 * @property {(string|string[])} [text] - The text this Text object will display.
 * @property {Phaser.Types.GameObjects.Text.TextStyle} [style] - The Text style configuration object.
 * @property {Phaser.Types.GameObjects.Text.TextPadding} [padding] - A Text Padding object.
 */
typedef TextConfig = {
    @:optional var text:Dynamic;
    @:optional var style:phaser.types.gameobjects.text.TextStyle;
    @:optional var padding:phaser.types.gameobjects.text.TextPadding;
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var depth:Float;
    @:optional var flipX:Bool;
    @:optional var flipY:Bool;
    @:optional var scale:Dynamic;
    @:optional var scrollFactor:Dynamic;
    @:optional var rotation:Float;
    @:optional var angle:Float;
    @:optional var alpha:Float;
    @:optional var origin:Dynamic;
    @:optional var scaleMode:Float;
    @:optional var blendMode:Float;
    @:optional var visible:Bool;
    @:optional var add:Bool;
};
