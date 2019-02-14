package phaser.physics.matter.components;

/**
 * [description]
 *
 * @name Phaser.Physics.Matter.Components.SetBody
 * @since 3.0.0
 */
@:native("Phaser.Physics.Matter.Components.SetBody")
extern class SetBody {
    public function new();
    /**
     * Set the body on a Game Object to a rectangle.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setRectangle
     * @since 3.0.0
     *
     * @param {number} width - Width of the rectangle.
     * @param {number} height - Height of the rectangle.
     * @param {object} options - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setRectangle(width:Float, height:Float, options:Dynamic):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setCircle
     * @since 3.0.0
     *
     * @param {number} radius - [description]
     * @param {object} options - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setCircle(radius:Float, options:Dynamic):phaser.gameobjects.GameObject;
    /**
     * Set the body on the Game Object to a polygon shape.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setPolygon
     * @since 3.0.0
     *
     * @param {number} radius - The radius of the polygon.
     * @param {number} sides - The amount of sides creating the polygon.
     * @param {object} options - A matterjs config object.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setPolygon(radius:Float, sides:Float, options:Dynamic):phaser.gameobjects.GameObject;
    /**
     * Creates a new matterjs trapezoid body.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setTrapezoid
     * @since 3.0.0
     *
     * @param {number} width - The width of the trapezoid.
     * @param {number} height - The height of the trapezoid.
     * @param {number} slope - The angle of slope for the trapezoid.
     * @param {object} options - A matterjs config object for the body.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setTrapezoid(width:Float, height:Float, slope:Float, options:Dynamic):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setExistingBody
     * @since 3.0.0
     *
     * @param {MatterJS.Body} body - [description]
     * @param {boolean} [addToWorld=true] - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setExistingBody(body:matterjs.Body, ?addToWorld:Bool):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setBody
     * @since 3.0.0
     *
     * @param {object} config - [description]
     * @param {object} options - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setBody(config:Dynamic, options:Dynamic):phaser.gameobjects.GameObject;
}
