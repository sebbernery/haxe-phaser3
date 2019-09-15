package phaser.physics.arcade.components;

/**
 * Provides methods used for setting the debug properties of an Arcade Physics Body.
 *
 * @namespace Phaser.Physics.Arcade.Components.Debug
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Debug")
extern class Debug {
    public function new();
    /**
     * Set to `true` to have this body render its outline to the debug display.
     *
     * @name Phaser.Physics.Arcade.Components.Debug#debugShowBody
     * @type {boolean}
     * @since 3.0.0
     */
    public var debugShowBody:Bool;
    /**
     * Set to `true` to have this body render a velocity marker to the debug display.
     *
     * @name Phaser.Physics.Arcade.Components.Debug#debugShowVelocity
     * @type {boolean}
     * @since 3.0.0
     */
    public var debugShowVelocity:Bool;
    /**
     * The color of the body outline when it renders to the debug display.
     *
     * @name Phaser.Physics.Arcade.Components.Debug#debugBodyColor
     * @type {number}
     * @since 3.0.0
     */
    public var debugBodyColor:Float;
    /**
     * Sets the debug values of this body.
     *
     * Bodies will only draw their debug if debug has been enabled for Arcade Physics as a whole.
     * Note that there is a performance cost in drawing debug displays. It should never be used in production.
     *
     * @method Phaser.Physics.Arcade.Components.Debug#setDebug
     * @since 3.0.0
     *
     * @param {boolean} showBody - Set to `true` to have this body render its outline to the debug display.
     * @param {boolean} showVelocity - Set to `true` to have this body render a velocity marker to the debug display.
     * @param {number} bodyColor - The color of the body outline when rendered to the debug display.
     *
     * @return {this} This Game Object.
     */
    public function setDebug(showBody:Bool, showVelocity:Bool, bodyColor:Float):Dynamic;
    /**
     * Sets the color of the body outline when it renders to the debug display.
     *
     * @method Phaser.Physics.Arcade.Components.Debug#setDebugBodyColor
     * @since 3.0.0
     *
     * @param {number} value - The color of the body outline when rendered to the debug display.
     *
     * @return {this} This Game Object.
     */
    public function setDebugBodyColor(value:Float):Dynamic;
}
