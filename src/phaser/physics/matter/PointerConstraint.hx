package phaser.physics.matter;

/**
 * @classdesc
 * [description]
 *
 * @class PointerConstraint
 * @memberof Phaser.Physics.Matter
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - [description]
 * @param {Phaser.Physics.Matter.World} world - [description]
 * @param {object} options - [description]
 */
@:native("Phaser.Physics.Matter.PointerConstraint")
extern class PointerConstraint {
    public function new(scene:phaser.Scene, world:phaser.physics.matter.World, options:Dynamic);
    /**
     * [description]
     *
     * @name Phaser.Physics.Matter.PointerConstraint#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * [description]
     *
     * @name Phaser.Physics.Matter.PointerConstraint#world
     * @type {Phaser.Physics.Matter.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.matter.World;
    /**
     * [description]
     *
     * @name Phaser.Physics.Matter.PointerConstraint#camera
     * @type {Phaser.Cameras.Scene2D.Camera}
     * @since 3.0.0
     */
    public var camera:phaser.cameras.scene2d.Camera;
    /**
     * [description]
     *
     * @name Phaser.Physics.Matter.PointerConstraint#pointer
     * @type {Phaser.Input.Pointer}
     * @default null
     * @since 3.0.0
     */
    public var pointer:phaser.input.Pointer;
    /**
     * [description]
     *
     * @name Phaser.Physics.Matter.PointerConstraint#active
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var active:Bool;
    /**
     * The transformed position.
     *
     * @name Phaser.Physics.Matter.PointerConstraint#position
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var position:phaser.math.Vector2;
    /**
     * [description]
     *
     * @name Phaser.Physics.Matter.PointerConstraint#constraint
     * @type {object}
     * @since 3.0.0
     */
    public var constraint:Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.PointerConstraint#onDown
     * @since 3.0.0
     *
     * @param {Phaser.Input.Pointer} pointer - [description]
     */
    public function onDown(pointer:phaser.input.Pointer):Void;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.PointerConstraint#onUp
     * @since 3.0.0
     */
    public function onUp():Void;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.PointerConstraint#getBodyPart
     * @since 3.0.0
     *
     * @param {MatterJS.Body} body - [description]
     * @param {Phaser.Math.Vector2} position - [description]
     *
     * @return {boolean} [description]
     */
    public function getBodyPart(body:matterjs.Body, position:phaser.math.Vector2):Bool;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.PointerConstraint#update
     * @since 3.0.0
     */
    public function update():Void;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.PointerConstraint#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
