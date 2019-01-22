package phaser.gameobjects.components;

/**
 * Provides methods used for getting and setting the scale of a Game Object.
 *
 * @name Phaser.GameObjects.Components.ScaleMode
 * @since 3.0.0
 */
@:native("Phaser.GameObjects.Components.ScaleMode")
extern class ScaleMode {
    public function new();
    /**
     * The Scale Mode being used by this Game Object.
     * Can be either `ScaleModes.LINEAR` or `ScaleModes.NEAREST`.
     *
     * @name Phaser.GameObjects.Components.ScaleMode#scaleMode
     * @type {Phaser.ScaleModes}
     * @since 3.0.0
     */
    public var scaleMode:Dynamic;
    /**
     * Sets the Scale Mode being used by this Game Object.
     * Can be either `ScaleModes.LINEAR` or `ScaleModes.NEAREST`.
     *
     * @method Phaser.GameObjects.Components.ScaleMode#setScaleMode
     * @since 3.0.0
     *
     * @param {Phaser.ScaleModes} value - The Scale Mode to be used by this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setScaleMode(value:Dynamic):Dynamic;
}
