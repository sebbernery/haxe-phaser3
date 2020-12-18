package phaser.gameobjects;

/**
 * @classdesc
 * A Container Game Object.
 *
 * A Container, as the name implies, can 'contain' other types of Game Object.
 * When a Game Object is added to a Container, the Container becomes responsible for the rendering of it.
 * By default it will be removed from the Display List and instead added to the Containers own internal list.
 *
 * The position of the Game Object automatically becomes relative to the position of the Container.
 *
 * The origin of a Container is 0x0 (in local space) and that cannot be changed. The children you add to the
 * Container should be positioned with this value in mind. I.e. you should treat 0x0 as being the center of
 * the Container, and position children positively and negative around it as required.
 *
 * When the Container is rendered, all of its children are rendered as well, in the order in which they exist
 * within the Container. Container children can be repositioned using methods such as `MoveUp`, `MoveDown` and `SendToBack`.
 *
 * If you modify a transform property of the Container, such as `Container.x` or `Container.rotation` then it will
 * automatically influence all children as well.
 *
 * Containers can include other Containers for deeply nested transforms.
 *
 * Containers can have masks set on them and can be used as a mask too. However, Container children cannot be masked.
 * The masks do not 'stack up'. Only a Container on the root of the display list will use its mask.
 *
 * Containers can be enabled for input. Because they do not have a texture you need to provide a shape for them
 * to use as their hit area. Container children can also be enabled for input, independent of the Container.
 *
 * Containers can be given a physics body for either Arcade Physics, Impact Physics or Matter Physics. However,
 * if Container _children_ are enabled for physics you may get unexpected results, such as offset bodies,
 * if the Container itself, or any of its ancestors, is positioned anywhere other than at 0 x 0. Container children
 * with physics do not factor in the Container due to the excessive extra calculations needed. Please structure
 * your game to work around this.
 *
 * It's important to understand the impact of using Containers. They add additional processing overhead into
 * every one of their children. The deeper you nest them, the more the cost escalates. This is especially true
 * for input events. You also loose the ability to set the display depth of Container children in the same
 * flexible manner as those not within them. In short, don't use them for the sake of it. You pay a small cost
 * every time you create one, try to structure your game around avoiding that where possible.
 *
 * @class Container
 * @extends Phaser.GameObjects.GameObject
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.4.0
 *
 * @extends Phaser.GameObjects.Components.AlphaSingle
 * @extends Phaser.GameObjects.Components.BlendMode
 * @extends Phaser.GameObjects.Components.ComputedSize
 * @extends Phaser.GameObjects.Components.Depth
 * @extends Phaser.GameObjects.Components.Mask
 * @extends Phaser.GameObjects.Components.Transform
 * @extends Phaser.GameObjects.Components.Visible
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} [x=0] - The horizontal position of this Game Object in the world.
 * @param {number} [y=0] - The vertical position of this Game Object in the world.
 * @param {Phaser.GameObjects.GameObject[]} [children] - An optional array of Game Objects to add to this Container.
 */
