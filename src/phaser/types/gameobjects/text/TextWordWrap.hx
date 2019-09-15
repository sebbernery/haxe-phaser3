package phaser.types.gameobjects.text;

/**
 * A Text Word Wrap configuration object as used by the Text Style configuration.
 *
 * @typedef {object} Phaser.Types.GameObjects.Text.TextWordWrap
 * @since 3.0.0
 *
 * @property {number} [width] - The width at which text should be considered for word-wrapping.
 * @property {TextStyleWordWrapCallback} [callback] - Provide a custom callback when word wrapping is enabled.
 * @property {any} [callbackScope] - The context in which the word wrap callback is invoked.
 * @property {boolean} [useAdvancedWrap=false] - Use basic or advanced word wrapping?
 */
typedef TextWordWrap = {
    @:optional var width:Float;
    @:optional var callback:TextStyleWordWrapCallback;
    @:optional var callbackScope:Dynamic;
    @:optional var useAdvancedWrap:Bool;
};
