package phaser.gameobjects;

/**
 * @classdesc A Group is a way for you to create, manipulate, or recycle similar Game Objects.
 *
 * Group membership is non-exclusive. A Game Object can belong to several groups, one group, or none.
 *
 * Groups themselves aren't displayable, and can't be positioned, rotated, scaled, or hidden.
 *
 * @class Group
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.0.0
 * @param {Phaser.Scene} scene - The scene this group belongs to.
 * @param {(Phaser.GameObjects.GameObject[]|GroupConfig|GroupCreateConfig)} [children] - Game Objects to add to this group; or the `config` argument.
 * @param {GroupConfig|GroupCreateConfig} [config] - Settings for this group. If `key` is set, Phaser.GameObjects.Group#createMultiple is also called with these settings.
 *
 * @see Phaser.Physics.Arcade.Group
 * @see Phaser.Physics.Arcade.StaticGroup
 */
@:native("Phaser.GameObjects.Group")
extern class Group {
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
     * The class to create new group members from.
     *
     * @name Phaser.GameObjects.Group#classType
     * @type {GroupClassTypeConstructor}
     * @since 3.0.0
     * @default Phaser.GameObjects.Sprite
     */
    public var classType:GroupClassTypeConstructor;
    /**
     * Whether this group runs its {@link Phaser.GameObjects.Group#preUpdate} method
     * (which may update any members).
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
     * @type {integer}
     * @since 3.0.0
     * @default -1
     */
    public var maxSize:Int;
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
     * @type {(string|integer)}
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
     * @type {?GroupCallback}
     * @since 3.0.0
     */
    public var createCallback:GroupCallback;
    /**
     * A function to be called when removing group members.
     *
     * @name Phaser.GameObjects.Group#removeCallback
     * @type {?GroupCallback}
     * @since 3.0.0
     */
    public var removeCallback:GroupCallback;
    /**
     * A function to be called when creating several group members at once.
     *
     * @name Phaser.GameObjects.Group#createMultipleCallback
     * @type {?GroupMultipleCreateCallback}
     * @since 3.0.0
     */
    public var createMultipleCallback:GroupMultipleCreateCallback;
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
     * @param {(string|integer)} [frame=defaultFrame] - The texture frame of the new Game Object.
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
     * @param {GroupCreateConfig|GroupCreateConfig[]} config - Creation settings. This can be a single configuration object or an array of such objects, which will be applied in turn.
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
     * @param {GroupCreateConfig} options - Creation settings.
     *
     * @return {any[]} The newly created Game Objects.
     */
    public function createFromConfig(options:GroupCreateConfig):Array<Dynamic>;
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
     * @return {Phaser.GameObjects.Group} This Group object.
     */
    public function add(child:phaser.gameobjects.GameObject, ?addToScene:Bool):phaser.gameobjects.Group;
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
     * @return {Phaser.GameObjects.Group} This group.
     */
    public function addMultiple(children:Array<phaser.gameobjects.GameObject>, ?addToScene:Bool):phaser.gameobjects.Group;
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
     * @return {Phaser.GameObjects.Group} This Group object.
     */
    public function remove(child:phaser.gameobjects.GameObject, ?removeFromScene:Bool, ?destroyChild:Bool):phaser.gameobjects.Group;
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
     * @return {Phaser.GameObjects.Group} This group.
     */
    public function clear(?removeFromScene:Bool, ?destroyChild:Bool):phaser.gameobjects.Group;
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
     * @return {integer}
     */
    public function getLength():Int;
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
     * @param {(string|integer)} [frame=defaultFrame] - A texture frame assigned to a new Game Object (if one is created).
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
     * @param {integer} nth - The nth matching Group member to search for.
     * @param {boolean} [state=false] - The {@link Phaser.GameObjects.GameObject#active} value to match.
     * @param {boolean} [createIfNull=false] - Create a new Game Object if no matching members are found, using the following arguments.
     * @param {number} [x] - The horizontal position of the Game Object in the world.
     * @param {number} [y] - The vertical position of the Game Object in the world.
     * @param {string} [key=defaultKey] - The texture key assigned to a new Game Object (if one is created).
     * @param {(string|integer)} [frame=defaultFrame] - A texture frame assigned to a new Game Object (if one is created).
     * @param {boolean} [visible=true] - The {@link Phaser.GameObjects.Components.Visible#visible} state of a new Game Object (if one is created).
     *
     * @return {?any} The first matching group member, or a newly created member, or null.
     */
    public function getFirstNth(nth:Int, ?state:Bool, ?createIfNull:Bool, ?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
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
     * @param {(string|integer)} [frame=defaultFrame] - A texture frame assigned to a new Game Object (if one is created).
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
     * @param {integer} nth - The nth matching Group member to search for.
     * @param {boolean} [state=false] - The {@link Phaser.GameObjects.GameObject#active} value to match.
     * @param {boolean} [createIfNull=false] - Create a new Game Object if no matching members are found, using the following arguments.
     * @param {number} [x] - The horizontal position of the Game Object in the world.
     * @param {number} [y] - The vertical position of the Game Object in the world.
     * @param {string} [key=defaultKey] - The texture key assigned to a new Game Object (if one is created).
     * @param {(string|integer)} [frame=defaultFrame] - A texture frame assigned to a new Game Object (if one is created).
     * @param {boolean} [visible=true] - The {@link Phaser.GameObjects.Components.Visible#visible} state of a new Game Object (if one is created).
     *
     * @return {?any} The first matching group member, or a newly created member, or null.
     */
    public function getLastNth(nth:Int, ?state:Bool, ?createIfNull:Bool, ?x:Float, ?y:Float, ?key:String, ?frame:Dynamic, ?visible:Bool):Dynamic;
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
     * @param {(string|integer)} [frame=defaultFrame] - A texture frame assigned to a new Game Object (if one is created).
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
     * @param {(string|integer)} [frame=defaultFrame] - A texture frame assigned to a new Game Object (if one is created).
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
     * @param {(string|integer)} [frame=defaultFrame] - A texture frame assigned to a new Game Object (if one is created).
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
     * @return {Phaser.GameObjects.Group} This Group object.
     */
    public function playAnimation(key:String, ?startFrame:String):phaser.gameobjects.Group;
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
     * @return {integer} The number of group members with an active state matching the `active` argument.
     */
    public function countActive(?value:Bool):Int;
    /**
     * Counts the number of in-use (active) group members.
     *
     * @method Phaser.GameObjects.Group#getTotalUsed
     * @since 3.0.0
     *
     * @return {integer} The number of group members with an active state of true.
     */
    public function getTotalUsed():Int;
    /**
     * The difference of {@link Phaser.GameObjects.Group#maxSize} and the number of active group members.
     *
     * This represents the number of group members that could be created or reactivated before reaching the size limit.
     *
     * @method Phaser.GameObjects.Group#getTotalFree
     * @since 3.0.0
     *
     * @return {integer} maxSize minus the number of active group numbers; or a large number (if maxSize is -1).
     */
    public function getTotalFree():Int;
    /**
     * Sets the depth of each group member.
     *
     * @method Phaser.GameObjects.Group#setDepth
     * @since 3.0.0
     *
     * @param {number} value - The amount to set the property to.
     * @param {number} step - This is added to the `value` amount, multiplied by the iteration counter.
     *
     * @return {Phaser.GameObjects.Group} This Group object.
     */
    public function setDepth(value:Float, step:Float):phaser.gameobjects.Group;
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
     * Toggles (flips) the visible state of each member of this group.
     *
     * @method Phaser.GameObjects.Group#toggleVisible
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.Group} This Group object.
     */
    public function toggleVisible():phaser.gameobjects.Group;
    /**
     * Empties this group and removes it from the Scene.
     *
     * Does not call {@link Phaser.GameObjects.Group#removeCallback}.
     *
     * @method Phaser.GameObjects.Group#destroy
     * @since 3.0.0
     *
     * @param {boolean} [destroyChildren=false] - Also {@link Phaser.GameObjects.GameObject#destroy} each group member.
     */
    public function destroy(?destroyChildren:Bool):Void;
}
