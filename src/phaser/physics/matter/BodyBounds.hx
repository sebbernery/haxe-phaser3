package phaser.physics.matter;

/**
 * @classdesc
 *
 * The Body Bounds class contains methods to help you extract the world coordinates from various points around
 * the bounds of a Matter Body. Because Matter bodies are positioned based on their center of mass, and not a
 * dimension based center, you often need to get the bounds coordinates in order to properly align them in the world.
 *
 * You can access this class via the MatterPhysics class from a Scene, i.e.:
 *
 * ```javascript
 * this.matter.bodyBounds.getTopLeft(body);
 * ```
 *
 * See also the `MatterPhysics.alignBody` method.
 *
 * @class BodyBounds
 * @memberof Phaser.Physics.Matter
 * @constructor
 * @since 3.22.0
 */
@:native("Phaser.Physics.Matter.BodyBounds")
extern class BodyBounds {
    public function new();
    /**
     * A Vector2 that stores the temporary bounds center value during calculations by methods in this class.
     *
     * @name Phaser.Physics.Matter.BodyBounds#boundsCenter
     * @type {Phaser.Math.Vector2}
     * @since 3.22.0
     */
    public var boundsCenter:phaser.math.Vector2;
    /**
     * A Vector2 that stores the temporary center diff values during calculations by methods in this class.
     *
     * @name Phaser.Physics.Matter.BodyBounds#centerDiff
     * @type {Phaser.Math.Vector2}
     * @since 3.22.0
     */
    public var centerDiff:phaser.math.Vector2;
    /**
     * Parses the given body to get the bounds diff values from it.
     *
     * They're stored in this class in the temporary properties `boundsCenter` and `centerDiff`.
     *
     * This method is called automatically by all other methods in this class.
     *
     * @method Phaser.Physics.Matter.BodyBounds#parseBody
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody} body - The Body to get the bounds position from.
     *
     * @return {boolean} `true` if it was able to get the bounds, otherwise `false`.
     */
    public function parseBody(body:phaser.types.physics.matter.MatterBody):Bool;
    /**
     * Takes a Body and returns the world coordinates of the top-left of its _bounds_.
     *
     * Body bounds are updated by Matter each step and factor in scale and rotation.
     * This will return the world coordinate based on the bodies _current_ position and bounds.
     *
     * @method Phaser.Physics.Matter.BodyBounds#getTopLeft
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody} body - The Body to get the position from.
     * @param {number} [x=0] - Optional horizontal offset to add to the returned coordinates.
     * @param {number} [y=0] - Optional vertical offset to add to the returned coordinates.
     *
     * @return {(Phaser.Math.Vector2|false)} A Vector2 containing the coordinates, or `false` if it was unable to parse the body.
     */
    public function getTopLeft(body:phaser.types.physics.matter.MatterBody, ?x:Float, ?y:Float):phaser.math.Vector2;
    /**
     * Takes a Body and returns the world coordinates of the top-center of its _bounds_.
     *
     * Body bounds are updated by Matter each step and factor in scale and rotation.
     * This will return the world coordinate based on the bodies _current_ position and bounds.
     *
     * @method Phaser.Physics.Matter.BodyBounds#getTopCenter
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody} body - The Body to get the position from.
     * @param {number} [x=0] - Optional horizontal offset to add to the returned coordinates.
     * @param {number} [y=0] - Optional vertical offset to add to the returned coordinates.
     *
     * @return {(Phaser.Math.Vector2|false)} A Vector2 containing the coordinates, or `false` if it was unable to parse the body.
     */
    public function getTopCenter(body:phaser.types.physics.matter.MatterBody, ?x:Float, ?y:Float):phaser.math.Vector2;
    /**
     * Takes a Body and returns the world coordinates of the top-right of its _bounds_.
     *
     * Body bounds are updated by Matter each step and factor in scale and rotation.
     * This will return the world coordinate based on the bodies _current_ position and bounds.
     *
     * @method Phaser.Physics.Matter.BodyBounds#getTopRight
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody} body - The Body to get the position from.
     * @param {number} [x=0] - Optional horizontal offset to add to the returned coordinates.
     * @param {number} [y=0] - Optional vertical offset to add to the returned coordinates.
     *
     * @return {(Phaser.Math.Vector2|false)} A Vector2 containing the coordinates, or `false` if it was unable to parse the body.
     */
    public function getTopRight(body:phaser.types.physics.matter.MatterBody, ?x:Float, ?y:Float):phaser.math.Vector2;
    /**
     * Takes a Body and returns the world coordinates of the left-center of its _bounds_.
     *
     * Body bounds are updated by Matter each step and factor in scale and rotation.
     * This will return the world coordinate based on the bodies _current_ position and bounds.
     *
     * @method Phaser.Physics.Matter.BodyBounds#getLeftCenter
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody} body - The Body to get the position from.
     * @param {number} [x=0] - Optional horizontal offset to add to the returned coordinates.
     * @param {number} [y=0] - Optional vertical offset to add to the returned coordinates.
     *
     * @return {(Phaser.Math.Vector2|false)} A Vector2 containing the coordinates, or `false` if it was unable to parse the body.
     */
    public function getLeftCenter(body:phaser.types.physics.matter.MatterBody, ?x:Float, ?y:Float):phaser.math.Vector2;
    /**
     * Takes a Body and returns the world coordinates of the center of its _bounds_.
     *
     * Body bounds are updated by Matter each step and factor in scale and rotation.
     * This will return the world coordinate based on the bodies _current_ position and bounds.
     *
     * @method Phaser.Physics.Matter.BodyBounds#getCenter
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody} body - The Body to get the position from.
     * @param {number} [x=0] - Optional horizontal offset to add to the returned coordinates.
     * @param {number} [y=0] - Optional vertical offset to add to the returned coordinates.
     *
     * @return {(Phaser.Math.Vector2|false)} A Vector2 containing the coordinates, or `false` if it was unable to parse the body.
     */
    public function getCenter(body:phaser.types.physics.matter.MatterBody, ?x:Float, ?y:Float):phaser.math.Vector2;
    /**
     * Takes a Body and returns the world coordinates of the right-center of its _bounds_.
     *
     * Body bounds are updated by Matter each step and factor in scale and rotation.
     * This will return the world coordinate based on the bodies _current_ position and bounds.
     *
     * @method Phaser.Physics.Matter.BodyBounds#getRightCenter
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody} body - The Body to get the position from.
     * @param {number} [x=0] - Optional horizontal offset to add to the returned coordinates.
     * @param {number} [y=0] - Optional vertical offset to add to the returned coordinates.
     *
     * @return {(Phaser.Math.Vector2|false)} A Vector2 containing the coordinates, or `false` if it was unable to parse the body.
     */
    public function getRightCenter(body:phaser.types.physics.matter.MatterBody, ?x:Float, ?y:Float):phaser.math.Vector2;
    /**
     * Takes a Body and returns the world coordinates of the bottom-left of its _bounds_.
     *
     * Body bounds are updated by Matter each step and factor in scale and rotation.
     * This will return the world coordinate based on the bodies _current_ position and bounds.
     *
     * @method Phaser.Physics.Matter.BodyBounds#getBottomLeft
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody} body - The Body to get the position from.
     * @param {number} [x=0] - Optional horizontal offset to add to the returned coordinates.
     * @param {number} [y=0] - Optional vertical offset to add to the returned coordinates.
     *
     * @return {(Phaser.Math.Vector2|false)} A Vector2 containing the coordinates, or `false` if it was unable to parse the body.
     */
    public function getBottomLeft(body:phaser.types.physics.matter.MatterBody, ?x:Float, ?y:Float):phaser.math.Vector2;
    /**
     * Takes a Body and returns the world coordinates of the bottom-center of its _bounds_.
     *
     * Body bounds are updated by Matter each step and factor in scale and rotation.
     * This will return the world coordinate based on the bodies _current_ position and bounds.
     *
     * @method Phaser.Physics.Matter.BodyBounds#getBottomCenter
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody} body - The Body to get the position from.
     * @param {number} [x=0] - Optional horizontal offset to add to the returned coordinates.
     * @param {number} [y=0] - Optional vertical offset to add to the returned coordinates.
     *
     * @return {(Phaser.Math.Vector2|false)} A Vector2 containing the coordinates, or `false` if it was unable to parse the body.
     */
    public function getBottomCenter(body:phaser.types.physics.matter.MatterBody, ?x:Float, ?y:Float):phaser.math.Vector2;
    /**
     * Takes a Body and returns the world coordinates of the bottom-right of its _bounds_.
     *
     * Body bounds are updated by Matter each step and factor in scale and rotation.
     * This will return the world coordinate based on the bodies _current_ position and bounds.
     *
     * @method Phaser.Physics.Matter.BodyBounds#getBottomRight
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody} body - The Body to get the position from.
     * @param {number} [x=0] - Optional horizontal offset to add to the returned coordinates.
     * @param {number} [y=0] - Optional vertical offset to add to the returned coordinates.
     *
     * @return {(Phaser.Math.Vector2|false)} A Vector2 containing the coordinates, or `false` if it was unable to parse the body.
     */
    public function getBottomRight(body:phaser.types.physics.matter.MatterBody, ?x:Float, ?y:Float):phaser.math.Vector2;
}
