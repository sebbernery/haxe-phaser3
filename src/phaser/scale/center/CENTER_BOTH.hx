package phaser.scale.center;

/**
 * The game canvas is centered both horizontally and vertically within the parent.
 * To do this, the parent has to have a bounds that can be calculated and not be empty.
 *
 * Centering is achieved by setting the margin left and top properties of the
 * game canvas, and does not factor in any other CSS styles you may have applied.
 *
 * @name Phaser.Scale.Center.CENTER_BOTH
 * @since 3.16.0
 */
@:native("Phaser.Scale.Center.CENTER_BOTH")
extern class CENTER_BOTH {
    public function new();
}
