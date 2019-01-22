package phaser.physics.impact;

/**
 * @classdesc
 * [description]
 *
 * @class ImpactPhysics
 * @memberof Phaser.Physics.Impact
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - [description]
 */
@:native("Phaser.Physics.Impact.ImpactPhysics")
extern class ImpactPhysics {
    public function new(scene:phaser.Scene);
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.ImpactPhysics#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.ImpactPhysics#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.ImpactPhysics#config
     * @type {object}
     * @since 3.0.0
     */
    public var config:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.ImpactPhysics#world
     * @type {Phaser.Physics.Impact.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.impact.World;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.ImpactPhysics#add
     * @type {Phaser.Physics.Impact.Factory}
     * @since 3.0.0
     */
    public var add:phaser.physics.impact.Factory;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.ImpactPhysics#getConfig
     * @since 3.0.0
     *
     * @return {object} [description]
     */
    public function getConfig():Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.ImpactPhysics#pause
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Impact.World} The Impact World object.
     */
    public function pause():phaser.physics.impact.World;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.ImpactPhysics#resume
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Impact.World} The Impact World object.
     */
    public function resume():phaser.physics.impact.World;
}
