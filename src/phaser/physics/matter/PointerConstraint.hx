package phaser.physics.matter;

/**
 * @classdesc
 * A Pointer Constraint is a special type of constraint that allows you to click
 * and drag bodies in a Matter World. It monitors the active Pointers in a Scene,
 * and when one is pressed down it checks to see if that hit any part of any active
 * body in the world. If it did, and the body has input enabled, it will begin to
 * drag it until either released, or you stop it via the `stopDrag` method.
 *
 * You can adjust the stiffness, length and other properties of the constraint via
 * the `options` object on creation.
 *
 * @class PointerConstraint
 * @memberof Phaser.Physics.Matter
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - A reference to the Scene to which this Pointer Constraint belongs.
 * @param {Phaser.Physics.Matter.World} world - A reference to the Matter World instance to which this Constraint belongs.
 * @param {object} [options] - A Constraint configuration object.
 */
@:native("Phaser.Physics.Matter.PointerConstraint")
extern class PointerConstraint {
    public function new(scene:phaser.Scene, world:phaser.physics.matter.World, ?options:Dynamic);
    /**
     * A reference to the Scene to which this Pointer Constraint belongs.
     * This is the same Scene as the Matter World instance.
     *
     * @name Phaser.Physics.Matter.PointerConstraint#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * A reference to the Matter World instance to which this Constraint belongs.
     *
     * @name Phaser.Physics.Matter.PointerConstraint#world
     * @type {Phaser.Physics.Matter.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.matter.World;
    /**
     * The Camera the Pointer was interacting with when the input
     * down event was processed.
     *
     * @name Phaser.Physics.Matter.PointerConstraint#camera
     * @type {Phaser.Cameras.Scene2D.Camera}
     * @since 3.0.0
     */
    public var camera:phaser.cameras.scene2d.Camera;
    /**
     * A reference to the Input Pointer that activated this Constraint.
     * This is set in the `onDown` handler.
     *
     * @name Phaser.Physics.Matter.PointerConstraint#pointer
     * @type {Phaser.Input.Pointer}
     * @default null
     * @since 3.0.0
     */
    public var pointer:phaser.input.Pointer;
    /**
     * Is this Constraint active or not?
     *
     * An active constraint will be processed each update. An inactive one will be skipped.
     * Use this to toggle a Pointer Constraint on and off.
     *
     * @name Phaser.Physics.Matter.PointerConstraint#active
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var active:Bool;
    /**
     * The internal transformed position.
     *
     * @name Phaser.Physics.Matter.PointerConstraint#position
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var position:phaser.math.Vector2;
    /**
     * The body that is currently being dragged, if any.
     *
     * @name Phaser.Physics.Matter.PointerConstraint#body
     * @type {?MatterJS.BodyType}
     * @since 3.16.2
     */
    public var body:Dynamic;
    /**
     * The part of the body that was clicked on to start the drag.
     *
     * @name Phaser.Physics.Matter.PointerConstraint#part
     * @type {?MatterJS.BodyType}
     * @since 3.16.2
     */
    public var part:Dynamic;
    /**
     * The native Matter Constraint that is used to attach to bodies.
     *
     * @name Phaser.Physics.Matter.PointerConstraint#constraint
     * @type {MatterJS.ConstraintType}
     * @since 3.0.0
     */
    public var constraint:Dynamic;
    /**
     * A Pointer has been pressed down onto the Scene.
     *
     * If this Constraint doesn't have an active Pointer then a hit test is set to
     * run against all active bodies in the world during the _next_ call to `update`.
     * If a body is found, it is bound to this constraint and the drag begins.
     *
     * @method Phaser.Physics.Matter.PointerConstraint#onDown
     * @since 3.0.0
     *
     * @param {Phaser.Input.Pointer} pointer - A reference to the Pointer that was pressed.
     */
    public function onDown(pointer:phaser.input.Pointer):Void;
    /**
     * A Pointer has been released from the Scene. If it was the one this constraint was using, it's cleared.
     *
     * @method Phaser.Physics.Matter.PointerConstraint#onUp
     * @since 3.22.0
     *
     * @param {Phaser.Input.Pointer} pointer - A reference to the Pointer that was pressed.
     */
    public function onUp(pointer:phaser.input.Pointer):Void;
    /**
     * Scans all active bodies in the current Matter World to see if any of them
     * are hit by the Pointer. The _first one_ found to hit is set as the active contraint
     * body.
     *
     * @method Phaser.Physics.Matter.PointerConstraint#getBody
     * @fires Phaser.Physics.Matter.Events#DRAG_START
     * @since 3.16.2
     *
     * @return {boolean} `true` if a body was found and set, otherwise `false`.
     */
    public function getBody():Bool;
    /**
     * Scans the current body to determine if a part of it was clicked on.
     * If a part is found the body is set as the `constraint.bodyB` property,
     * as well as the `body` property of this class. The part is also set.
     *
     * @method Phaser.Physics.Matter.PointerConstraint#hitTestBody
     * @since 3.16.2
     *
     * @param {MatterJS.BodyType} body - The Matter Body to check.
     * @param {Phaser.Math.Vector2} position - A translated hit test position.
     *
     * @return {boolean} `true` if a part of the body was hit, otherwise `false`.
     */
    public function hitTestBody(body:Dynamic, position:phaser.math.Vector2):Bool;
    /**
     * Internal update handler. Called in the Matter BEFORE_UPDATE step.
     *
     * @method Phaser.Physics.Matter.PointerConstraint#update
     * @fires Phaser.Physics.Matter.Events#DRAG
     * @since 3.0.0
     */
    public function update():Void;
    /**
     * Stops the Pointer Constraint from dragging the body any further.
     *
     * This is called automatically if the Pointer is released while actively
     * dragging a body. Or, you can call it manually to release a body from a
     * constraint without having to first release the pointer.
     *
     * @method Phaser.Physics.Matter.PointerConstraint#stopDrag
     * @fires Phaser.Physics.Matter.Events#DRAG_END
     * @since 3.16.2
     */
    public function stopDrag():Void;
    /**
     * Destroys this Pointer Constraint instance and all of its references.
     *
     * @method Phaser.Physics.Matter.PointerConstraint#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
