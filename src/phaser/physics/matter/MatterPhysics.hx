package phaser.physics.matter;

/**
 * @classdesc
 * [description]
 *
 * @class MatterPhysics
 * @memberof Phaser.Physics.Matter
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - [description]
 */
@:native("Phaser.Physics.Matter.MatterPhysics")
extern class MatterPhysics {
    public function new(scene:phaser.Scene);
    /**
     * [description]
     *
     * @name Phaser.Physics.Matter.MatterPhysics#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * [description]
     *
     * @name Phaser.Physics.Matter.MatterPhysics#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * [description]
     *
     * @name Phaser.Physics.Matter.MatterPhysics#config
     * @type {object}
     * @since 3.0.0
     */
    public var config:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Matter.MatterPhysics#world
     * @type {Phaser.Physics.Matter.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.matter.World;
    /**
     * [description]
     *
     * @name Phaser.Physics.Matter.MatterPhysics#add
     * @type {Phaser.Physics.Matter.Factory}
     * @since 3.0.0
     */
    public var add:phaser.physics.matter.Factory;
    /**
     * A reference to the `Matter.Vertices` module which contains methods for creating and manipulating sets of vertices.
     * A set of vertices is an array of `Matter.Vector` with additional indexing properties inserted by `Vertices.create`.
     * A `Matter.Body` maintains a set of vertices to represent the shape of the object (its convex hull).
     *
     * @name Phaser.Physics.Matter.MatterPhysics#verts
     * @type {MatterJS.Vertices}
     * @since 3.14.0
     */
    public var verts:matterjs.Vertices;
    /**
     * A reference to the `Matter.Body` module which contains methods for creating and manipulating body models.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#body
     * @type {MatterJS.Body}
     * @since 3.18.0
     */
    public var body:matterjs.Body;
    /**
     * A reference to the `Matter.Bodies` module which contains methods for creating bodies.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#bodies
     * @type {MatterJS.Bodies}
     * @since 3.18.0
     */
    public var bodies:matterjs.Bodies;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.MatterPhysics#getConfig
     * @since 3.0.0
     *
     * @return {object} [description]
     */
    public function getConfig():Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.MatterPhysics#enableAttractorPlugin
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Matter.MatterPhysics} This Matter Physics instance.
     */
    public function enableAttractorPlugin():phaser.physics.matter.MatterPhysics;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.MatterPhysics#enableWrapPlugin
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Matter.MatterPhysics} This Matter Physics instance.
     */
    public function enableWrapPlugin():phaser.physics.matter.MatterPhysics;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.MatterPhysics#pause
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Matter.World} The Matter World object.
     */
    public function pause():phaser.physics.matter.World;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.MatterPhysics#resume
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Matter.World} The Matter World object.
     */
    public function resume():phaser.physics.matter.World;
    /**
     * Sets the Matter Engine to run at fixed timestep of 60Hz and enables `autoUpdate`.
     * If you have set a custom `getDelta` function then this will override it.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#set60Hz
     * @since 3.4.0
     *
     * @return {Phaser.Physics.Matter.MatterPhysics} This Matter Physics instance.
     */
    public function set60Hz():phaser.physics.matter.MatterPhysics;
    /**
     * Sets the Matter Engine to run at fixed timestep of 30Hz and enables `autoUpdate`.
     * If you have set a custom `getDelta` function then this will override it.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#set30Hz
     * @since 3.4.0
     *
     * @return {Phaser.Physics.Matter.MatterPhysics} This Matter Physics instance.
     */
    public function set30Hz():phaser.physics.matter.MatterPhysics;
    /**
     * Manually advances the physics simulation by one iteration.
     *
     * You can optionally pass in the `delta` and `correction` values to be used by Engine.update.
     * If undefined they use the Matter defaults of 60Hz and no correction.
     *
     * Calling `step` directly bypasses any checks of `enabled` or `autoUpdate`.
     *
     * It also ignores any custom `getDelta` functions, as you should be passing the delta
     * value in to this call.
     *
     * You can adjust the number of iterations that Engine.update performs internally.
     * Use the Scene Matter Physics config object to set the following properties:
     *
     * positionIterations (defaults to 6)
     * velocityIterations (defaults to 4)
     * constraintIterations (defaults to 2)
     *
     * Adjusting these values can help performance in certain situations, depending on the physics requirements
     * of your game.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#step
     * @since 3.4.0
     *
     * @param {number} [delta=16.666] - [description]
     * @param {number} [correction=1] - [description]
     */
    public function step(?delta:Float, ?correction:Float):Void;
}
