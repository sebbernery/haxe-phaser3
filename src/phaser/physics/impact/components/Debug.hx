package phaser.physics.impact.components;

/**
 * The Impact Debug component.
 * Should be applied as a mixin.
 *
 * @namespace Phaser.Physics.Impact.Components.Debug
 * @since 3.0.0
 */
@:native("Phaser.Physics.Impact.Components.Debug")
extern class Debug {
    public function new();
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Components.Debug#debugShowBody
     * @type {boolean}
     * @since 3.0.0
     */
    public var debugShowBody:Bool;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Components.Debug#debugShowVelocity
     * @type {boolean}
     * @since 3.0.0
     */
    public var debugShowVelocity:Bool;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Components.Debug#debugBodyColor
     * @type {number}
     * @since 3.0.0
     */
    public var debugBodyColor:Float;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.Debug#setDebug
     * @since 3.0.0
     *
     * @param {boolean} showBody - [description]
     * @param {boolean} showVelocity - [description]
     * @param {number} bodyColor - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setDebug(showBody:Bool, showVelocity:Bool, bodyColor:Float):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.Debug#setDebugBodyColor
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setDebugBodyColor(value:Float):phaser.gameobjects.GameObject;
}
