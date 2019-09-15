package phaser.physics.matter;

/**
 * @classdesc
 * [description]
 *
 * @class World
 * @extends Phaser.Events.EventEmitter
 * @memberof Phaser.Physics.Matter
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Matter World instance belongs.
 * @param {Phaser.Types.Physics.Matter.MatterWorldConfig} config - The Matter World configuration object.
 */
@:native("Phaser.Physics.Matter.World")
extern class World extends phaser.events.EventEmitter {
    public function new(scene:phaser.Scene, config:phaser.types.physics.matter.MatterWorldConfig);
    /**
     * The Scene to which this Matter World instance belongs.
     *
     * @name Phaser.Physics.Matter.World#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * An instance of the MatterJS Engine.
     *
     * @name Phaser.Physics.Matter.World#engine
     * @type {MatterJS.Engine}
     * @since 3.0.0
     */
    public var engine:matterjs.Engine;
    /**
     * A `World` composite object that will contain all simulated bodies and constraints.
     *
     * @name Phaser.Physics.Matter.World#localWorld
     * @type {MatterJS.World}
     * @since 3.0.0
     */
    public var localWorld:matterjs.World;
    /**
     * An object containing the 4 wall bodies that bound the physics world.
     *
     * @name Phaser.Physics.Matter.World#walls
     * @type {object}
     * @since 3.0.0
     */
    public var walls:Dynamic;
    /**
     * A flag that toggles if the world is enabled or not.
     *
     * @name Phaser.Physics.Matter.World#enabled
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var enabled:Bool;
    /**
     * The correction argument is an optional Number that specifies the time correction factor to apply to the update.
     * This can help improve the accuracy of the simulation in cases where delta is changing between updates.
     * The value of correction is defined as delta / lastDelta, i.e. the percentage change of delta over the last step.
     * Therefore the value is always 1 (no correction) when delta constant (or when no correction is desired, which is the default).
     * See the paper on Time Corrected Verlet for more information.
     *
     * @name Phaser.Physics.Matter.World#correction
     * @type {number}
     * @default 1
     * @since 3.4.0
     */
    public var correction:Float;
    /**
     * This function is called every time the core game loop steps, which is bound to the
     * Request Animation Frame frequency unless otherwise modified.
     *
     * The function is passed two values: `time` and `delta`, both of which come from the game step values.
     *
     * It must return a number. This number is used as the delta value passed to Matter.Engine.update.
     *
     * You can override this function with your own to define your own timestep.
     *
     * If you need to update the Engine multiple times in a single game step then call
     * `World.update` as many times as required. Each call will trigger the `getDelta` function.
     * If you wish to have full control over when the Engine updates then see the property `autoUpdate`.
     *
     * You can also adjust the number of iterations that Engine.update performs.
     * Use the Scene Matter Physics config object to set the following properties:
     *
     * positionIterations (defaults to 6)
     * velocityIterations (defaults to 4)
     * constraintIterations (defaults to 2)
     *
     * Adjusting these values can help performance in certain situations, depending on the physics requirements
     * of your game.
     *
     * @name Phaser.Physics.Matter.World#getDelta
     * @type {function}
     * @since 3.4.0
     */
    public var getDelta:Dynamic;
    /**
     * Automatically call Engine.update every time the game steps.
     * If you disable this then you are responsible for calling `World.step` directly from your game.
     * If you call `set60Hz` or `set30Hz` then `autoUpdate` is reset to `true`.
     *
     * @name Phaser.Physics.Matter.World#autoUpdate
     * @type {boolean}
     * @default true
     * @since 3.4.0
     */
    public var autoUpdate:Bool;
    /**
     * A flag that controls if the debug graphics will be drawn to or not.
     *
     * @name Phaser.Physics.Matter.World#drawDebug
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var drawDebug:Bool;
    /**
     * An instance of the Graphics object the debug bodies are drawn to, if enabled.
     *
     * @name Phaser.Physics.Matter.World#debugGraphic
     * @type {Phaser.GameObjects.Graphics}
     * @since 3.0.0
     */
    public var debugGraphic:phaser.gameobjects.Graphics;
    /**
     * The default configuration values.
     *
     * @name Phaser.Physics.Matter.World#defaults
     * @type {object}
     * @since 3.0.0
     */
    public var defaults:Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.World#setEventsProxy
     * @since 3.0.0
     */
    public function setEventsProxy():Void;
    /**
     * Sets the bounds of the Physics world to match the given world pixel dimensions.
     * You can optionally set which 'walls' to create: left, right, top or bottom.
     * If none of the walls are given it will default to use the walls settings it had previously.
     * I.e. if you previously told it to not have the left or right walls, and you then adjust the world size
     * the newly created bounds will also not have the left and right walls.
     * Explicitly state them in the parameters to override this.
     *
     * @method Phaser.Physics.Matter.World#setBounds
     * @since 3.0.0
     *
     * @param {number} [x=0] - The x coordinate of the top-left corner of the bounds.
     * @param {number} [y=0] - The y coordinate of the top-left corner of the bounds.
     * @param {number} [width] - The width of the bounds.
     * @param {number} [height] - The height of the bounds.
     * @param {number} [thickness=128] - The thickness of each wall, in pixels.
     * @param {boolean} [left=true] - If true will create the left bounds wall.
     * @param {boolean} [right=true] - If true will create the right bounds wall.
     * @param {boolean} [top=true] - If true will create the top bounds wall.
     * @param {boolean} [bottom=true] - If true will create the bottom bounds wall.
     *
     * @return {Phaser.Physics.Matter.World} This Matter World object.
     */
    public function setBounds(?x:Float, ?y:Float, ?width:Float, ?height:Float, ?thickness:Float, ?left:Bool, ?right:Bool, ?top:Bool, ?bottom:Bool):phaser.physics.matter.World;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.World#updateWall
     * @since 3.0.0
     *
     * @param {boolean} add - [description]
     * @param {string} position - [description]
     * @param {number} x - [description]
     * @param {number} y - [description]
     * @param {number} width - [description]
     * @param {number} height - [description]
     */
    public function updateWall(add:Bool, position:String, x:Float, y:Float, width:Float, height:Float):Void;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.World#createDebugGraphic
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.Graphics} [description]
     */
    public function createDebugGraphic():phaser.gameobjects.Graphics;
    /**
     * Sets the world's gravity and gravity scale to 0.
     *
     * @method Phaser.Physics.Matter.World#disableGravity
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Matter.World} This Matter World object.
     */
    public function disableGravity():phaser.physics.matter.World;
    /**
     * Sets the world's gravity
     *
     * @method Phaser.Physics.Matter.World#setGravity
     * @since 3.0.0
     *
     * @param {number} [x=0] - The world gravity x component.
     * @param {number} [y=1] - The world gravity y component.
     * @param {number} [scale] - [description]
     *
     * @return {Phaser.Physics.Matter.World} This Matter World object.
     */
    public function setGravity(?x:Float, ?y:Float, ?scale:Float):phaser.physics.matter.World;
    /**
     * Creates a rectangle Matter body and adds it to the world.
     *
     * @method Phaser.Physics.Matter.World#create
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of the body in the world.
     * @param {number} y - The vertical position of the body in the world.
     * @param {number} width - The width of the body.
     * @param {number} height - The height of the body.
     * @param {object} options - Optional Matter configuration object.
     *
     * @return {MatterJS.Body} The Matter.js body that was created.
     */
    public function create(x:Float, y:Float, width:Float, height:Float, options:Dynamic):matterjs.Body;
    /**
     * Adds an object to the world.
     *
     * @method Phaser.Physics.Matter.World#add
     * @since 3.0.0
     *
     * @param {(object|object[])} object - Can be single or an array, and can be a body, composite or constraint
     *
     * @return {Phaser.Physics.Matter.World} This Matter World object.
     */
    public function add(object:Dynamic):phaser.physics.matter.World;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.World#remove
     * @since 3.0.0
     *
     * @param {object} object - The object to be removed from the world.
     * @param {boolean} deep - [description]
     *
     * @return {Phaser.Physics.Matter.World} This Matter World object.
     */
    public function remove(object:Dynamic, deep:Bool):phaser.physics.matter.World;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.World#removeConstraint
     * @since 3.0.0
     *
     * @param {MatterJS.Constraint} constraint - [description]
     * @param {boolean} deep - [description]
     *
     * @return {Phaser.Physics.Matter.World} This Matter World object.
     */
    public function removeConstraint(constraint:matterjs.Constraint, deep:Bool):phaser.physics.matter.World;
    /**
     * Adds MatterTileBody instances for all the colliding tiles within the given tilemap layer. Set
     * the appropriate tiles in your layer to collide before calling this method!
     *
     * @method Phaser.Physics.Matter.World#convertTilemapLayer
     * @since 3.0.0
     *
     * @param {(Phaser.Tilemaps.DynamicTilemapLayer|Phaser.Tilemaps.StaticTilemapLayer)} tilemapLayer -
     * An array of tiles.
     * @param {object} [options] - Options to be passed to the MatterTileBody constructor. {@ee Phaser.Physics.Matter.TileBody}
     *
     * @return {Phaser.Physics.Matter.World} This Matter World object.
     */
    public function convertTilemapLayer(tilemapLayer:Dynamic, ?options:Dynamic):phaser.physics.matter.World;
    /**
     * Adds MatterTileBody instances for the given tiles. This adds bodies regardless of whether the
     * tiles are set to collide or not.
     *
     * @method Phaser.Physics.Matter.World#convertTiles
     * @since 3.0.0
     *
     * @param {Phaser.Tilemaps.Tile[]} tiles - An array of tiles.
     * @param {object} [options] - Options to be passed to the MatterTileBody constructor. {@see Phaser.Physics.Matter.TileBody}
     *
     * @return {Phaser.Physics.Matter.World} This Matter World object.
     */
    public function convertTiles(tiles:Array<phaser.tilemaps.Tile>, ?options:Dynamic):phaser.physics.matter.World;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.World#nextGroup
     * @since 3.0.0
     *
     * @param {boolean} isNonColliding - [description]
     *
     * @return {number} [description]
     */
    public function nextGroup(isNonColliding:Bool):Float;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.World#nextCategory
     * @since 3.0.0
     *
     * @return {number} Returns the next unique category bitfield.
     */
    public function nextCategory():Float;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.World#pause
     * @fires Phaser.Physics.Matter.Events#PAUSE
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Matter.World} This Matter World object.
     */
    public function pause():phaser.physics.matter.World;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.World#resume
     * @fires Phaser.Physics.Matter.Events#RESUME
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Matter.World} This Matter World object.
     */
    public function resume():phaser.physics.matter.World;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.World#update
     * @since 3.0.0
     *
     * @param {number} time - The current time. Either a High Resolution Timer value if it comes from Request Animation Frame, or Date.now if using SetTimeout.
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     */
    public function update(time:Float, delta:Float):Void;
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
     * @method Phaser.Physics.Matter.World#step
     * @since 3.4.0
     *
     * @param {number} [delta=16.666] - [description]
     * @param {number} [correction=1] - [description]
     */
    public function step(?delta:Float, ?correction:Float):Void;
    /**
     * Runs the Matter Engine.update at a fixed timestep of 60Hz.
     *
     * @method Phaser.Physics.Matter.World#update60Hz
     * @since 3.4.0
     *
     * @return {number} The delta value to be passed to Engine.update.
     */
    public function update60Hz():Float;
    /**
     * Runs the Matter Engine.update at a fixed timestep of 30Hz.
     *
     * @method Phaser.Physics.Matter.World#update30Hz
     * @since 3.4.0
     *
     * @return {number} The delta value to be passed to Engine.update.
     */
    public function update30Hz():Float;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.World#fromPath
     * @since 3.0.0
     *
     * @param {string} path - [description]
     * @param {array} points - [description]
     *
     * @return {array} [description]
     */
    public function fromPath(path:String, points:Array<Dynamic>):Array<Dynamic>;
    /**
     * Resets the internal collision IDs that Matter.JS uses for Body collision groups.
     *
     * You should call this before destroying your game if you need to restart the game
     * again on the same page, without first reloading the page. Or, if you wish to
     * consistently destroy a Scene that contains Matter.js and then run it again
     * later in the same game.
     *
     * @method Phaser.Physics.Matter.World#resetCollisionIDs
     * @since 3.17.0
     */
    public function resetCollisionIDs():Void;
}
