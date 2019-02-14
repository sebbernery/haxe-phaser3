package phaser.scale;

/**
 * The game canvas is centered both vertically within the parent.
 * To do this, the parent has to have a bounds that can be calculated and not be empty.
 *
 * Centering is achieved by setting the margin left and top properties of the
 * game canvas, and does not factor in any other CSS styles you may have applied.
 *
 * @name Phaser.Scale.Center.CENTER_VERTICALLY
 * @since 3.16.0
 */
@:native("Phaser.Scale.CENTER_VERTICALLY")
extern class CENTER_VERTICALLY {
    public function new();
}
