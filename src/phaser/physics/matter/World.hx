package phaser.physics.matter;

/**
 * @classdesc
 * The Matter World class is responsible for managing one single instance of a Matter Physics World for Phaser.
 *
 * Access this via `this.matter.world` from within a Scene.
 *
 * This class creates a Matter JS World Composite along with the Matter JS Engine during instantiation. It also
 * handles delta timing, bounds, body and constraint creation and debug drawing.
 *
 * If you wish to access the Matter JS World object directly, see the `localWorld` property.
 * If you wish to access the Matter Engine directly, see the `engine` property.
 *
 * This class is an Event Emitter and will proxy _all_ Matter JS events, as they are received.
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
    public var engine:Dynamic;
    /**
     * A `World` composite object that will contain all simulated bodies and constraints.
     *
     * @name Phaser.Physics.Matter.World#localWorld
     * @type {MatterJS.World}
     * @since 3.0.0
     */
    public var localWorld:Dynamic;
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
     * Therefore the value is always 1 (no correction) when delta is constant (or when no correction is desired, which is the default).
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
     * The Matter JS Runner Configuration object.
     *
     * This object is populated via the Matter Configuration object's `runner` property and is
     * updated constantly during the game step.
     *
     * @name Phaser.Physics.Matter.World#runner
     * @type {Phaser.Types.Physics.Matter.MatterRunnerConfig}
     * @since 3.22.0
     */
    public var runner:phaser.types.physics.matter.MatterRunnerConfig;
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
     * The debug configuration object.
     *
     * The values stored in this object are read from the Matter World Config `debug` property.
     *
     * When a new Body or Constraint is _added to the World_, they are given the values stored in this object,
     * unless they have their own `render` object set that will override them.
     *
     * Note that while you can modify the values of properties in this object at run-time, it will not change
     * any of the Matter objects _already added_. It will only impact objects newly added to the world, or one
     * that is removed and then re-added at a later time.
     *
     * @name Phaser.Physics.Matter.World#debugConfig
     * @type {Phaser.Types.Physics.Matter.MatterDebugConfig}
     * @since 3.22.0
     */
    public var debugConfig:phaser.types.physics.matter.MatterDebugConfig;
    /**
     * Sets the debug render style for the children of the given Matter Composite.
     *
     * Composites themselves do not render, but they can contain bodies, constraints and other composites that may do.
     * So the children of this composite are passed to the `setBodyRenderStyle`, `setCompositeRenderStyle` and
     * `setConstraintRenderStyle` methods accordingly.
     *
     * @method Phaser.Physics.Matter.World#setCompositeRenderStyle
     * @since 3.22.0
     *
     * @param {MatterJS.CompositeType} composite - The Matter Composite to set the render style on.
     *
     * @return {this} This Matter World instance for method chaining.
     */
    public function setCompositeRenderStyle(composite:Dynamic):Dynamic;
    /**
     * Sets the debug render style for the given Matter Body.
     *
     * If you are using this on a Phaser Game Object, such as a Matter Sprite, then pass in the body property
     * to this method, not the Game Object itself.
     *
     * If you wish to skip a parameter, so it retains its current value, pass `false` for it.
     *
     * If you wish to reset the Body render colors to the defaults found in the World Debug Config, then call
     * this method with just the `body` parameter provided and no others.
     *
     * @method Phaser.Physics.Matter.World#setBodyRenderStyle
     * @since 3.22.0
     *
     * @param {MatterJS.BodyType} body - The Matter Body to set the render style on.
     * @param {number} [lineColor] - The line color. If `null` it will use the World Debug Config value.
     * @param {number} [lineOpacity] - The line opacity, between 0 and 1. If `null` it will use the World Debug Config value.
     * @param {number} [lineThickness] - The line thickness. If `null` it will use the World Debug Config value.
     * @param {number} [fillColor] - The fill color. If `null` it will use the World Debug Config value.
     * @param {number} [fillOpacity] - The fill opacity, between 0 and 1. If `null` it will use the World Debug Config value.
     *
     * @return {this} This Matter World instance for method chaining.
     */
    public function setBodyRenderStyle(body:Dynamic, ?lineColor:Float, ?lineOpacity:Float, ?lineThickness:Float, ?fillColor:Float, ?fillOpacity:Float):Dynamic;
    /**
     * Sets the debug render style for the given Matter Constraint.
     *
     * If you are using this on a Phaser Game Object, then pass in the body property
     * to this method, not the Game Object itself.
     *
     * If you wish to skip a parameter, so it retains its current value, pass `false` for it.
     *
     * If you wish to reset the Constraint render colors to the defaults found in the World Debug Config, then call
     * this method with just the `constraint` parameter provided and no others.
     *
     * @method Phaser.Physics.Matter.World#setConstraintRenderStyle
     * @since 3.22.0
     *
     * @param {MatterJS.ConstraintType} constraint - The Matter Constraint to set the render style on.
     * @param {number} [lineColor] - The line color. If `null` it will use the World Debug Config value.
     * @param {number} [lineOpacity] - The line opacity, between 0 and 1. If `null` it will use the World Debug Config value.
     * @param {number} [lineThickness] - The line thickness. If `null` it will use the World Debug Config value.
     * @param {number} [pinSize] - If this constraint is a pin, this sets the size of the pin circle. If `null` it will use the World Debug Config value.
     * @param {number} [anchorColor] - The color used when rendering this constraints anchors.  If `null` it will use the World Debug Config value.
     * @param {number} [anchorSize] - The size of the anchor circle, if this constraint has anchors. If `null` it will use the World Debug Config value.
     *
     * @return {this} This Matter World instance for method chaining.
     */
    public function setConstraintRenderStyle(constraint:Dynamic, ?lineColor:Float, ?lineOpacity:Float, ?lineThickness:Float, ?pinSize:Float, ?anchorColor:Float, ?anchorSize:Float):Dynamic;
    /**
     * This internal method acts as a proxy between all of the Matter JS events and then re-emits them
     * via this class.
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
     * @param {number} [thickness=64] - The thickness of each wall, in pixels.
     * @param {boolean} [left=true] - If true will create the left bounds wall.
     * @param {boolean} [right=true] - If true will create the right bounds wall.
     * @param {boolean} [top=true] - If true will create the top bounds wall.
     * @param {boolean} [bottom=true] - If true will create the bottom bounds wall.
     *
     * @return {Phaser.Physics.Matter.World} This Matter World object.
     */
    public function setBounds(?x:Float, ?y:Float, ?width:Float, ?height:Float, ?thickness:Float, ?left:Bool, ?right:Bool, ?top:Bool, ?bottom:Bool):phaser.physics.matter.World;
    /**
     * Updates the 4 rectangle bodies that were created, if `setBounds` was set in the Matter config, to use
     * the new positions and sizes. This method is usually only called internally via the `setBounds` method.
     *
     * @method Phaser.Physics.Matter.World#updateWall
     * @since 3.0.0
     *
     * @param {boolean} add - `true` if the walls are being added or updated, `false` to remove them from the world.
     * @param {string} [position] - Either `left`, `right`, `top` or `bottom`. Only optional if `add` is `false`.
     * @param {number} [x] - The horizontal position to place the walls at. Only optional if `add` is `false`.
     * @param {number} [y] - The vertical position to place the walls at. Only optional if `add` is `false`.
     * @param {number} [width] - The width of the walls, in pixels. Only optional if `add` is `false`.
     * @param {number} [height] - The height of the walls, in pixels. Only optional if `add` is `false`.
     */
    public function updateWall(add:Bool, ?position:String, ?x:Float, ?y:Float, ?width:Float, ?height:Float):Void;
    /**
     * Creates a Phaser.GameObjects.Graphics object that is used to render all of the debug bodies and joints to.
     *
     * This method is called automatically by the constructor, if debugging has been enabled.
     *
     * The created Graphics object is automatically added to the Scene at 0x0 and given a depth of `Number.MAX_VALUE`,
     * so it renders above all else in the Scene.
     *
     * The Graphics object is assigned to the `debugGraphic` property of this class and `drawDebug` is enabled.
     *
     * @method Phaser.Physics.Matter.World#createDebugGraphic
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.Graphics} The newly created Graphics object.
     */
    public function createDebugGraphic():phaser.gameobjects.Graphics;
    /**
     * Sets the world gravity and gravity scale to 0.
     *
     * @method Phaser.Physics.Matter.World#disableGravity
     * @since 3.0.0
     *
     * @return {this} This Matter World object.
     */
    public function disableGravity():Dynamic;
    /**
     * Sets the worlds gravity to the values given.
     *
     * Gravity effects all bodies in the world, unless they have the `ignoreGravity` flag set.
     *
     * @method Phaser.Physics.Matter.World#setGravity
     * @since 3.0.0
     *
     * @param {number} [x=0] - The world gravity x component.
     * @param {number} [y=1] - The world gravity y component.
     * @param {number} [scale=0.001] - The gravity scale factor.
     *
     * @return {this} This Matter World object.
     */
    public function setGravity(?x:Float, ?y:Float, ?scale:Float):Dynamic;
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
     * @return {MatterJS.BodyType} The Matter.js body that was created.
     */
    public function create(x:Float, y:Float, width:Float, height:Float, options:Dynamic):Dynamic;
    /**
     * Adds a Matter JS object, or array of objects, to the world.
     *
     * The objects should be valid Matter JS entities, such as a Body, Composite or Constraint.
     *
     * Triggers `beforeAdd` and `afterAdd` events.
     *
     * @method Phaser.Physics.Matter.World#add
     * @since 3.0.0
     *
     * @param {(object|object[])} object - Can be single object, or an array, and can be a body, composite or constraint.
     *
     * @return {this} This Matter World object.
     */
    public function add(object:Dynamic):Dynamic;
    /**
     * Removes a Matter JS object, or array of objects, from the world.
     *
     * The objects should be valid Matter JS entities, such as a Body, Composite or Constraint.
     *
     * Triggers `beforeRemove` and `afterRemove` events.
     *
     * @method Phaser.Physics.Matter.World#remove
     * @since 3.0.0
     *
     * @param {(object|object[])} object - Can be single object, or an array, and can be a body, composite or constraint.
     * @param {boolean} [deep=false] - Optionally search the objects children and recursively remove those as well.
     *
     * @return {this} This Matter World object.
     */
    public function remove(object:Dynamic, ?deep:Bool):Dynamic;
    /**
     * Removes a Matter JS constraint, or array of constraints, from the world.
     *
     * Triggers `beforeRemove` and `afterRemove` events.
     *
     * @method Phaser.Physics.Matter.World#removeConstraint
     * @since 3.0.0
     *
     * @param {(MatterJS.ConstraintType|MatterJS.ConstraintType[])} constraint - A Matter JS Constraint, or an array of constraints, to be removed.
     * @param {boolean} [deep=false] - Optionally search the objects children and recursively remove those as well.
     *
     * @return {this} This Matter World object.
     */
    public function removeConstraint(constraint:Dynamic, ?deep:Bool):Dynamic;
    /**
     * Adds `MatterTileBody` instances for all the colliding tiles within the given tilemap layer.
     *
     * Set the appropriate tiles in your layer to collide before calling this method!
     *
     * @method Phaser.Physics.Matter.World#convertTilemapLayer
     * @since 3.0.0
     *
     * @param {(Phaser.Tilemaps.DynamicTilemapLayer|Phaser.Tilemaps.StaticTilemapLayer)} tilemapLayer -
     * An array of tiles.
     * @param {object} [options] - Options to be passed to the MatterTileBody constructor. {@see Phaser.Physics.Matter.TileBody}
     *
     * @return {this} This Matter World object.
     */
    public function convertTilemapLayer(tilemapLayer:Dynamic, ?options:Dynamic):Dynamic;
    /**
     * Adds `MatterTileBody` instances for the given tiles. This adds bodies regardless of whether the
     * tiles are set to collide or not.
     *
     * @method Phaser.Physics.Matter.World#convertTiles
     * @since 3.0.0
     *
     * @param {Phaser.Tilemaps.Tile[]} tiles - An array of tiles.
     * @param {object} [options] - Options to be passed to the MatterTileBody constructor. {@see Phaser.Physics.Matter.TileBody}
     *
     * @return {this} This Matter World object.
     */
    public function convertTiles(tiles:Array<phaser.tilemaps.Tile>, ?options:Dynamic):Dynamic;
    /**
     * Returns the next unique group index for which bodies will collide.
     * If `isNonColliding` is `true`, returns the next unique group index for which bodies will not collide.
     *
     * @method Phaser.Physics.Matter.World#nextGroup
     * @since 3.0.0
     *
     * @param {boolean} [isNonColliding=false] - If `true`, returns the next unique group index for which bodies will _not_ collide.
     *
     * @return {number} Unique category bitfield
     */
    public function nextGroup(?isNonColliding:Bool):Float;
    /**
     * Returns the next unique category bitfield (starting after the initial default category 0x0001).
     * There are 32 available.
     *
     * @method Phaser.Physics.Matter.World#nextCategory
     * @since 3.0.0
     *
     * @return {number} Unique category bitfield
     */
    public function nextCategory():Float;
    /**
     * Pauses this Matter World instance and sets `enabled` to `false`.
     *
     * A paused world will not run any simulations for the duration it is paused.
     *
     * @method Phaser.Physics.Matter.World#pause
     * @fires Phaser.Physics.Matter.Events#PAUSE
     * @since 3.0.0
     *
     * @return {this} This Matter World object.
     */
    public function pause():Dynamic;
    /**
     * Resumes this Matter World instance from a paused state and sets `enabled` to `true`.
     *
     * @method Phaser.Physics.Matter.World#resume
     * @fires Phaser.Physics.Matter.Events#RESUME
     * @since 3.0.0
     *
     * @return {this} This Matter World object.
     */
    public function resume():Dynamic;
    /**
     * The internal update method. This is called automatically by the parent Scene.
     *
     * Moves the simulation forward in time by delta ms. Uses `World.correction` value as an optional number that
     * specifies the time correction factor to apply to the update. This can help improve the accuracy of the
     * simulation in cases where delta is changing between updates. The value of correction is defined as `delta / lastDelta`,
     * i.e. the percentage change of delta over the last step. Therefore the value is always 1 (no correction) when
     * delta is constant (or when no correction is desired, which is the default).
     * See the paper on Time Corrected Verlet for more information.
     *
     * Triggers `beforeUpdate` and `afterUpdate` events. Triggers `collisionStart`, `collisionActive` and `collisionEnd` events.
     *
     * If the World is paused, `update` is still run, but exits early and does not update the Matter Engine.
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
     * @param {number} [delta=16.666] - The delta value.
     * @param {number} [correction=1] - Optional delta correction value.
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
     * Returns `true` if the given body can be found within the World.
     *
     * @method Phaser.Physics.Matter.World#has
     * @since 3.22.0
     *
     * @param {(MatterJS.Body|Phaser.GameObjects.GameObject)} body - The Matter Body, or Game Object, to search for within the world.
     *
     * @return {MatterJS.BodyType[]} An array of all the Matter JS Bodies in this World.
     */
    public function has(body:Dynamic):Array<Dynamic>;
    /**
     * Returns all the bodies in the Matter World, including all bodies in children, recursively.
     *
     * @method Phaser.Physics.Matter.World#getAllBodies
     * @since 3.22.0
     *
     * @return {MatterJS.BodyType[]} An array of all the Matter JS Bodies in this World.
     */
    public function getAllBodies():Array<Dynamic>;
    /**
     * Returns all the constraints in the Matter World, including all constraints in children, recursively.
     *
     * @method Phaser.Physics.Matter.World#getAllConstraints
     * @since 3.22.0
     *
     * @return {MatterJS.ConstraintType[]} An array of all the Matter JS Constraints in this World.
     */
    public function getAllConstraints():Array<Dynamic>;
    /**
     * Returns all the composites in the Matter World, including all composites in children, recursively.
     *
     * @method Phaser.Physics.Matter.World#getAllComposites
     * @since 3.22.0
     *
     * @return {MatterJS.CompositeType[]} An array of all the Matter JS Composites in this World.
     */
    public function getAllComposites():Array<Dynamic>;
    /**
     * Renders the Engine Broadphase Controller Grid to the given Graphics instance.
     *
     * The debug renderer calls this method if the `showBroadphase` config value is set.
     *
     * This method is used internally by the Matter Debug Renderer, but is also exposed publically should
     * you wish to render the Grid to your own Graphics instance.
     *
     * @method Phaser.Physics.Matter.World#renderGrid
     * @since 3.22.0
     *
     * @param {MatterJS.Grid} grid - The Matter Grid to be rendered.
     * @param {Phaser.GameObjects.Graphics} graphics - The Graphics object to render to.
     * @param {number} lineColor - The line color.
     * @param {number} lineOpacity - The line opacity, between 0 and 1.
     *
     * @return {this} This Matter World instance for method chaining.
     */
    public function renderGrid(grid:Dynamic, graphics:phaser.gameobjects.Graphics, lineColor:Float, lineOpacity:Float):Dynamic;
    /**
     * Renders the list of Pair separations to the given Graphics instance.
     *
     * The debug renderer calls this method if the `showSeparations` config value is set.
     *
     * This method is used internally by the Matter Debug Renderer, but is also exposed publically should
     * you wish to render the Grid to your own Graphics instance.
     *
     * @method Phaser.Physics.Matter.World#renderSeparations
     * @since 3.22.0
     *
     * @param {MatterJS.Pair[]} pairs - An array of Matter Pairs to be rendered.
     * @param {Phaser.GameObjects.Graphics} graphics - The Graphics object to render to.
     * @param {number} lineColor - The line color.
     *
     * @return {this} This Matter World instance for method chaining.
     */
    public function renderSeparations(pairs:Array<Dynamic>, graphics:phaser.gameobjects.Graphics, lineColor:Float):Dynamic;
    /**
     * Renders the list of collision points and normals to the given Graphics instance.
     *
     * The debug renderer calls this method if the `showCollisions` config value is set.
     *
     * This method is used internally by the Matter Debug Renderer, but is also exposed publically should
     * you wish to render the Grid to your own Graphics instance.
     *
     * @method Phaser.Physics.Matter.World#renderCollisions
     * @since 3.22.0
     *
     * @param {MatterJS.Pair[]} pairs - An array of Matter Pairs to be rendered.
     * @param {Phaser.GameObjects.Graphics} graphics - The Graphics object to render to.
     * @param {number} lineColor - The line color.
     *
     * @return {this} This Matter World instance for method chaining.
     */
    public function renderCollisions(pairs:Array<Dynamic>, graphics:phaser.gameobjects.Graphics, lineColor:Float):Dynamic;
    /**
     * Renders the bounds of an array of Bodies to the given Graphics instance.
     *
     * If the body is a compound body, it will render the bounds for the parent compound.
     *
     * The debug renderer calls this method if the `showBounds` config value is set.
     *
     * This method is used internally by the Matter Debug Renderer, but is also exposed publically should
     * you wish to render bounds to your own Graphics instance.
     *
     * @method Phaser.Physics.Matter.World#renderBodyBounds
     * @since 3.22.0
     *
     * @param {array} bodies - An array of bodies from the localWorld.
     * @param {Phaser.GameObjects.Graphics} graphics - The Graphics object to render to.
     * @param {number} lineColor - The line color.
     * @param {number} lineOpacity - The line opacity, between 0 and 1.
     */
    public function renderBodyBounds(bodies:Array<Dynamic>, graphics:phaser.gameobjects.Graphics, lineColor:Float, lineOpacity:Float):Void;
    /**
     * Renders either all axes, or a single axis indicator, for an array of Bodies, to the given Graphics instance.
     *
     * The debug renderer calls this method if the `showAxes` or `showAngleIndicator` config values are set.
     *
     * This method is used internally by the Matter Debug Renderer, but is also exposed publically should
     * you wish to render bounds to your own Graphics instance.
     *
     * @method Phaser.Physics.Matter.World#renderBodyAxes
     * @since 3.22.0
     *
     * @param {array} bodies - An array of bodies from the localWorld.
     * @param {Phaser.GameObjects.Graphics} graphics - The Graphics object to render to.
     * @param {boolean} showAxes - If `true` it will render all body axes. If `false` it will render a single axis indicator.
     * @param {number} lineColor - The line color.
     * @param {number} lineOpacity - The line opacity, between 0 and 1.
     */
    public function renderBodyAxes(bodies:Array<Dynamic>, graphics:phaser.gameobjects.Graphics, showAxes:Bool, lineColor:Float, lineOpacity:Float):Void;
    /**
     * Renders a velocity indicator for an array of Bodies, to the given Graphics instance.
     *
     * The debug renderer calls this method if the `showVelocity` config value is set.
     *
     * This method is used internally by the Matter Debug Renderer, but is also exposed publically should
     * you wish to render bounds to your own Graphics instance.
     *
     * @method Phaser.Physics.Matter.World#renderBodyVelocity
     * @since 3.22.0
     *
     * @param {array} bodies - An array of bodies from the localWorld.
     * @param {Phaser.GameObjects.Graphics} graphics - The Graphics object to render to.
     * @param {number} lineColor - The line color.
     * @param {number} lineOpacity - The line opacity, between 0 and 1.
     * @param {number} lineThickness - The line thickness.
     */
    public function renderBodyVelocity(bodies:Array<Dynamic>, graphics:phaser.gameobjects.Graphics, lineColor:Float, lineOpacity:Float, lineThickness:Float):Void;
    /**
     * Renders a single Matter Body to the given Phaser Graphics Game Object.
     *
     * This method is used internally by the Matter Debug Renderer, but is also exposed publically should
     * you wish to render a Body to your own Graphics instance.
     *
     * If you don't wish to render a line around the body, set the `lineColor` parameter to `null`.
     * Equally, if you don't wish to render a fill, set the `fillColor` parameter to `null`.
     *
     * @method Phaser.Physics.Matter.World#renderBody
     * @since 3.22.0
     *
     * @param {MatterJS.BodyType} body - The Matter Body to be rendered.
     * @param {Phaser.GameObjects.Graphics} graphics - The Graphics object to render to.
     * @param {boolean} showInternalEdges - Render internal edges of the polygon?
     * @param {number} [lineColor] - The line color.
     * @param {number} [lineOpacity] - The line opacity, between 0 and 1.
     * @param {number} [lineThickness=1] - The line thickness.
     * @param {number} [fillColor] - The fill color.
     * @param {number} [fillOpacity] - The fill opacity, between 0 and 1.
     *
     * @return {this} This Matter World instance for method chaining.
     */
    public function renderBody(body:Dynamic, graphics:phaser.gameobjects.Graphics, showInternalEdges:Bool, ?lineColor:Float, ?lineOpacity:Float, ?lineThickness:Float, ?fillColor:Float, ?fillOpacity:Float):Dynamic;
    /**
     * Renders the Convex Hull for a single Matter Body to the given Phaser Graphics Game Object.
     *
     * This method is used internally by the Matter Debug Renderer, but is also exposed publically should
     * you wish to render a Body hull to your own Graphics instance.
     *
     * @method Phaser.Physics.Matter.World#renderConvexHull
     * @since 3.22.0
     *
     * @param {MatterJS.BodyType} body - The Matter Body to be rendered.
     * @param {Phaser.GameObjects.Graphics} graphics - The Graphics object to render to.
     * @param {number} hullColor - The color used to render the hull.
     * @param {number} [lineThickness=1] - The hull line thickness.
     *
     * @return {this} This Matter World instance for method chaining.
     */
    public function renderConvexHull(body:Dynamic, graphics:phaser.gameobjects.Graphics, hullColor:Float, ?lineThickness:Float):Dynamic;
    /**
     * Renders a single Matter Constraint, such as a Pin or a Spring, to the given Phaser Graphics Game Object.
     *
     * This method is used internally by the Matter Debug Renderer, but is also exposed publically should
     * you wish to render a Constraint to your own Graphics instance.
     *
     * @method Phaser.Physics.Matter.World#renderConstraint
     * @since 3.22.0
     *
     * @param {MatterJS.ConstraintType} constraint - The Matter Constraint to render.
     * @param {Phaser.GameObjects.Graphics} graphics - The Graphics object to render to.
     * @param {number} lineColor - The line color.
     * @param {number} lineOpacity - The line opacity, between 0 and 1.
     * @param {number} lineThickness - The line thickness.
     * @param {number} pinSize - If this constraint is a pin, this sets the size of the pin circle.
     * @param {number} anchorColor - The color used when rendering this constraints anchors. Set to `null` to not render anchors.
     * @param {number} anchorSize - The size of the anchor circle, if this constraint has anchors and is rendering them.
     *
     * @return {this} This Matter World instance for method chaining.
     */
    public function renderConstraint(constraint:Dynamic, graphics:phaser.gameobjects.Graphics, lineColor:Float, lineOpacity:Float, lineThickness:Float, pinSize:Float, anchorColor:Float, anchorSize:Float):Dynamic;
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
