package phaser.scale;

/**
 * No scaling happens at all. The canvas is set to the size given in the game config and Phaser doesn't change it
 * again from that point on. If you change the canvas size, either via CSS, or directly via code, then you need
 * to call the Scale Managers `resize` method to give the new dimensions, or input events will stop working.
 *
 * @name Phaser.Scale.ScaleModes.NONE
 * @since 3.16.0
 */
@:native("Phaser.Scale.NONE")
extern class NONE {
    public function new();
}
