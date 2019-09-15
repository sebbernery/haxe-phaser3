package phaser.types.input.keyboard;

/**
 * @typedef {object} Phaser.Types.Input.Keyboard.CursorKeys
 * @since 3.0.0
 *
 * @property {Phaser.Input.Keyboard.Key} [up] - A Key object mapping to the UP arrow key.
 * @property {Phaser.Input.Keyboard.Key} [down] - A Key object mapping to the DOWN arrow key.
 * @property {Phaser.Input.Keyboard.Key} [left] - A Key object mapping to the LEFT arrow key.
 * @property {Phaser.Input.Keyboard.Key} [right] - A Key object mapping to the RIGHT arrow key.
 * @property {Phaser.Input.Keyboard.Key} [space] - A Key object mapping to the SPACE BAR key.
 * @property {Phaser.Input.Keyboard.Key} [shift] - A Key object mapping to the SHIFT key.
 */
typedef CursorKeys = {
    @:optional var up:phaser.input.keyboard.Key;
    @:optional var down:phaser.input.keyboard.Key;
    @:optional var left:phaser.input.keyboard.Key;
    @:optional var right:phaser.input.keyboard.Key;
    @:optional var space:phaser.input.keyboard.Key;
    @:optional var shift:phaser.input.keyboard.Key;
};
