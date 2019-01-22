package phaser.physics.matter;

/**
 * @classdesc
 * [description]
 *
 * @class Factory
 * @memberof Phaser.Physics.Matter
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Physics.Matter.World} world - [description]
 */
@:native("Phaser.Physics.Matter.Factory")
extern class Factory {
    public function new(world:phaser.physics.matter.World);
    /**
     * [description]
     *
     * @name Phaser.Physics.Matter.Factory#world
     * @type {Phaser.Physics.Matter.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.matter.World;
    /**
     * [description]
     *
     * @name Phaser.Physics.Matter.Factory#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * A reference to the Scene.Systems this Matter Physics instance belongs to.
     *
     * @name Phaser.Physics.Matter.Factory#sys
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var sys:phaser.scenes.Systems;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#rectangle
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} y - [description]
     * @param {number} width - [description]
     * @param {number} height - [description]
     * @param {object} options - [description]
     *
     * @return {MatterJS.Body} A Matter JS Body.
     */
    public function rectangle(x:Float, y:Float, width:Float, height:Float, options:Dynamic):matterjs.Body;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#trapezoid
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} y - [description]
     * @param {number} width - [description]
     * @param {number} height - [description]
     * @param {number} slope - [description]
     * @param {object} options - [description]
     *
     * @return {MatterJS.Body} A Matter JS Body.
     */
    public function trapezoid(x:Float, y:Float, width:Float, height:Float, slope:Float, options:Dynamic):matterjs.Body;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#circle
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} y - [description]
     * @param {number} radius - [description]
     * @param {object} options - [description]
     * @param {number} maxSides - [description]
     *
     * @return {MatterJS.Body} A Matter JS Body.
     */
    public function circle(x:Float, y:Float, radius:Float, options:Dynamic, maxSides:Float):matterjs.Body;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#polygon
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} y - [description]
     * @param {number} sides - [description]
     * @param {number} radius - [description]
     * @param {object} options - [description]
     *
     * @return {MatterJS.Body} A Matter JS Body.
     */
    public function polygon(x:Float, y:Float, sides:Float, radius:Float, options:Dynamic):matterjs.Body;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#fromVertices
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} y - [description]
     * @param {array} vertexSets - [description]
     * @param {object} options - [description]
     * @param {boolean} flagInternal - [description]
     * @param {boolean} removeCollinear - [description]
     * @param {number} minimumArea - [description]
     *
     * @return {MatterJS.Body} A Matter JS Body.
     */
    public function fromVertices(x:Float, y:Float, vertexSets:Array<Dynamic>, options:Dynamic, flagInternal:Bool, removeCollinear:Bool, minimumArea:Float):matterjs.Body;
    /**
     * Create a new composite containing Matter Image objects created in a grid arrangement.
     * This function uses the body bounds to prevent overlaps.
     *
     * @method Phaser.Physics.Matter.Factory#imageStack
     * @since 3.0.0
     *
     * @param {string} key - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} frame - An optional frame from the Texture this Game Object is rendering with. Set to `null` to skip this value.
     * @param {number} x - The horizontal position of this composite in the world.
     * @param {number} y - The vertical position of this composite in the world.
     * @param {number} columns - The number of columns in the grid.
     * @param {number} rows - The number of rows in the grid.
     * @param {number} [columnGap=0] - The distance between each column.
     * @param {number} [rowGap=0] - The distance between each row.
     * @param {object} [options] - [description]
     *
     * @return {MatterJS.Composite} A Matter JS Composite Stack.
     */
    public function imageStack(key:String, frame:Dynamic, x:Float, y:Float, columns:Float, rows:Float, ?columnGap:Float, ?rowGap:Float, ?options:Dynamic):matterjs.Composite;
    /**
     * Create a new composite containing bodies created in the callback in a grid arrangement.
     * This function uses the body bounds to prevent overlaps.
     *
     * @method Phaser.Physics.Matter.Factory#stack
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this composite in the world.
     * @param {number} y - The vertical position of this composite in the world.
     * @param {number} columns - The number of columns in the grid.
     * @param {number} rows - The number of rows in the grid.
     * @param {number} columnGap - The distance between each column.
     * @param {number} rowGap - The distance between each row.
     * @param {function} callback - The callback that creates the stack.
     *
     * @return {MatterJS.Composite} A new composite containing objects created in the callback.
     */
    public function stack(x:Float, y:Float, columns:Float, rows:Float, columnGap:Float, rowGap:Float, callback:Dynamic):matterjs.Composite;
    /**
     * Create a new composite containing bodies created in the callback in a pyramid arrangement.
     * This function uses the body bounds to prevent overlaps.
     *
     * @method Phaser.Physics.Matter.Factory#pyramid
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this composite in the world.
     * @param {number} y - The vertical position of this composite in the world.
     * @param {number} columns - The number of columns in the pyramid.
     * @param {number} rows - The number of rows in the pyramid.
     * @param {number} columnGap - The distance between each column.
     * @param {number} rowGap - The distance between each row.
     * @param {function} callback - [description]
     *
     * @return {MatterJS.Composite} A Matter JS Composite pyramid.
     */
    public function pyramid(x:Float, y:Float, columns:Float, rows:Float, columnGap:Float, rowGap:Float, callback:Dynamic):matterjs.Composite;
    /**
     * Chains all bodies in the given composite together using constraints.
     *
     * @method Phaser.Physics.Matter.Factory#chain
     * @since 3.0.0
     *
     * @param {MatterJS.Composite} composite - [description]
     * @param {number} xOffsetA - [description]
     * @param {number} yOffsetA - [description]
     * @param {number} xOffsetB - [description]
     * @param {number} yOffsetB - [description]
     * @param {object} options - [description]
     *
     * @return {MatterJS.Composite} A new composite containing objects chained together with constraints.
     */
    public function chain(composite:matterjs.Composite, xOffsetA:Float, yOffsetA:Float, xOffsetB:Float, yOffsetB:Float, options:Dynamic):matterjs.Composite;
    /**
     * Connects bodies in the composite with constraints in a grid pattern, with optional cross braces.
     *
     * @method Phaser.Physics.Matter.Factory#mesh
     * @since 3.0.0
     *
     * @param {MatterJS.Composite} composite - [description]
     * @param {number} columns - [description]
     * @param {number} rows - [description]
     * @param {boolean} crossBrace - [description]
     * @param {object} options - [description]
     *
     * @return {MatterJS.Composite} The composite containing objects meshed together with constraints.
     */
    public function mesh(composite:matterjs.Composite, columns:Float, rows:Float, crossBrace:Bool, options:Dynamic):matterjs.Composite;
    /**
     * Creates a composite with a Newton's Cradle setup of bodies and constraints.
     *
     * @method Phaser.Physics.Matter.Factory#newtonsCradle
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} y - [description]
     * @param {number} number - [description]
     * @param {number} size - [description]
     * @param {number} length - [description]
     *
     * @return {MatterJS.Composite} A new composite newtonsCradle body.
     */
    public function newtonsCradle(x:Float, y:Float, number:Float, size:Float, length:Float):matterjs.Composite;
    /**
     * Creates a composite with simple car setup of bodies and constraints.
     *
     * @method Phaser.Physics.Matter.Factory#car
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} y - [description]
     * @param {number} width - [description]
     * @param {number} height - [description]
     * @param {number} wheelSize - [description]
     *
     * @return {MatterJS.Composite} A new composite car body.
     */
    public function car(x:Float, y:Float, width:Float, height:Float, wheelSize:Float):matterjs.Composite;
    /**
     * Creates a simple soft body like object.
     *
     * @method Phaser.Physics.Matter.Factory#softBody
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this composite in the world.
     * @param {number} y - The vertical position of this composite in the world.
     * @param {number} columns - The number of columns in the Composite.
     * @param {number} rows - The number of rows in the Composite.
     * @param {number} columnGap - The distance between each column.
     * @param {number} rowGap - The distance between each row.
     * @param {boolean} crossBrace - [description]
     * @param {number} particleRadius - [description]
     * @param {object} particleOptions - [description]
     * @param {object} constraintOptions - [description]
     *
     * @return {MatterJS.Composite} A new composite simple soft body.
     */
    public function softBody(x:Float, y:Float, columns:Float, rows:Float, columnGap:Float, rowGap:Float, crossBrace:Bool, particleRadius:Float, particleOptions:Dynamic, constraintOptions:Dynamic):matterjs.Composite;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#joint
     * @since 3.0.0
     *
     * @param {MatterJS.Body} bodyA - [description]
     * @param {MatterJS.Body} bodyB - [description]
     * @param {number} length - [description]
     * @param {number} [stiffness=1] - [description]
     * @param {object} [options={}] - [description]
     *
     * @return {MatterJS.Constraint} A Matter JS Constraint.
     */
    public function joint(bodyA:matterjs.Body, bodyB:matterjs.Body, length:Float, ?stiffness:Float, ?options:Dynamic):matterjs.Constraint;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#spring
     * @since 3.0.0
     *
     * @param {MatterJS.Body} bodyA - [description]
     * @param {MatterJS.Body} bodyB - [description]
     * @param {number} length - [description]
     * @param {number} [stiffness=1] - [description]
     * @param {object} [options={}] - [description]
     *
     * @return {MatterJS.Constraint} A Matter JS Constraint.
     */
    public function spring(bodyA:matterjs.Body, bodyB:matterjs.Body, length:Float, ?stiffness:Float, ?options:Dynamic):matterjs.Constraint;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#constraint
     * @since 3.0.0
     *
     * @param {MatterJS.Body} bodyA - [description]
     * @param {MatterJS.Body} bodyB - [description]
     * @param {number} length - [description]
     * @param {number} [stiffness=1] - [description]
     * @param {object} [options={}] - [description]
     *
     * @return {MatterJS.Constraint} A Matter JS Constraint.
     */
    public function constraint(bodyA:matterjs.Body, bodyB:matterjs.Body, length:Float, ?stiffness:Float, ?options:Dynamic):matterjs.Constraint;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#worldConstraint
     * @since 3.0.0
     *
     * @param {MatterJS.Body} bodyB - [description]
     * @param {number} length - [description]
     * @param {number} [stiffness=1] - [description]
     * @param {object} [options={}] - [description]
     *
     * @return {MatterJS.Constraint} A Matter JS Constraint.
     */
    public function worldConstraint(bodyB:matterjs.Body, length:Float, ?stiffness:Float, ?options:Dynamic):matterjs.Constraint;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#mouseSpring
     * @since 3.0.0
     *
     * @param {object} options - [description]
     *
     * @return {MatterJS.Constraint} A Matter JS Constraint.
     */
    public function mouseSpring(options:Dynamic):matterjs.Constraint;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#pointerConstraint
     * @since 3.0.0
     *
     * @param {object} options - [description]
     *
     * @return {MatterJS.Constraint} A Matter JS Constraint.
     */
    public function pointerConstraint(options:Dynamic):matterjs.Constraint;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#image
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {string} key - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with. Set to `null` to skip this value.
     * @param {object} [options={}] - [description]
     *
     * @return {Phaser.Physics.Matter.Image} [description]
     */
    public function image(x:Float, y:Float, key:String, ?frame:Dynamic, ?options:Dynamic):phaser.physics.matter.Image;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#tileBody
     * @since 3.0.0
     *
     * @param {Phaser.Tilemaps.Tile} tile - [description]
     * @param {object} options - [description]
     *
     * @return {Phaser.Physics.Matter.TileBody} [description]
     */
    public function tileBody(tile:phaser.tilemaps.Tile, options:Dynamic):phaser.physics.matter.TileBody;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#sprite
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {string} key - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with. Set to `null` to skip this value.
     * @param {object} [options={}] - [description]
     *
     * @return {Phaser.Physics.Matter.Sprite} [description]
     */
    public function sprite(x:Float, y:Float, key:String, ?frame:Dynamic, ?options:Dynamic):phaser.physics.matter.Sprite;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Factory#gameObject
     * @since 3.3.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - The Game Object to inject the Matter Body in to.
     * @param {object} options - [description]
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that had the Matter Body injected into it.
     */
    public function gameObject(gameObject:phaser.gameobjects.GameObject, options:Dynamic):phaser.gameobjects.GameObject;
    /**
     * Destroys this Factory.
     *
     * @method Phaser.Physics.Matter.Factory#destroy
     * @since 3.5.0
     */
    public function destroy():Void;
}
