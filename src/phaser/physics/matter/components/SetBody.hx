package phaser.physics.matter.components;

/**
 * Enables a Matter-enabled Game Object to set its Body. Should be used as a mixin and not directly.
 *
 * @namespace Phaser.Physics.Matter.Components.SetBody
 * @since 3.0.0
 */
@:native("Phaser.Physics.Matter.Components.SetBody")
extern class SetBody {
    public function new();
    /**
     * Set the body on a Game Object to a rectangle.
     *
     * Calling this methods resets previous properties you may have set on the body, including
     * plugins, mass, friction, etc. So be sure to re-apply these in the options object if needed.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setRectangle
     * @since 3.0.0
     *
     * @param {number} width - Width of the rectangle.
     * @param {number} height - Height of the rectangle.
     * @param {Phaser.Types.Physics.Matter.MatterBodyConfig} [options] - An optional Body configuration object that is used to set initial Body properties on creation.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setRectangle(width:Float, height:Float, ?options:phaser.types.physics.matter.MatterBodyConfig):phaser.gameobjects.GameObject;
    /**
     * Set the body on a Game Object to a circle.
     *
     * Calling this methods resets previous properties you may have set on the body, including
     * plugins, mass, friction, etc. So be sure to re-apply these in the options object if needed.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setCircle
     * @since 3.0.0
     *
     * @param {number} radius - The radius of the circle.
     * @param {Phaser.Types.Physics.Matter.MatterBodyConfig} [options] - An optional Body configuration object that is used to set initial Body properties on creation.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setCircle(radius:Float, ?options:phaser.types.physics.matter.MatterBodyConfig):phaser.gameobjects.GameObject;
    /**
     * Set the body on the Game Object to a polygon shape.
     *
     * Calling this methods resets previous properties you may have set on the body, including
     * plugins, mass, friction, etc. So be sure to re-apply these in the options object if needed.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setPolygon
     * @since 3.0.0
     *
     * @param {number} sides - The number of sides the polygon will have.
     * @param {number} radius - The "radius" of the polygon, i.e. the distance from its center to any vertex. This is also the radius of its circumcircle.
     * @param {Phaser.Types.Physics.Matter.MatterBodyConfig} [options] - An optional Body configuration object that is used to set initial Body properties on creation.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setPolygon(sides:Float, radius:Float, ?options:phaser.types.physics.matter.MatterBodyConfig):phaser.gameobjects.GameObject;
    /**
     * Set the body on the Game Object to a trapezoid shape.
     *
     * Calling this methods resets previous properties you may have set on the body, including
     * plugins, mass, friction, etc. So be sure to re-apply these in the options object if needed.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setTrapezoid
     * @since 3.0.0
     *
     * @param {number} width - The width of the trapezoid Body.
     * @param {number} height - The height of the trapezoid Body.
     * @param {number} slope - The slope of the trapezoid. 0 creates a rectangle, while 1 creates a triangle. Positive values make the top side shorter, while negative values make the bottom side shorter.
     * @param {Phaser.Types.Physics.Matter.MatterBodyConfig} [options] - An optional Body configuration object that is used to set initial Body properties on creation.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setTrapezoid(width:Float, height:Float, slope:Float, ?options:phaser.types.physics.matter.MatterBodyConfig):phaser.gameobjects.GameObject;
    /**
     * Set this Game Object to use the given existing Matter Body.
     *
     * The body is first removed from the world before being added to this Game Object.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setExistingBody
     * @since 3.0.0
     *
     * @param {MatterJS.BodyType} body - The Body this Game Object should use.
     * @param {boolean} [addToWorld=true] - Should the body be immediately added to the World?
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setExistingBody(body:Dynamic, ?addToWorld:Bool):phaser.gameobjects.GameObject;
    /**
     * Set this Game Object to create and use a new Body based on the configuration object given.
     *
     * Calling this method resets previous properties you may have set on the body, including
     * plugins, mass, friction, etc. So be sure to re-apply these in the options object if needed.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setBody
     * @since 3.0.0
     *
     * @param {(string|Phaser.Types.Physics.Matter.MatterSetBodyConfig)} config - Either a string, such as `circle`, or a Matter Set Body Configuration object.
     * @param {Phaser.Types.Physics.Matter.MatterBodyConfig} [options] - An optional Body configuration object that is used to set initial Body properties on creation.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setBody(config:Dynamic, ?options:phaser.types.physics.matter.MatterBodyConfig):phaser.gameobjects.GameObject;
}
