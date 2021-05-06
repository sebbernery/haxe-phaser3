package phaser.gameobjects;

/**
 * @classdesc
 * A Group is a way for you to create, manipulate, or recycle similar Game Objects.
 *
 * Group membership is non-exclusive. A Game Object can belong to several groups, one group, or none.
 *
 * Groups themselves aren't displayable, and can't be positioned, rotated, scaled, or hidden.
 *
 * @class Group
 * @memberof Phaser.GameObjects
 * @extends Phaser.Events.EventEmitter
 * @constructor
 * @since 3.0.0
 * @param {Phaser.Scene} scene - The scene this group belongs to.
 * @param {(Phaser.GameObjects.GameObject[]|Phaser.Types.GameObjects.Group.GroupConfig|Phaser.Types.GameObjects.Group.GroupCreateConfig)} [children] - Game Objects to add to this group; or the `config` argument.
 * @param {Phaser.Types.GameObjects.Group.GroupConfig|Phaser.Types.GameObjects.Group.GroupCreateConfig} [config] - Settings for this group. If `key` is set, Phaser.GameObjects.Group#createMultiple is also called with these settings.
 *
 * @see Phaser.Physics.Arcade.Group
 * @see Phaser.Physics.Arcade.StaticGroup
 */
@:native("Phaser.GameObjects.Group")
extern class Group extends phaser.events.EventEmitter {
    public function new(scene:phaser.Scene, ?children:Dynamic, ?config:Dynamic);
    /**
     * This scene this group belongs to.
     *
     * @name Phaser.GameObjects.Group#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * Members of this group.
     *
     * @name Phaser.GameObjects.Group#children
     * @type {Phaser.Structs.Set.<Phaser.GameObjects.GameObject>}
     * @since 3.0.0
     */
    public var children:Dynamic;
    /**
     * A flag identifying this object as a group.
     *
     * @name Phaser.GameObjects.Group#isParent
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var isParent:Bool;
    /**
     * A textual representation of this Game Object.
     * Used internally by Phaser but is available for your own custom classes to populate.
     *
     * @name Phaser.GameObjects.Group#type
     * @type {string}
     * @default 'Group'
     * @since 3.21.0
     */
    public var type:String;
    /**
     * The class to create new group members from.
     *
     * @name Phaser.GameObjects.Group#classType
     * @type {Function}
     * @since 3.0.0
     * @default Phaser.GameObjects.Sprite
     */
    public var classType:Dynamic;
    /**
     * The name of this group.
     * Empty by default and never populated by Phaser, this is left for developers to use.
     *
     * @name Phaser.GameObjects.Group#name
     * @type {string}
     * @default ''
     * @since 3.18.0
     */
    public var name:String;
    /**
     * Whether this group runs its {@link Phaser.GameObjects.Group#preUpdate} method (which may update any members).
     *
     * @name Phaser.GameObjects.Group#active
     * @type {boolean}
     * @since 3.0.0
     */
    public var active:Bool;
    /**
     * The maximum size of this group, if used as a pool. -1 is no limit.
     *
     * @name Phaser.GameObjects.Group#maxSize
     * @type {number}
     * @since 3.0.0
     * @default -1
     */
    public var maxSize:Float;
    /**
     * A default texture key to use when creating new group members.
     *
     * This is used in {@link Phaser.GameObjects.Group#create}
     * but not in {@link Phaser.GameObjects.Group#createMultiple}.
     *
     * @name Phaser.GameObjects.Group#defaultKey
     * @type {string}
     * @since 3.0.0
     */
    public var defaultKey:String;
    /**
     * A default texture frame to use when creating new group members.
     *
     * @name Phaser.GameObjects.Group#defaultFrame
     * @type {(string|number)}
     * @since 3.0.0
     */
    public var defaultFrame:Dynamic;
    /**
     * Whether to call the update method of any members.
     *
     * @name Phaser.GameObjects.Group#runChildUpdate
     * @type {boolean}
     * @default false
     * @since 3.0.0
     * @see Phaser.GameObjects.Group#preUpdate
     */
    public var runChildUpdate:Bool;
    /**
     * A function to be called when adding or creating group members.
     *
     * @name Phaser.GameObjects.Group#createCallback
     * @type {?Phaser.Types.GameObjects.Group.GroupCallback}
     * @since 3.0.0
     */
    public var createCallback:phaser.types.gameobjects.group.GroupCallback;
    /**
     * A function to be called when removing group members.
     *
     * @name Phaser.GameObjects.Group#removeCallback
     * @type {?Phaser.Types.GameObjects.Group.GroupCallback}
     * @since 3.0.0
     */
    public var removeCallback:phaser.types.gameobjects.group.GroupCallback;
    /**
     * A function to be called when creating several group members at once.
     *
     * @name Phaser.GameObjects.Group#createMultipleCallback
     * @type {?Phaser.Types.GameObjects.Group.GroupMultipleCreateCallback}
     * @since 3.0.0
     */
    public var createMultipleCallback:phaser.types.gameobjects.group.GroupMultipleCreateCallback;
    /**
     * Creates a new Game Object and adds it to this group, unless the group {@link Phaser.GameObjects.Group#isFull is full}.
     *
     * Calls {@link Phaser.GameObjects.Group#createCallback}.
     *
     * @method Phaser.GameObjects.Group#create
     * @since 3.0.0
     *
     * @param {number} [x=0] - The horizontal position of the new Game Object in the world.
     * @param {number} [y=0] - The vertical position of the new Game Object in the world.
     * @param {string} [key=defaultKey] - The texture key of the new Game Object.
     * @param {(string|number)} [frame=defaultFrame] - The texture frame of the new Game Object.
     * @param {boolean} [visible=true] - The {@link Phaser.GameObjects.Components.Visible#visible} state of the new Game Object.
     * @param {boolean} [active=true] - The {@link Phaser.GameObjects.GameObject#active} state of the new Game Object.
     *
     * @return {any} The new Game Object (usually a Sprite, etc.).
     */
    public function create(?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool, ?active:Bool):Dynamic;
    /**
     * Creates several Game Objects and adds them to this group.
     *
     * If the group becomes {@link Phaser.GameObjects.Group#isFull}, no further Game Objects are created.
     *
     * Calls {@link Phaser.GameObjects.Group#createMultipleCallback} and {@link Phaser.GameObjects.Group#createCallback}.
     *
     * @method Phaser.GameObjects.Group#createMultiple
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Group.GroupCreateConfig|Phaser.Types.GameObjects.Group.GroupCreateConfig[]} config - Creation settings. This can be a single configuration object or an array of such objects, which will be applied in turn.
     *
     * @return {any[]} The newly created Game Objects.
     */
    public function createMultiple(config:Dynamic):Array<Dynamic>;
    /**
     * A helper for {@link Phaser.GameObjects.Group#createMultiple}.
     *
     * @method Phaser.GameObjects.Group#createFromConfig
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Group.GroupCreateConfig} options - Creation settings.
     *
     * @return {any[]} The newly created Game Objects.
     */
    public function createFromConfig(options:phaser.types.gameobjects.group.GroupCreateConfig):Array<Dynamic>;
    /**
     * Updates any group members, if {@link Phaser.GameObjects.Group#runChildUpdate} is enabled.
     *
     * @method Phaser.GameObjects.Group#preUpdate
     * @since 3.0.0
     *
     * @param {number} time - The current timestamp.
     * @param {number} delta - The delta time elapsed since the last frame.
     */
    public function preUpdate(time:Float, delta:Float):Void;
    /**
     * Adds a Game Object to this group.
     *
     * Calls {@link Phaser.GameObjects.Group#createCallback}.
     *
     * @method Phaser.GameObjects.Group#add
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The Game Object to add.
     * @param {boolean} [addToScene=false] - Also add the Game Object to the scene.
     *
     * @return {this} This Group object.
     */
    public function add(child:phaser.gameobjects.GameObject, ?addToScene:Bool):Dynamic;
    /**
     * Adds several Game Objects to this group.
     *
     * Calls {@link Phaser.GameObjects.Group#createCallback}.
     *
     * @method Phaser.GameObjects.Group#addMultiple
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject[]} children - The Game Objects to add.
     * @param {boolean} [addToScene=false] - Also add the Game Objects to the scene.
     *
     * @return {this} This group.
     */
    public function addMultiple(children:Array<phaser.gameobjects.GameObject>, ?addToScene:Bool):Dynamic;
    /**
     * Removes a member of this Group and optionally removes it from the Scene and / or destroys it.
     *
     * Calls {@link Phaser.GameObjects.Group#removeCallback}.
     *
     * @method Phaser.GameObjects.Group#remove
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The Game Object to remove.
     * @param {boolean} [removeFromScene=false] - Optionally remove the Group member from the Scene it belongs to.
     * @param {boolean} [destroyChild=false] - Optionally call destroy on the removed Group member.
     *
     * @return {this} This Group object.
     */
    public function remove(child:phaser.gameobjects.GameObject, ?removeFromScene:Bool, ?destroyChild:Bool):Dynamic;
    /**
     * Removes all members of this Group and optionally removes them from the Scene and / or destroys them.
     *
     * Does not call {@link Phaser.GameObjects.Group#removeCallback}.
     *
     * @method Phaser.GameObjects.Group#clear
     * @since 3.0.0
     *
     * @param {boolean} [removeFromScene=false] - Optionally remove each Group member from the Scene.
     * @param {boolean} [destroyChild=false] - Optionally call destroy on the removed Group members.
     *
     * @return {this} This group.
     */
    public function clear(?removeFromScene:Bool, ?destroyChild:Bool):Dynamic;
    /**
     * Tests if a Game Object is a member of this group.
     *
     * @method Phaser.GameObjects.Group#contains
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} child - A Game Object.
     *
     * @return {boolean} True if the Game Object is a member of this group.
     */
    public function contains(child:phaser.gameobjects.GameObject):Bool;
    /**
     * All members of the group.
     *
     * @method Phaser.GameObjects.Group#getChildren
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.GameObject[]} The group members.
     */
    public function getChildren():Array<phaser.gameobjects.GameObject>;
    /**
     * The number of members of the group.
     *
     * @method Phaser.GameObjects.Group#getLength
     * @since 3.0.0
     *
     * @return {number}
     */
    public function getLength():Float;
    /**
     * Returns all children in this Group that match the given criteria based on the `property` and `value` arguments.
     *
     * For example: `getMatching('visible', true)` would return only children that have their `visible` property set.
     *
     * Optionally, you can specify a start and end index. For example if the Group has 100 elements,
     * and you set `startIndex` to 0 and `endIndex` to 50, it would return matches from only
     * the first 50.
     *
     * @method Phaser.GameObjects.Group#getMatching
     * @since 3.50.0
     *
     * @param {string} [property] - The property to test on each array element.
     * @param {*} [value] - The value to test the property against. Must pass a strict (`===`) comparison check.
     * @param {number} [startIndex] - An optional start index to search from.
     * @param {number} [endIndex] - An optional end index to search to.
     *
     * @return {any[]} An array of matching Group members. The array will be empty if nothing matched.
     */
    public function getMatching(?property:String, ?value:Dynamic, ?startIndex:Float, ?endIndex:Float):Array<Dynamic>;
    /**
     * Scans the Group, from top to bottom, for the first member that has an {@link Phaser.GameObjects.GameObject#active} state matching the argument,
     * assigns `x` and `y`, and returns the member.
     *
     * If no matching member is found and `createIfNull` is true and the group isn't full then it will create a new Game Object using `x`, `y`, `key`, `frame`, and `visible`.
     * Unless a new member is created, `key`, `frame`, and `visible` are ignored.
     *
     * @method Phaser.GameObjects.Group#getFirst
     * @since 3.0.0
     *
     * @param {boolean} [state=false] - The {@link Phaser.GameObjects.GameObject#active} value to match.
     * @param {boolean} [createIfNull=false] - Create a new Game Object if no matching members are found, using the following arguments.
     * @param {number} [x] - The horizontal position of the Game Object in the world.
     * @param {number} [y] - The vertical position of the Game Object in the world.
     * @param {string} [key=defaultKey] - The texture key assigned to a new Game Object (if one is created).
     * @param {(string|number)} [frame=defaultFrame] - A texture frame assigned to a new Game Object (if one is created).
     * @param {boolean} [visible=true] - The {@link Phaser.GameObjects.Components.Visible#visible} state of a new Game Object (if one is created).
     *
     * @return {?any} The first matching group member, or a newly created member, or null.
     */
    public function getFirst(?state:Bool, ?createIfNull:Bool, ?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
    /**
     * Scans the Group, from top to bottom, for the nth member that has an {@link Phaser.GameObjects.GameObject#active} state matching the argument,
     * assigns `x` and `y`, and returns the member.
     *
     * If no matching member is found and `createIfNull` is true and the group isn't full then it will create a new Game Object using `x`, `y`, `key`, `frame`, and `visible`.
     * Unless a new member is created, `key`, `frame`, and `visible` are ignored.
     *
     * @method Phaser.GameObjects.Group#getFirstNth
     * @since 3.6.0
     *
     * @param {number} nth - The nth matching Group member to search for.
     * @param {boolean} [state=false] - The {@link Phaser.GameObjects.GameObject#active} value to match.
     * @param {boolean} [createIfNull=false] - Create a new Game Object if no matching members are found, using the following arguments.
     * @param {number} [x] - The horizontal position of the Game Object in the world.
     * @param {number} [y] - The vertical position of the Game Object in the world.
     * @param {string} [key=defaultKey] - The texture key assigned to a new Game Object (if one is created).
     * @param {(string|number)} [frame=defaultFrame] - A texture frame assigned to a new Game Object (if one is created).
     * @param {boolean} [visible=true] - The {@link Phaser.GameObjects.Components.Visible#visible} state of a new Game Object (if one is created).
     *
     * @return {?any} The first matching group member, or a newly created member, or null.
     */
    public function getFirstNth(nth:Float, ?state:Bool, ?createIfNull:Bool, ?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
    /**
     * Scans the Group for the last member that has an {@link Phaser.GameObjects.GameObject#active} state matching the argument,
     * assigns `x` and `y`, and returns the member.
     *
     * If no matching member is found and `createIfNull` is true and the group isn't full then it will create a new Game Object using `x`, `y`, `key`, `frame`, and `visible`.
     * Unless a new member is created, `key`, `frame`, and `visible` are ignored.
     *
     * @method Phaser.GameObjects.Group#getLast
     * @since 3.6.0
     *
     * @param {boolean} [state=false] - The {@link Phaser.GameObjects.GameObject#active} value to match.
     * @param {boolean} [createIfNull=false] - Create a new Game Object if no matching members are found, using the following arguments.
     * @param {number} [x] - The horizontal position of the Game Object in the world.
     * @param {number} [y] - The vertical position of the Game Object in the world.
     * @param {string} [key=defaultKey] - The texture key assigned to a new Game Object (if one is created).
     * @param {(string|number)} [frame=defaultFrame] - A texture frame assigned to a new Game Object (if one is created).
     * @param {boolean} [visible=true] - The {@link Phaser.GameObjects.Components.Visible#visible} state of a new Game Object (if one is created).
     *
     * @return {?any} The first matching group member, or a newly created member, or null.
     */
    public function getLast(?state:Bool, ?createIfNull:Bool, ?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
    /**
     * Scans the Group for the last nth member that has an {@link Phaser.GameObjects.GameObject#active} state matching the argument,
     * assigns `x` and `y`, and returns the member.
     *
     * If no matching member is found and `createIfNull` is true and the group isn't full then it will create a new Game Object using `x`, `y`, `key`, `frame`, and `visible`.
     * Unless a new member is created, `key`, `frame`, and `visible` are ignored.
     *
     * @method Phaser.GameObjects.Group#getLastNth
     * @since 3.6.0
     *
     * @param {number} nth - The nth matching Group member to search for.
     * @param {boolean} [state=false] - The {@link Phaser.GameObjects.GameObject#active} value to match.
     * @param {boolean} [createIfNull=false] - Create a new Game Object if no matching members are found, using the following arguments.
     * @param {number} [x] - The horizontal position of the Game Object in the world.
     * @param {number} [y] - The vertical position of the Game Object in the world.
     * @param {string} [key=defaultKey] - The texture key assigned to a new Game Object (if one is created).
     * @param {(string|number)} [frame=defaultFrame] - A texture frame assigned to a new Game Object (if one is created).
     * @param {boolean} [visible=true] - The {@link Phaser.GameObjects.Components.Visible#visible} state of a new Game Object (if one is created).
     *
     * @return {?any} The first matching group member, or a newly created member, or null.
     */
    public function getLastNth(nth:Float, ?state:Bool, ?createIfNull:Bool, ?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
    /**
     * Scans the group for the first member that has an {@link Phaser.GameObjects.GameObject#active} state set to `false`,
     * assigns `x` and `y`, and returns the member.
     *
     * If no inactive member is found and the group isn't full then it will create a new Game Object using `x`, `y`, `key`, `frame`, and `visible`.
     * The new Game Object will have its active state set to `true`.
     * Unless a new member is created, `key`, `frame`, and `visible` are ignored.
     *
     * @method Phaser.GameObjects.Group#get
     * @since 3.0.0
     *
     * @param {number} [x] - The horizontal position of the Game Object in the world.
     * @param {number} [y] - The vertical position of the Game Object in the world.
     * @param {string} [key=defaultKey] - The texture key assigned to a new Game Object (if one is created).
     * @param {(string|number)} [frame=defaultFrame] - A texture frame assigned to a new Game Object (if one is created).
     * @param {boolean} [visible=true] - The {@link Phaser.GameObjects.Components.Visible#visible} state of a new Game Object (if one is created).
     *
     * @return {?any} The first inactive group member, or a newly created member, or null.
     */
    public function get(?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
    /**
     * Scans the group for the first member that has an {@link Phaser.GameObjects.GameObject#active} state set to `true`,
     * assigns `x` and `y`, and returns the member.
     *
     * If no active member is found and `createIfNull` is `true` and the group isn't full then it will create a new one using `x`, `y`, `key`, `frame`, and `visible`.
     * Unless a new member is created, `key`, `frame`, and `visible` are ignored.
     *
     * @method Phaser.GameObjects.Group#getFirstAlive
     * @since 3.0.0
     *
     * @param {boolean} [createIfNull=false] - Create a new Game Object if no matching members are found, using the following arguments.
     * @param {number} [x] - The horizontal position of the Game Object in the world.
     * @param {number} [y] - The vertical position of the Game Object in the world.
     * @param {string} [key=defaultKey] - The texture key assigned to a new Game Object (if one is created).
     * @param {(string|number)} [frame=defaultFrame] - A texture frame assigned to a new Game Object (if one is created).
     * @param {boolean} [visible=true] - The {@link Phaser.GameObjects.Components.Visible#visible} state of a new Game Object (if one is created).
     *
     * @return {any} The first active group member, or a newly created member, or null.
     */
    public function getFirstAlive(?createIfNull:Bool, ?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
    /**
     * Scans the group for the first member that has an {@link Phaser.GameObjects.GameObject#active} state set to `false`,
     * assigns `x` and `y`, and returns the member.
     *
     * If no inactive member is found and `createIfNull` is `true` and the group isn't full then it will create a new one using `x`, `y`, `key`, `frame`, and `visible`.
     * The new Game Object will have an active state set to `true`.
     * Unless a new member is created, `key`, `frame`, and `visible` are ignored.
     *
     * @method Phaser.GameObjects.Group#getFirstDead
     * @since 3.0.0
     *
     * @param {boolean} [createIfNull=false] - Create a new Game Object if no matching members are found, using the following arguments.
     * @param {number} [x] - The horizontal position of the Game Object in the world.
     * @param {number} [y] - The vertical position of the Game Object in the world.
     * @param {string} [key=defaultKey] - The texture key assigned to a new Game Object (if one is created).
     * @param {(string|number)} [frame=defaultFrame] - A texture frame assigned to a new Game Object (if one is created).
     * @param {boolean} [visible=true] - The {@link Phaser.GameObjects.Components.Visible#visible} state of a new Game Object (if one is created).
     *
     * @return {any} The first inactive group member, or a newly created member, or null.
     */
    public function getFirstDead(?createIfNull:Bool, ?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
    /**
     * {@link Phaser.GameObjects.Components.Animation#play Plays} an animation for all members of this group.
     *
     * @method Phaser.GameObjects.Group#playAnimation
     * @since 3.0.0
     *
     * @param {string} key - The string-based key of the animation to play.
     * @param {string} [startFrame=0] - Optionally start the animation playing from this frame index.
     *
     * @return {this} This Group object.
     */
    public function playAnimation(key:String, ?startFrame:String):Dynamic;
    /**
     * Whether this group's size at its {@link Phaser.GameObjects.Group#maxSize maximum}.
     *
     * @method Phaser.GameObjects.Group#isFull
     * @since 3.0.0
     *
     * @return {boolean} True if the number of members equals {@link Phaser.GameObjects.Group#maxSize}.
     */
    public function isFull():Bool;
    /**
     * Counts the number of active (or inactive) group members.
     *
     * @method Phaser.GameObjects.Group#countActive
     * @since 3.0.0
     *
     * @param {boolean} [value=true] - Count active (true) or inactive (false) group members.
     *
     * @return {number} The number of group members with an active state matching the `active` argument.
     */
    public function countActive(?value:Bool):Float;
    /**
     * Counts the number of in-use (active) group members.
     *
     * @method Phaser.GameObjects.Group#getTotalUsed
     * @since 3.0.0
     *
     * @return {number} The number of group members with an active state of true.
     */
    public function getTotalUsed():Float;
    /**
     * The difference of {@link Phaser.GameObjects.Group#maxSize} and the number of active group members.
     *
     * This represents the number of group members that could be created or reactivated before reaching the size limit.
     *
     * @method Phaser.GameObjects.Group#getTotalFree
     * @since 3.0.0
     *
     * @return {number} maxSize minus the number of active group numbers; or a large number (if maxSize is -1).
     */
    public function getTotalFree():Float;
    /**
     * Sets the `active` property of this Group.
     * When active, this Group runs its `preUpdate` method.
     *
     * @method Phaser.GameObjects.Group#setActive
     * @since 3.24.0
     *
     * @param {boolean} value - True if this Group should be set as active, false if not.
     *
     * @return {this} This Group object.
     */
    public function setActive(value:Bool):Dynamic;
    /**
     * Sets the `name` property of this Group.
     * The `name` property is not populated by Phaser and is presented for your own use.
     *
     * @method Phaser.GameObjects.Group#setName
     * @since 3.24.0
     *
     * @param {string} value - The name to be given to this Group.
     *
     * @return {this} This Group object.
     */
    public function setName(value:String):Dynamic;
    /**
     * Sets the property as defined in `key` of each group member to the given value.
     *
     * @method Phaser.GameObjects.Group#propertyValueSet
     * @since 3.21.0
     *
     * @param {string} key - The property to be updated.
     * @param {number} value - The amount to set the property to.
     * @param {number} [step=0] - This is added to the `value` amount, multiplied by the iteration counter.
     * @param {number} [index=0] - An optional offset to start searching from within the items array.
     * @param {number} [direction=1] - The direction to iterate through the array. 1 is from beginning to end, -1 from end to beginning.
     *
     * @return {this} This Group object.
     */
    public function propertyValueSet(key:String, value:Float, ?step:Float, ?index:Float, ?direction:Float):Dynamic;
    /**
     * Adds the given value to the property as defined in `key` of each group member.
     *
     * @method Phaser.GameObjects.Group#propertyValueInc
     * @since 3.21.0
     *
     * @param {string} key - The property to be updated.
     * @param {number} value - The amount to set the property to.
     * @param {number} [step=0] - This is added to the `value` amount, multiplied by the iteration counter.
     * @param {number} [index=0] - An optional offset to start searching from within the items array.
     * @param {number} [direction=1] - The direction to iterate through the array. 1 is from beginning to end, -1 from end to beginning.
     *
     * @return {this} This Group object.
     */
    public function propertyValueInc(key:String, value:Float, ?step:Float, ?index:Float, ?direction:Float):Dynamic;
    /**
     * Sets the x of each group member.
     *
     * @method Phaser.GameObjects.Group#setX
     * @since 3.21.0
     *
     * @param {number} value - The amount to set the property to.
     * @param {number} [step=0] - This is added to the `value` amount, multiplied by the iteration counter.
     *
     * @return {this} This Group object.
     */
    public function setX(value:Float, ?step:Float):Dynamic;
    /**
     * Sets the y of each group member.
     *
     * @method Phaser.GameObjects.Group#setY
     * @since 3.21.0
     *
     * @param {number} value - The amount to set the property to.
     * @param {number} [step=0] - This is added to the `value` amount, multiplied by the iteration counter.
     *
     * @return {this} This Group object.
     */
    public function setY(value:Float, ?step:Float):Dynamic;
    /**
     * Sets the x, y of each group member.
     *
     * @method Phaser.GameObjects.Group#setXY
     * @since 3.21.0
     *
     * @param {number} x - The amount to set the `x` property to.
     * @param {number} [y=x] - The amount to set the `y` property to. If `undefined` or `null` it uses the `x` value.
     * @param {number} [stepX=0] - This is added to the `x` amount, multiplied by the iteration counter.
     * @param {number} [stepY=0] - This is added to the `y` amount, multiplied by the iteration counter.
     *
     * @return {this} This Group object.
     */
    public function setXY(x:Float, ?y:Float, ?stepX:Float, ?stepY:Float):Dynamic;
    /**
     * Adds the given value to the x of each group member.
     *
     * @method Phaser.GameObjects.Group#incX
     * @since 3.21.0
     *
     * @param {number} value - The amount to be added to the `x` property.
     * @param {number} [step=0] - This is added to the `value` amount, multiplied by the iteration counter.
     *
     * @return {this} This Group object.
     */
    public function incX(value:Float, ?step:Float):Dynamic;
    /**
     * Adds the given value to the y of each group member.
     *
     * @method Phaser.GameObjects.Group#incY
     * @since 3.21.0
     *
     * @param {number} value - The amount to be added to the `y` property.
     * @param {number} [step=0] - This is added to the `value` amount, multiplied by the iteration counter.
     *
     * @return {this} This Group object.
     */
    public function incY(value:Float, ?step:Float):Dynamic;
    /**
     * Adds the given value to the x, y of each group member.
     *
     * @method Phaser.GameObjects.Group#incXY
     * @since 3.21.0
     *
     * @param {number} x - The amount to be added to the `x` property.
     * @param {number} [y=x] - The amount to be added to the `y` property. If `undefined` or `null` it uses the `x` value.
     * @param {number} [stepX=0] - This is added to the `x` amount, multiplied by the iteration counter.
     * @param {number} [stepY=0] - This is added to the `y` amount, multiplied by the iteration counter.
     *
     * @return {this} This Group object.
     */
    public function incXY(x:Float, ?y:Float, ?stepX:Float, ?stepY:Float):Dynamic;
    /**
     * Iterate through the group members changing the position of each element to be that of the element that came before
     * it in the array (or after it if direction = 1)
     *
     * The first group member position is set to x/y.
     *
     * @method Phaser.GameObjects.Group#shiftPosition
     * @since 3.21.0
     *
     * @param {number} x - The x coordinate to place the first item in the array at.
     * @param {number} y - The y coordinate to place the first item in the array at.
     * @param {number} [direction=0] - The iteration direction. 0 = first to last and 1 = last to first.
     *
     * @return {this} This Group object.
     */
    public function shiftPosition(x:Float, y:Float, ?direction:Float):Dynamic;
    /**
     * Sets the angle of each group member.
     *
     * @method Phaser.GameObjects.Group#angle
     * @since 3.21.0
     *
     * @param {number} value - The amount to set the angle to, in degrees.
     * @param {number} [step=0] - This is added to the `value` amount, multiplied by the iteration counter.
     *
     * @return {this} This Group object.
     */
    public function angle(value:Float, ?step:Float):Dynamic;
    /**
     * Sets the rotation of each group member.
     *
     * @method Phaser.GameObjects.Group#rotate
     * @since 3.21.0
     *
     * @param {number} value - The amount to set the rotation to, in radians.
     * @param {number} [step=0] - This is added to the `value` amount, multiplied by the iteration counter.
     *
     * @return {this} This Group object.
     */
    public function rotate(value:Float, ?step:Float):Dynamic;
    /**
     * Rotates each group member around the given point by the given angle.
     *
     * @method Phaser.GameObjects.Group#rotateAround
     * @since 3.21.0
     *
     * @param {Phaser.Types.Math.Vector2Like} point - Any object with public `x` and `y` properties.
     * @param {number} angle - The angle to rotate by, in radians.
     *
     * @return {this} This Group object.
     */
    public function rotateAround(point:phaser.types.math.Vector2Like, angle:Float):Dynamic;
    /**
     * Rotates each group member around the given point by the given angle and distance.
     *
     * @method Phaser.GameObjects.Group#rotateAroundDistance
     * @since 3.21.0
     *
     * @param {Phaser.Types.Math.Vector2Like} point - Any object with public `x` and `y` properties.
     * @param {number} angle - The angle to rotate by, in radians.
     * @param {number} distance - The distance from the point of rotation in pixels.
     *
     * @return {this} This Group object.
     */
    public function rotateAroundDistance(point:phaser.types.math.Vector2Like, angle:Float, distance:Float):Dynamic;
    /**
     * Sets the alpha of each group member.
     *
     * @method Phaser.GameObjects.Group#setAlpha
     * @since 3.21.0
     *
     * @param {number} value - The amount to set the alpha to.
     * @param {number} [step=0] - This is added to the `value` amount, multiplied by the iteration counter.
     *
     * @return {this} This Group object.
     */
    public function setAlpha(value:Float, ?step:Float):Dynamic;
    /**
     * Sets the tint of each group member.
     *
     * @method Phaser.GameObjects.Group#setTint
     * @since 3.21.0
     *
     * @param {number} topLeft - The tint being applied to top-left corner of item. If other parameters are given no value, this tint will be applied to whole item.
     * @param {number} [topRight] - The tint to be applied to top-right corner of item.
     * @param {number} [bottomLeft] - The tint to be applied to the bottom-left corner of item.
     * @param {number} [bottomRight] - The tint to be applied to the bottom-right corner of item.
     *
     * @return {this} This Group object.
     */
    public function setTint(topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):Dynamic;
    /**
     * Sets the originX, originY of each group member.
     *
     * @method Phaser.GameObjects.Group#setOrigin
     * @since 3.21.0
     *
     * @param {number} originX - The amount to set the `originX` property to.
     * @param {number} [originY] - The amount to set the `originY` property to. If `undefined` or `null` it uses the `originX` value.
     * @param {number} [stepX=0] - This is added to the `originX` amount, multiplied by the iteration counter.
     * @param {number} [stepY=0] - This is added to the `originY` amount, multiplied by the iteration counter.
     *
     * @return {this} This Group object.
     */
    public function setOrigin(originX:Float, ?originY:Float, ?stepX:Float, ?stepY:Float):Dynamic;
    /**
     * Sets the scaleX of each group member.
     *
     * @method Phaser.GameObjects.Group#scaleX
     * @since 3.21.0
     *
     * @param {number} value - The amount to set the property to.
     * @param {number} [step=0] - This is added to the `value` amount, multiplied by the iteration counter.
     *
     * @return {this} This Group object.
     */
    public function scaleX(value:Float, ?step:Float):Dynamic;
    /**
     * Sets the scaleY of each group member.
     *
     * @method Phaser.GameObjects.Group#scaleY
     * @since 3.21.0
     *
     * @param {number} value - The amount to set the property to.
     * @param {number} [step=0] - This is added to the `value` amount, multiplied by the iteration counter.
     *
     * @return {this} This Group object.
     */
    public function scaleY(value:Float, ?step:Float):Dynamic;
    /**
     * Sets the scaleX, scaleY of each group member.
     *
     * @method Phaser.GameObjects.Group#scaleXY
     * @since 3.21.0
     *
     * @param {number} scaleX - The amount to be added to the `scaleX` property.
     * @param {number} [scaleY] - The amount to be added to the `scaleY` property. If `undefined` or `null` it uses the `scaleX` value.
     * @param {number} [stepX=0] - This is added to the `scaleX` amount, multiplied by the iteration counter.
     * @param {number} [stepY=0] - This is added to the `scaleY` amount, multiplied by the iteration counter.
     *
     * @return {this} This Group object.
     */
    public function scaleXY(scaleX:Float, ?scaleY:Float, ?stepX:Float, ?stepY:Float):Dynamic;
    /**
     * Sets the depth of each group member.
     *
     * @method Phaser.GameObjects.Group#setDepth
     * @since 3.0.0
     *
     * @param {number} value - The amount to set the property to.
     * @param {number} [step=0] - This is added to the `value` amount, multiplied by the iteration counter.
     *
     * @return {this} This Group object.
     */
    public function setDepth(value:Float, ?step:Float):Dynamic;
    /**
     * Sets the blendMode of each group member.
     *
     * @method Phaser.GameObjects.Group#setBlendMode
     * @since 3.21.0
     *
     * @param {number} value - The amount to set the property to.
     *
     * @return {this} This Group object.
     */
    public function setBlendMode(value:Float):Dynamic;
    /**
     * Passes all group members to the Input Manager to enable them for input with identical areas and callbacks.
     *
     * @method Phaser.GameObjects.Group#setHitArea
     * @since 3.21.0
     *
     * @param {*} hitArea - Either an input configuration object, or a geometric shape that defines the hit area for the Game Object. If not specified a Rectangle will be used.
     * @param {Phaser.Types.Input.HitAreaCallback} hitAreaCallback - A callback to be invoked when the Game Object is interacted with. If you provide a shape you must also provide a callback.
     *
     * @return {this} This Group object.
     */
    public function setHitArea(hitArea:Dynamic, hitAreaCallback:phaser.types.input.HitAreaCallback):Dynamic;
    /**
     * Shuffles the group members in place.
     *
     * @method Phaser.GameObjects.Group#shuffle
     * @since 3.21.0
     *
     * @return {this} This Group object.
     */
    public function shuffle():Dynamic;
    /**
     * Deactivates a member of this group.
     *
     * @method Phaser.GameObjects.Group#kill
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - A member of this group.
     */
    public function kill(gameObject:phaser.gameobjects.GameObject):Void;
    /**
     * Deactivates and hides a member of this group.
     *
     * @method Phaser.GameObjects.Group#killAndHide
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - A member of this group.
     */
    public function killAndHide(gameObject:phaser.gameobjects.GameObject):Void;
    /**
     * Sets the visible of each group member.
     *
     * @method Phaser.GameObjects.Group#setVisible
     * @since 3.21.0
     *
     * @param {boolean} value - The value to set the property to.
     * @param {number} [index=0] - An optional offset to start searching from within the items array.
     * @param {number} [direction=1] - The direction to iterate through the array. 1 is from beginning to end, -1 from end to beginning.
     *
     * @return {this} This Group object.
     */
    public function setVisible(value:Bool, ?index:Float, ?direction:Float):Dynamic;
    /**
     * Toggles (flips) the visible state of each member of this group.
     *
     * @method Phaser.GameObjects.Group#toggleVisible
     * @since 3.0.0
     *
     * @return {this} This Group object.
     */
    public function toggleVisible():Dynamic;
}
