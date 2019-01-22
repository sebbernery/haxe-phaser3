package phaser.physics.arcade.components;

/**
 * [description]
 *
 * @name Phaser.Physics.Arcade.Components.Debug
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Debug")
extern class Debug {
    public function new();
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Components.Debug#debugShowBody
     * @type {boolean}
     * @since 3.0.0
     */
    public var debugShowBody:Bool;
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Components.Debug#debugShowVelocity
     * @type {boolean}
     * @since 3.0.0
     */
    public var debugShowVelocity:Bool;
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Components.Debug#debugBodyColor
     * @type {number}
     * @since 3.0.0
     */
    public var debugBodyColor:Float;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Debug#setDebug
     * @since 3.0.0
     *
     * @param {boolean} showBody - [description]
     * @param {boolean} showVelocity - [description]
     * @param {number} bodyColor - [description]
     *
     * @return {this} This Game Object.
     */
    public function setDebug(showBody:Bool, showVelocity:Bool, bodyColor:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Debug#setDebugBodyColor
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setDebugBodyColor(value:Float):Dynamic;
}
