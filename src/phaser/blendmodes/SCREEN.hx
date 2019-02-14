package phaser.blendmodes;

/**
 * Screen blend mode. For Canvas and WebGL.
 * The pixels are inverted, multiplied, and inverted again. A lighter picture is the result (opposite of multiply)
 *
 * @name Phaser.BlendModes.SCREEN
 */
@:native("Phaser.BlendModes.SCREEN")
extern class SCREEN {
    public function new();
}