@:native("Phaser.GameObjects.Container")
extern class Container extends phaser.gameobjects.GameObject {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?children:Array<phaser.gameobjects.GameObject>);
    /**
     * An array holding the children of this Container.
     *
     * @name Phaser.GameObjects.Container#list
     * @type {Phaser.GameObjects.GameObject[]}
     * @since 3.4.0
     */
    public var list:Array<phaser.gameobjects.GameObject>;
    /**
     * Does this Container exclusively manage its children?
     *
     * The default is `true` which means a child added to this Container cannot
     * belong in another Container, which includes the Scene display list.
     *
     * If you disable this then this Container will no longer exclusively manage its children.
     * This allows you to create all kinds of interesting graphical effects, such as replicating
     * Game Objects without reparenting them all over the Scene.
     * However, doing so will prevent children from receiving any kind of input event or have
     * their physics bodies work by default, as they're no longer a single entity on the
     * display list, but are being replicated where-ever this Container is.
     *
     * @name Phaser.GameObjects.Container#exclusive
     * @type {boolean}
     * @default true
     * @since 3.4.0
     */
    public var exclusive:Bool;
    /**
     * Containers can have an optional maximum size. If set to anything above 0 it
     * will constrict the addition of new Game Objects into the Container, capping off
     * the maximum limit the Container can grow in size to.
     *
     * @name Phaser.GameObjects.Container#maxSize
     * @type {integer}
     * @default -1
     * @since 3.4.0
     */
    public var maxSize:Int;
    /**
     * The cursor position.
     *
     * @name Phaser.GameObjects.Container#position
     * @type {integer}
     * @since 3.4.0
     */
    public var position:Int;
    /**
     * Internal Transform Matrix used for local space conversion.
     *
     * @name Phaser.GameObjects.Container#localTransform
     * @type {Phaser.GameObjects.Components.TransformMatrix}
     * @since 3.4.0
     */
    public var localTransform:phaser.gameobjects.components.TransformMatrix;
    /**
     * The horizontal scroll factor of this Container.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Container.
     *
     * When a camera scrolls it will change the location at which this Container is rendered on-screen.
     * It does not change the Containers actual position values.
     *
     * For a Container, setting this value will only update the Container itself, not its children.
     * If you wish to change the scrollFactor of the children as well, use the `setScrollFactor` method.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Container.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @name Phaser.GameObjects.Container#scrollFactorX
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scrollFactorX:Float;
    /**
     * The vertical scroll factor of this Container.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Container.
     *
     * When a camera scrolls it will change the location at which this Container is rendered on-screen.
     * It does not change the Containers actual position values.
     *
     * For a Container, setting this value will only update the Container itself, not its children.
     * If you wish to change the scrollFactor of the children as well, use the `setScrollFactor` method.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Container.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @name Phaser.GameObjects.Container#scrollFactorY
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scrollFactorY:Float;
    /**
     * Internal value to allow Containers to be used for input and physics.
     * Do not change this value. It has no effect other than to break things.
     *
     * @name Phaser.GameObjects.Container#originX
     * @type {number}
     * @readonly
     * @since 3.4.0
     */
    public var originX:Float;
    /**
     * Internal value to allow Containers to be used for input and physics.
     * Do not change this value. It has no effect other than to break things.
     *
     * @name Phaser.GameObjects.Container#originY
     * @type {number}
     * @readonly
     * @since 3.4.0
     */
    public var originY:Float;
    /**
     * Internal value to allow Containers to be used for input and physics.
     * Do not change this value. It has no effect other than to break things.
     *
     * @name Phaser.GameObjects.Container#displayOriginX
     * @type {number}
     * @readonly
     * @since 3.4.0
     */
    public var displayOriginX:Float;
    /**
     * Internal value to allow Containers to be used for input and physics.
     * Do not change this value. It has no effect other than to break things.
     *
     * @name Phaser.GameObjects.Container#displayOriginY
     * @type {number}
     * @readonly
     * @since 3.4.0
     */
    public var displayOriginY:Float;
    /**
     * The number of Game Objects inside this Container.
     *
     * @name Phaser.GameObjects.Container#length
     * @type {integer}
     * @readonly
     * @since 3.4.0
     */
    public var length:Int;
    /**
     * Returns the first Game Object within the Container, or `null` if it is empty.
     *
     * You can move the cursor by calling `Container.next` and `Container.previous`.
     *
     * @name Phaser.GameObjects.Container#first
     * @type {?Phaser.GameObjects.GameObject}
     * @readonly
     * @since 3.4.0
     */
    public var first:phaser.gameobjects.GameObject;
    /**
     * Returns the last Game Object within the Container, or `null` if it is empty.
     *
     * You can move the cursor by calling `Container.next` and `Container.previous`.
     *
     * @name Phaser.GameObjects.Container#last
     * @type {?Phaser.GameObjects.GameObject}
     * @readonly
     * @since 3.4.0
     */
    public var last:phaser.gameobjects.GameObject;
    /**
     * Returns the next Game Object within the Container, or `null` if it is empty.
     *
     * You can move the cursor by calling `Container.next` and `Container.previous`.
     *
     * @name Phaser.GameObjects.Container#next
     * @type {?Phaser.GameObjects.GameObject}
     * @readonly
     * @since 3.4.0
     */
    public var next:phaser.gameobjects.GameObject;
    /**
     * Returns the previous Game Object within the Container, or `null` if it is empty.
     *
     * You can move the cursor by calling `Container.next` and `Container.previous`.
     *
     * @name Phaser.GameObjects.Container#previous
     * @type {?Phaser.GameObjects.GameObject}
     * @readonly
     * @since 3.4.0
     */
    public var previous:phaser.gameobjects.GameObject;
    /**
     * Does this Container exclusively manage its children?
     *
     * The default is `true` which means a child added to this Container cannot
     * belong in another Container, which includes the Scene display list.
     *
     * If you disable this then this Container will no longer exclusively manage its children.
     * This allows you to create all kinds of interesting graphical effects, such as replicating
     * Game Objects without reparenting them all over the Scene.
     * However, doing so will prevent children from receiving any kind of input event or have
     * their physics bodies work by default, as they're no longer a single entity on the
     * display list, but are being replicated where-ever this Container is.
     *
     * @method Phaser.GameObjects.Container#setExclusive
     * @since 3.4.0
     *
     * @param {boolean} [value=true] - The exclusive state of this Container.
     *
     * @return {this} This Container.
     */
    public function setExclusive(?value:Bool):Dynamic;
    /**
     * Gets the bounds of this Container. It works by iterating all children of the Container,
     * getting their respective bounds, and then working out a min-max rectangle from that.
     * It does not factor in if the children render or not, all are included.
     *
     * Some children are unable to return their bounds, such as Graphics objects, in which case
     * they are skipped.
     *
     * Depending on the quantity of children in this Container it could be a really expensive call,
     * so cache it and only poll it as needed.
     *
     * The values are stored and returned in a Rectangle object.
     *
     * @method Phaser.GameObjects.Container#getBounds
     * @since 3.4.0
     *
     * @param {Phaser.Geom.Rectangle} [output] - A Geom.Rectangle object to store the values in. If not provided a new Rectangle will be created.
     *
     * @return {Phaser.Geom.Rectangle} The values stored in the output object.
     */
    public function getBounds(?output:phaser.geom.Rectangle):phaser.geom.Rectangle;
    /**
     * Takes a Point-like object, such as a Vector2, Geom.Point or object with public x and y properties,
     * and transforms it into the space of this Container, then returns it in the output object.
     *
     * @method Phaser.GameObjects.Container#pointToContainer
     * @since 3.4.0
     *
     * @param {(object|Phaser.Geom.Point|Phaser.Math.Vector2)} source - The Source Point to be transformed.
     * @param {(object|Phaser.Geom.Point|Phaser.Math.Vector2)} [output] - A destination object to store the transformed point in. If none given a Vector2 will be created and returned.
     *
     * @return {(object|Phaser.Geom.Point|Phaser.Math.Vector2)} The transformed point.
     */
    public function pointToContainer(source:Dynamic, ?output:Dynamic):Dynamic;
    /**
     * Returns the world transform matrix as used for Bounds checks.
     *
     * The returned matrix is temporal and shouldn't be stored.
     *
     * @method Phaser.GameObjects.Container#getBoundsTransformMatrix
     * @since 3.4.0
     *
     * @return {Phaser.GameObjects.Components.TransformMatrix} The world transform matrix.
     */
    public function getBoundsTransformMatrix():phaser.gameobjects.components.TransformMatrix;
    /**
     * Adds the given Game Object, or array of Game Objects, to this Container.
     *
     * Each Game Object must be unique within the Container.
     *
     * @method Phaser.GameObjects.Container#add
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[]} child - The Game Object, or array of Game Objects, to add to the Container.
     *
     * @return {this} This Container instance.
     */
    public function add(child:Dynamic):Dynamic;
    /**
     * Adds the given Game Object, or array of Game Objects, to this Container at the specified position.
     *
     * Existing Game Objects in the Container are shifted up.
     *
     * Each Game Object must be unique within the Container.
     *
     * @method Phaser.GameObjects.Container#addAt
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[]} child - The Game Object, or array of Game Objects, to add to the Container.
     * @param {integer} [index=0] - The position to insert the Game Object/s at.
     *
     * @return {this} This Container instance.
     */
    public function addAt(child:Dynamic, ?index:Int):Dynamic;
    /**
     * Returns the Game Object at the given position in this Container.
     *
     * @method Phaser.GameObjects.Container#getAt
     * @since 3.4.0
     *
     * @param {integer} index - The position to get the Game Object from.
     *
     * @return {?Phaser.GameObjects.GameObject} The Game Object at the specified index, or `null` if none found.
     */
    public function getAt(index:Int):phaser.gameobjects.GameObject;
    /**
     * Returns the index of the given Game Object in this Container.
     *
     * @method Phaser.GameObjects.Container#getIndex
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The Game Object to search for in this Container.
     *
     * @return {integer} The index of the Game Object in this Container, or -1 if not found.
     */
    public function getIndex(child:phaser.gameobjects.GameObject):Int;
    /**
     * Sort the contents of this Container so the items are in order based on the given property.
     * For example: `sort('alpha')` would sort the elements based on the value of their `alpha` property.
     *
     * @method Phaser.GameObjects.Container#sort
     * @since 3.4.0
     *
     * @param {string} property - The property to lexically sort by.
     * @param {function} [handler] - Provide your own custom handler function. Will receive 2 children which it should compare and return a boolean.
     *
     * @return {this} This Container instance.
     */
    public function sort(property:String, ?handler:Dynamic):Dynamic;
    /**
     * Searches for the first instance of a child with its `name` property matching the given argument.
     * Should more than one child have the same name only the first is returned.
     *
     * @method Phaser.GameObjects.Container#getByName
     * @since 3.4.0
     *
     * @param {string} name - The name to search for.
     *
     * @return {?Phaser.GameObjects.GameObject} The first child with a matching name, or `null` if none were found.
     */
    public function getByName(name:String):phaser.gameobjects.GameObject;
    /**
     * Returns a random Game Object from this Container.
     *
     * @method Phaser.GameObjects.Container#getRandom
     * @since 3.4.0
     *
     * @param {integer} [startIndex=0] - An optional start index.
     * @param {integer} [length] - An optional length, the total number of elements (from the startIndex) to choose from.
     *
     * @return {?Phaser.GameObjects.GameObject} A random child from the Container, or `null` if the Container is empty.
     */
    public function getRandom(?startIndex:Int, ?length:Int):phaser.gameobjects.GameObject;
    /**
     * Gets the first Game Object in this Container.
     *
     * You can also specify a property and value to search for, in which case it will return the first
     * Game Object in this Container with a matching property and / or value.
     *
     * For example: `getFirst('visible', true)` would return the first Game Object that had its `visible` property set.
     *
     * You can limit the search to the `startIndex` - `endIndex` range.
     *
     * @method Phaser.GameObjects.Container#getFirst
     * @since 3.4.0
     *
     * @param {string} property - The property to test on each Game Object in the Container.
     * @param {*} value - The value to test the property against. Must pass a strict (`===`) comparison check.
     * @param {integer} [startIndex=0] - An optional start index to search from.
     * @param {integer} [endIndex=Container.length] - An optional end index to search up to (but not included)
     *
     * @return {?Phaser.GameObjects.GameObject} The first matching Game Object, or `null` if none was found.
     */
    public function getFirst(property:String, value:Dynamic, ?startIndex:Int, ?endIndex:Int):phaser.gameobjects.GameObject;
    /**
     * Returns all Game Objects in this Container.
     *
     * You can optionally specify a matching criteria using the `property` and `value` arguments.
     *
     * For example: `getAll('body')` would return only Game Objects that have a body property.
     *
     * You can also specify a value to compare the property to:
     *
     * `getAll('visible', true)` would return only Game Objects that have their visible property set to `true`.
     *
     * Optionally you can specify a start and end index. For example if this Container had 100 Game Objects,
     * and you set `startIndex` to 0 and `endIndex` to 50, it would return matches from only
     * the first 50 Game Objects.
     *
     * @method Phaser.GameObjects.Container#getAll
     * @since 3.4.0
     *
     * @param {string} [property] - The property to test on each Game Object in the Container.
     * @param {any} [value] - If property is set then the `property` must strictly equal this value to be included in the results.
     * @param {integer} [startIndex=0] - An optional start index to search from.
     * @param {integer} [endIndex=Container.length] - An optional end index to search up to (but not included)
     *
     * @return {Phaser.GameObjects.GameObject[]} An array of matching Game Objects from this Container.
     */
    public function getAll(?property:String, ?value:Dynamic, ?startIndex:Int, ?endIndex:Int):Array<phaser.gameobjects.GameObject>;
    /**
     * Returns the total number of Game Objects in this Container that have a property
     * matching the given value.
     *
     * For example: `count('visible', true)` would count all the elements that have their visible property set.
     *
     * You can optionally limit the operation to the `startIndex` - `endIndex` range.
     *
     * @method Phaser.GameObjects.Container#count
     * @since 3.4.0
     *
     * @param {string} property - The property to check.
     * @param {any} value - The value to check.
     * @param {integer} [startIndex=0] - An optional start index to search from.
     * @param {integer} [endIndex=Container.length] - An optional end index to search up to (but not included)
     *
     * @return {integer} The total number of Game Objects in this Container with a property matching the given value.
     */
    public function count(property:String, value:Dynamic, ?startIndex:Int, ?endIndex:Int):Int;
    /**
     * Swaps the position of two Game Objects in this Container.
     * Both Game Objects must belong to this Container.
     *
     * @method Phaser.GameObjects.Container#swap
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.GameObject} child1 - The first Game Object to swap.
     * @param {Phaser.GameObjects.GameObject} child2 - The second Game Object to swap.
     *
     * @return {this} This Container instance.
     */
    public function swap(child1:phaser.gameobjects.GameObject, child2:phaser.gameobjects.GameObject):Dynamic;
    /**
     * Moves a Game Object to a new position within this Container.
     *
     * The Game Object must already be a child of this Container.
     *
     * The Game Object is removed from its old position and inserted into the new one.
     * Therefore the Container size does not change. Other children will change position accordingly.
     *
     * @method Phaser.GameObjects.Container#moveTo
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The Game Object to move.
     * @param {integer} index - The new position of the Game Object in this Container.
     *
     * @return {this} This Container instance.
     */
    public function moveTo(child:phaser.gameobjects.GameObject, index:Int):Dynamic;
    /**
     * Removes the given Game Object, or array of Game Objects, from this Container.
     *
     * The Game Objects must already be children of this Container.
     *
     * You can also optionally call `destroy` on each Game Object that is removed from the Container.
     *
     * @method Phaser.GameObjects.Container#remove
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[]} child - The Game Object, or array of Game Objects, to be removed from the Container.
     * @param {boolean} [destroyChild=false] - Optionally call `destroy` on each child successfully removed from this Container.
     *
     * @return {this} This Container instance.
     */
    public function remove(child:Dynamic, ?destroyChild:Bool):Dynamic;
    /**
     * Removes the Game Object at the given position in this Container.
     *
     * You can also optionally call `destroy` on the Game Object, if one is found.
     *
     * @method Phaser.GameObjects.Container#removeAt
     * @since 3.4.0
     *
     * @param {integer} index - The index of the Game Object to be removed.
     * @param {boolean} [destroyChild=false] - Optionally call `destroy` on the Game Object if successfully removed from this Container.
     *
     * @return {this} This Container instance.
     */
    public function removeAt(index:Int, ?destroyChild:Bool):Dynamic;
    /**
     * Removes the Game Objects between the given positions in this Container.
     *
     * You can also optionally call `destroy` on each Game Object that is removed from the Container.
     *
     * @method Phaser.GameObjects.Container#removeBetween
     * @since 3.4.0
     *
     * @param {integer} [startIndex=0] - An optional start index to search from.
     * @param {integer} [endIndex=Container.length] - An optional end index to search up to (but not included)
     * @param {boolean} [destroyChild=false] - Optionally call `destroy` on each Game Object successfully removed from this Container.
     *
     * @return {this} This Container instance.
     */
    public function removeBetween(?startIndex:Int, ?endIndex:Int, ?destroyChild:Bool):Dynamic;
    /**
     * Removes all Game Objects from this Container.
     *
     * You can also optionally call `destroy` on each Game Object that is removed from the Container.
     *
     * @method Phaser.GameObjects.Container#removeAll
     * @since 3.4.0
     *
     * @param {boolean} [destroyChild=false] - Optionally call `destroy` on each Game Object successfully removed from this Container.
     *
     * @return {this} This Container instance.
     */
    public function removeAll(?destroyChild:Bool):Dynamic;
    /**
     * Brings the given Game Object to the top of this Container.
     * This will cause it to render on-top of any other objects in the Container.
     *
     * @method Phaser.GameObjects.Container#bringToTop
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The Game Object to bring to the top of the Container.
     *
     * @return {this} This Container instance.
     */
    public function bringToTop(child:phaser.gameobjects.GameObject):Dynamic;
    /**
     * Sends the given Game Object to the bottom of this Container.
     * This will cause it to render below any other objects in the Container.
     *
     * @method Phaser.GameObjects.Container#sendToBack
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The Game Object to send to the bottom of the Container.
     *
     * @return {this} This Container instance.
     */
    public function sendToBack(child:phaser.gameobjects.GameObject):Dynamic;
    /**
     * Moves the given Game Object up one place in this Container, unless it's already at the top.
     *
     * @method Phaser.GameObjects.Container#moveUp
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The Game Object to be moved in the Container.
     *
     * @return {this} This Container instance.
     */
    public function moveUp(child:phaser.gameobjects.GameObject):Dynamic;
    /**
     * Moves the given Game Object down one place in this Container, unless it's already at the bottom.
     *
     * @method Phaser.GameObjects.Container#moveDown
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The Game Object to be moved in the Container.
     *
     * @return {this} This Container instance.
     */
    public function moveDown(child:phaser.gameobjects.GameObject):Dynamic;
    /**
     * Reverses the order of all Game Objects in this Container.
     *
     * @method Phaser.GameObjects.Container#reverse
     * @since 3.4.0
     *
     * @return {this} This Container instance.
     */
    public function reverse():Dynamic;
    /**
     * Shuffles the all Game Objects in this Container using the Fisher-Yates implementation.
     *
     * @method Phaser.GameObjects.Container#shuffle
     * @since 3.4.0
     *
     * @return {this} This Container instance.
     */
    public function shuffle():Dynamic;
    /**
     * Replaces a Game Object in this Container with the new Game Object.
     * The new Game Object cannot already be a child of this Container.
     *
     * @method Phaser.GameObjects.Container#replace
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.GameObject} oldChild - The Game Object in this Container that will be replaced.
     * @param {Phaser.GameObjects.GameObject} newChild - The Game Object to be added to this Container.
     * @param {boolean} [destroyChild=false] - Optionally call `destroy` on the Game Object if successfully removed from this Container.
     *
     * @return {this} This Container instance.
     */
    public function replace(oldChild:phaser.gameobjects.GameObject, newChild:phaser.gameobjects.GameObject, ?destroyChild:Bool):Dynamic;
    /**
     * Returns `true` if the given Game Object is a direct child of this Container.
     *
     * This check does not scan nested Containers.
     *
     * @method Phaser.GameObjects.Container#exists
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The Game Object to check for within this Container.
     *
     * @return {boolean} True if the Game Object is an immediate child of this Container, otherwise false.
     */
    public function exists(child:phaser.gameobjects.GameObject):Bool;
    /**
     * Sets the property to the given value on all Game Objects in this Container.
     *
     * Optionally you can specify a start and end index. For example if this Container had 100 Game Objects,
     * and you set `startIndex` to 0 and `endIndex` to 50, it would return matches from only
     * the first 50 Game Objects.
     *
     * @method Phaser.GameObjects.Container#setAll
     * @since 3.4.0
     *
     * @param {string} property - The property that must exist on the Game Object.
     * @param {any} value - The value to get the property to.
     * @param {integer} [startIndex=0] - An optional start index to search from.
     * @param {integer} [endIndex=Container.length] - An optional end index to search up to (but not included)
     *
     * @return {this} This Container instance.
     */
    public function setAll(property:String, value:Dynamic, ?startIndex:Int, ?endIndex:Int):Dynamic;
    /**
     * Passes all Game Objects in this Container to the given callback.
     *
     * A copy of the Container is made before passing each entry to your callback.
     * This protects against the callback itself modifying the Container.
     *
     * If you know for sure that the callback will not change the size of this Container
     * then you can use the more performant `Container.iterate` method instead.
     *
     * @method Phaser.GameObjects.Container#each
     * @since 3.4.0
     *
     * @param {function} callback - The function to call.
     * @param {object} [context] - Value to use as `this` when executing callback.
     * @param {...*} [args] - Additional arguments that will be passed to the callback, after the child.
     *
     * @return {this} This Container instance.
     */
    public function each(callback:Dynamic, ?context:Dynamic, ?args:Dynamic):Dynamic;
    /**
     * Passes all Game Objects in this Container to the given callback.
     *
     * Only use this method when you absolutely know that the Container will not be modified during
     * the iteration, i.e. by removing or adding to its contents.
     *
     * @method Phaser.GameObjects.Container#iterate
     * @since 3.4.0
     *
     * @param {function} callback - The function to call.
     * @param {object} [context] - Value to use as `this` when executing callback.
     * @param {...*} [args] - Additional arguments that will be passed to the callback, after the child.
     *
     * @return {this} This Container instance.
     */
    public function iterate(callback:Dynamic, ?context:Dynamic, ?args:Dynamic):Dynamic;
    /**
     * Sets the scroll factor of this Container and optionally all of its children.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @method Phaser.GameObjects.Container#setScrollFactor
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scroll factor of this Game Object.
     * @param {number} [y=x] - The vertical scroll factor of this Game Object. If not set it will use the `x` value.
     * @param {boolean} [updateChildren=false] - Apply this scrollFactor to all Container children as well?
     *
     * @return {this} This Game Object instance.
     */
    public function setScrollFactor(x:Float, ?y:Float, ?updateChildren:Bool):Dynamic;
    /**
     * Internal destroy handler, called as part of the destroy process.
     *
     * @method Phaser.GameObjects.Container#preDestroy
     * @protected
     * @since 3.9.0
     */
    public function preDestroy():Void;
    /**
     * The alpha value of the Game Object.
     *
     * This is a global value, impacting the entire Game Object, not just a region of it.
     *
     * @name Phaser.GameObjects.Components.AlphaSingle#alpha
     * @type {number}
     * @since 3.0.0
     */
    public var alpha:Float;
    /**
     * Clears all alpha values associated with this Game Object.
     *
     * Immediately sets the alpha levels back to 1 (fully opaque).
     *
     * @method Phaser.GameObjects.Components.AlphaSingle#clearAlpha
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function clearAlpha():Dynamic;
    /**
     * Set the Alpha level of this Game Object. The alpha controls the opacity of the Game Object as it renders.
     * Alpha values are provided as a float between 0, fully transparent, and 1, fully opaque.
     *
     * @method Phaser.GameObjects.Components.AlphaSingle#setAlpha
     * @since 3.0.0
     *
     * @param {number} [value=1] - The alpha value applied across the whole Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setAlpha(?value:Float):Dynamic;
    /**
     * Sets the Blend Mode being used by this Game Object.
     *
     * This can be a const, such as `Phaser.BlendModes.SCREEN`, or an integer, such as 4 (for Overlay)
     *
     * Under WebGL only the following Blend Modes are available:
     *
     * * ADD
     * * MULTIPLY
     * * SCREEN
     * * ERASE
     *
     * Canvas has more available depending on browser support.
     *
     * You can also create your own custom Blend Modes in WebGL.
     *
     * Blend modes have different effects under Canvas and WebGL, and from browser to browser, depending
     * on support. Blend Modes also cause a WebGL batch flush should it encounter a new blend mode. For these
     * reasons try to be careful about the construction of your Scene and the frequency of which blend modes
     * are used.
     *
     * @name Phaser.GameObjects.Components.BlendMode#blendMode
     * @type {(Phaser.BlendModes|string)}
     * @since 3.0.0
     */
    public var blendMode:Dynamic;
    /**
     * Sets the Blend Mode being used by this Game Object.
     *
     * This can be a const, such as `Phaser.BlendModes.SCREEN`, or an integer, such as 4 (for Overlay)
     *
     * Under WebGL only the following Blend Modes are available:
     *
     * * ADD
     * * MULTIPLY
     * * SCREEN
     * * ERASE (only works when rendering to a framebuffer, like a Render Texture)
     *
     * Canvas has more available depending on browser support.
     *
     * You can also create your own custom Blend Modes in WebGL.
     *
     * Blend modes have different effects under Canvas and WebGL, and from browser to browser, depending
     * on support. Blend Modes also cause a WebGL batch flush should it encounter a new blend mode. For these
     * reasons try to be careful about the construction of your Scene and the frequency in which blend modes
     * are used.
     *
     * @method Phaser.GameObjects.Components.BlendMode#setBlendMode
     * @since 3.0.0
     *
     * @param {(string|Phaser.BlendModes)} value - The BlendMode value. Either a string or a CONST.
     *
     * @return {this} This Game Object instance.
     */
    public function setBlendMode(value:Dynamic):Dynamic;
    /**
     * The native (un-scaled) width of this Game Object.
     *
     * Changing this value will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or use
     * the `displayWidth` property.
     *
     * @name Phaser.GameObjects.Components.ComputedSize#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The native (un-scaled) height of this Game Object.
     *
     * Changing this value will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or use
     * the `displayHeight` property.
     *
     * @name Phaser.GameObjects.Components.ComputedSize#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The displayed width of this Game Object.
     *
     * This value takes into account the scale factor.
     *
     * Setting this value will adjust the Game Object's scale property.
     *
     * @name Phaser.GameObjects.Components.ComputedSize#displayWidth
     * @type {number}
     * @since 3.0.0
     */
    public var displayWidth:Float;
    /**
     * The displayed height of this Game Object.
     *
     * This value takes into account the scale factor.
     *
     * Setting this value will adjust the Game Object's scale property.
     *
     * @name Phaser.GameObjects.Components.ComputedSize#displayHeight
     * @type {number}
     * @since 3.0.0
     */
    public var displayHeight:Float;
    /**
     * Sets the internal size of this Game Object, as used for frame or physics body creation.
     *
     * This will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or call the
     * `setDisplaySize` method, which is the same thing as changing the scale but allows you
     * to do so by giving pixel values.
     *
     * If you have enabled this Game Object for input, changing the size will _not_ change the
     * size of the hit area. To do this you should adjust the `input.hitArea` object directly.
     *
     * @method Phaser.GameObjects.Components.ComputedSize#setSize
     * @since 3.4.0
     *
     * @param {number} width - The width of this Game Object.
     * @param {number} height - The height of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setSize(width:Float, height:Float):Dynamic;
    /**
     * Sets the display size of this Game Object.
     *
     * Calling this will adjust the scale.
     *
     * @method Phaser.GameObjects.Components.ComputedSize#setDisplaySize
     * @since 3.4.0
     *
     * @param {number} width - The width of this Game Object.
     * @param {number} height - The height of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDisplaySize(width:Float, height:Float):Dynamic;
    /**
     * The depth of this Game Object within the Scene.
     *
     * The depth is also known as the 'z-index' in some environments, and allows you to change the rendering order
     * of Game Objects, without actually moving their position in the display list.
     *
     * The depth starts from zero (the default value) and increases from that point. A Game Object with a higher depth
     * value will always render in front of one with a lower value.
     *
     * Setting the depth will queue a depth sort event within the Scene.
     *
     * @name Phaser.GameObjects.Components.Depth#depth
     * @type {number}
     * @since 3.0.0
     */
    public var depth:Float;
    /**
     * The depth of this Game Object within the Scene.
     *
     * The depth is also known as the 'z-index' in some environments, and allows you to change the rendering order
     * of Game Objects, without actually moving their position in the display list.
     *
     * The depth starts from zero (the default value) and increases from that point. A Game Object with a higher depth
     * value will always render in front of one with a lower value.
     *
     * Setting the depth will queue a depth sort event within the Scene.
     *
     * @method Phaser.GameObjects.Components.Depth#setDepth
     * @since 3.0.0
     *
     * @param {integer} value - The depth of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDepth(value:Int):Dynamic;
    /**
     * The Mask this Game Object is using during render.
     *
     * @name Phaser.GameObjects.Components.Mask#mask
     * @type {Phaser.Display.Masks.BitmapMask|Phaser.Display.Masks.GeometryMask}
     * @since 3.0.0
     */
    public var mask:Dynamic;
    /**
     * Sets the mask that this Game Object will use to render with.
     *
     * The mask must have been previously created and can be either a GeometryMask or a BitmapMask.
     * Note: Bitmap Masks only work on WebGL. Geometry Masks work on both WebGL and Canvas.
     *
     * If a mask is already set on this Game Object it will be immediately replaced.
     *
     * Masks are positioned in global space and are not relative to the Game Object to which they
     * are applied. The reason for this is that multiple Game Objects can all share the same mask.
     *
     * Masks have no impact on physics or input detection. They are purely a rendering component
     * that allows you to limit what is visible during the render pass.
     *
     * @method Phaser.GameObjects.Components.Mask#setMask
     * @since 3.6.2
     *
     * @param {Phaser.Display.Masks.BitmapMask|Phaser.Display.Masks.GeometryMask} mask - The mask this Game Object will use when rendering.
     *
     * @return {this} This Game Object instance.
     */
    public function setMask(mask:Dynamic):Dynamic;
    /**
     * Clears the mask that this Game Object was using.
     *
     * @method Phaser.GameObjects.Components.Mask#clearMask
     * @since 3.6.2
     *
     * @param {boolean} [destroyMask=false] - Destroy the mask before clearing it?
     *
     * @return {this} This Game Object instance.
     */
    public function clearMask(?destroyMask:Bool):Dynamic;
    /**
     * Creates and returns a Bitmap Mask. This mask can be used by any Game Object,
     * including this one.
     *
     * To create the mask you need to pass in a reference to a renderable Game Object.
     * A renderable Game Object is one that uses a texture to render with, such as an
     * Image, Sprite, Render Texture or BitmapText.
     *
     * If you do not provide a renderable object, and this Game Object has a texture,
     * it will use itself as the object. This means you can call this method to create
     * a Bitmap Mask from any renderable Game Object.
     *
     * @method Phaser.GameObjects.Components.Mask#createBitmapMask
     * @since 3.6.2
     *
     * @param {Phaser.GameObjects.GameObject} [renderable] - A renderable Game Object that uses a texture, such as a Sprite.
     *
     * @return {Phaser.Display.Masks.BitmapMask} This Bitmap Mask that was created.
     */
    public function createBitmapMask(?renderable:phaser.gameobjects.GameObject):phaser.display.masks.BitmapMask;
    /**
     * Creates and returns a Geometry Mask. This mask can be used by any Game Object,
     * including this one.
     *
     * To create the mask you need to pass in a reference to a Graphics Game Object.
     *
     * If you do not provide a graphics object, and this Game Object is an instance
     * of a Graphics object, then it will use itself to create the mask.
     *
     * This means you can call this method to create a Geometry Mask from any Graphics Game Object.
     *
     * @method Phaser.GameObjects.Components.Mask#createGeometryMask
     * @since 3.6.2
     *
     * @param {Phaser.GameObjects.Graphics} [graphics] - A Graphics Game Object. The geometry within it will be used as the mask.
     *
     * @return {Phaser.Display.Masks.GeometryMask} This Geometry Mask that was created.
     */
    public function createGeometryMask(?graphics:phaser.gameobjects.Graphics):phaser.display.masks.GeometryMask;
    /**
     * The x position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#x
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#y
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The z position of this Game Object.
     *
     * Note: The z position does not control the rendering order of 2D Game Objects. Use
     * {@link Phaser.GameObjects.Components.Depth#depth} instead.
     *
     * @name Phaser.GameObjects.Components.Transform#z
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var z:Float;
    /**
     * The w position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#w
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var w:Float;
    /**
     * This is a special setter that allows you to set both the horizontal and vertical scale of this Game Object
     * to the same value, at the same time. When reading this value the result returned is `(scaleX + scaleY) / 2`.
     *
     * Use of this property implies you wish the horizontal and vertical scales to be equal to each other. If this
     * isn't the case, use the `scaleX` or `scaleY` properties instead.
     *
     * @name Phaser.GameObjects.Components.Transform#scale
     * @type {number}
     * @default 1
     * @since 3.18.0
     */
    public var scale:Float;
    /**
     * The horizontal scale of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#scaleX
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scaleX:Float;
    /**
     * The vertical scale of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#scaleY
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scaleY:Float;
    /**
     * The angle of this Game Object as expressed in degrees.
     *
     * Phaser uses a right-hand clockwise rotation system, where 0 is right, 90 is down, 180/-180 is left
     * and -90 is up.
     *
     * If you prefer to work in radians, see the `rotation` property instead.
     *
     * @name Phaser.GameObjects.Components.Transform#angle
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var angle:Int;
    /**
     * The angle of this Game Object in radians.
     *
     * Phaser uses a right-hand clockwise rotation system, where 0 is right, PI/2 is down, +-PI is left
     * and -PI/2 is up.
     *
     * If you prefer to work in degrees, see the `angle` property instead.
     *
     * @name Phaser.GameObjects.Components.Transform#rotation
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var rotation:Float;
    /**
     * Sets the position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setPosition
     * @since 3.0.0
     *
     * @param {number} [x=0] - The x position of this Game Object.
     * @param {number} [y=x] - The y position of this Game Object. If not set it will use the `x` value.
     * @param {number} [z=0] - The z position of this Game Object.
     * @param {number} [w=0] - The w position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setPosition(?x:Float, ?y:Float, ?z:Float, ?w:Float):Dynamic;
    /**
     * Sets the position of this Game Object to be a random position within the confines of
     * the given area.
     *
     * If no area is specified a random position between 0 x 0 and the game width x height is used instead.
     *
     * The position does not factor in the size of this Game Object, meaning that only the origin is
     * guaranteed to be within the area.
     *
     * @method Phaser.GameObjects.Components.Transform#setRandomPosition
     * @since 3.8.0
     *
     * @param {number} [x=0] - The x position of the top-left of the random area.
     * @param {number} [y=0] - The y position of the top-left of the random area.
     * @param {number} [width] - The width of the random area.
     * @param {number} [height] - The height of the random area.
     *
     * @return {this} This Game Object instance.
     */
    public function setRandomPosition(?x:Float, ?y:Float, ?width:Float, ?height:Float):Dynamic;
    /**
     * Sets the rotation of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setRotation
     * @since 3.0.0
     *
     * @param {number} [radians=0] - The rotation of this Game Object, in radians.
     *
     * @return {this} This Game Object instance.
     */
    public function setRotation(?radians:Float):Dynamic;
    /**
     * Sets the angle of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setAngle
     * @since 3.0.0
     *
     * @param {number} [degrees=0] - The rotation of this Game Object, in degrees.
     *
     * @return {this} This Game Object instance.
     */
    public function setAngle(?degrees:Float):Dynamic;
    /**
     * Sets the scale of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setScale
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scale of this Game Object.
     * @param {number} [y=x] - The vertical scale of this Game Object. If not set it will use the `x` value.
     *
     * @return {this} This Game Object instance.
     */
    public function setScale(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the x position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setX
     * @since 3.0.0
     *
     * @param {number} [value=0] - The x position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setX(?value:Float):Dynamic;
    /**
     * Sets the y position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setY
     * @since 3.0.0
     *
     * @param {number} [value=0] - The y position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setY(?value:Float):Dynamic;
    /**
     * Sets the z position of this Game Object.
     *
     * Note: The z position does not control the rendering order of 2D Game Objects. Use
     * {@link Phaser.GameObjects.Components.Depth#setDepth} instead.
     *
     * @method Phaser.GameObjects.Components.Transform#setZ
     * @since 3.0.0
     *
     * @param {number} [value=0] - The z position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setZ(?value:Float):Dynamic;
    /**
     * Sets the w position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setW
     * @since 3.0.0
     *
     * @param {number} [value=0] - The w position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setW(?value:Float):Dynamic;
    /**
     * Gets the local transform matrix for this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#getLocalTransformMatrix
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.Components.TransformMatrix} [tempMatrix] - The matrix to populate with the values from this Game Object.
     *
     * @return {Phaser.GameObjects.Components.TransformMatrix} The populated Transform Matrix.
     */
    public function getLocalTransformMatrix(?tempMatrix:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    /**
     * Gets the world transform matrix for this Game Object, factoring in any parent Containers.
     *
     * @method Phaser.GameObjects.Components.Transform#getWorldTransformMatrix
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.Components.TransformMatrix} [tempMatrix] - The matrix to populate with the values from this Game Object.
     * @param {Phaser.GameObjects.Components.TransformMatrix} [parentMatrix] - A temporary matrix to hold parent values during the calculations.
     *
     * @return {Phaser.GameObjects.Components.TransformMatrix} The populated Transform Matrix.
     */
    public function getWorldTransformMatrix(?tempMatrix:phaser.gameobjects.components.TransformMatrix, ?parentMatrix:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    /**
     * Gets the sum total rotation of all of this Game Objects parent Containers.
     *
     * The returned value is in radians and will be zero if this Game Object has no parent container.
     *
     * @method Phaser.GameObjects.Components.Transform#getParentRotation
     * @since 3.18.0
     *
     * @return {number} The sum total rotation, in radians, of all parent containers of this Game Object.
     */
    public function getParentRotation():Float;
    /**
     * The visible state of the Game Object.
     *
     * An invisible Game Object will skip rendering, but will still process update logic.
     *
     * @name Phaser.GameObjects.Components.Visible#visible
     * @type {boolean}
     * @since 3.0.0
     */
    public var visible:Bool;
    /**
     * Sets the visibility of this Game Object.
     *
     * An invisible Game Object will skip rendering, but will still process update logic.
     *
     * @method Phaser.GameObjects.Components.Visible#setVisible
     * @since 3.0.0
     *
     * @param {boolean} value - The visible state of the Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setVisible(value:Bool):Dynamic;
}
