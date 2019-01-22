package phaser.physics.impact;

/**
 * @classdesc
 * The Impact Physics Factory allows you to easily create Impact Physics enabled Game Objects.
 * Objects that are created by this Factory are automatically added to the physics world.
 *
 * @class Factory
 * @memberof Phaser.Physics.Impact
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Physics.Impact.World} world - A reference to the Impact Physics world.
 */
@:native("Phaser.Physics.Impact.Factory")
extern class Factory {
    public function new(world:phaser.physics.impact.World);
    /**
     * A reference to the Impact Physics world.
     *
     * @name Phaser.Physics.Impact.Factory#world
     * @type {Phaser.Physics.Impact.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.impact.World;
    /**
     * A reference to the Scene.Systems this Impact Physics instance belongs to.
     *
     * @name Phaser.Physics.Impact.Factory#sys
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var sys:phaser.scenes.Systems;
    /**
     * Creates a new ImpactBody object and adds it to the physics simulation.
     *
     * @method Phaser.Physics.Impact.Factory#body
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of the body in the physics world.
     * @param {number} y - The vertical position of the body in the physics world.
     * @param {number} width - The width of the body.
     * @param {number} height - The height of the body.
     *
     * @return {Phaser.Physics.Impact.ImpactBody} The ImpactBody object that was created.
     */
    public function body(x:Float, y:Float, width:Float, height:Float):phaser.physics.impact.ImpactBody;
    /**
     * Adds an Impact Physics Body to the given Game Object.
     *
     * @method Phaser.Physics.Impact.Factory#existing
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - The Game Object to receive the physics body.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object.
     */
    public function existing(gameObject:phaser.gameobjects.GameObject):phaser.gameobjects.GameObject;
    /**
     * Creates a new ImpactImage object and adds it to the physics world.
     *
     * @method Phaser.Physics.Impact.Factory#image
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {string} key - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
     *
     * @return {Phaser.Physics.Impact.ImpactImage} The ImpactImage object that was created.
     */
    public function image(x:Float, y:Float, key:String, ?frame:Dynamic):phaser.physics.impact.ImpactImage;
    /**
     * Creates a new ImpactSprite object and adds it to the physics world.
     *
     * @method Phaser.Physics.Impact.Factory#sprite
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {string} key - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
     *
     * @return {Phaser.Physics.Impact.ImpactSprite} The ImpactSprite object that was created.
     */
    public function sprite(x:Float, y:Float, key:String, ?frame:Dynamic):phaser.physics.impact.ImpactSprite;
    /**
     * Destroys this Factory.
     *
     * @method Phaser.Physics.Impact.Factory#destroy
     * @since 3.5.0
     */
    public function destroy():Void;
}
