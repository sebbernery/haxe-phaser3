package phaser.physics.arcade.components;

/**
 * [description]
 *
 * @name Phaser.Physics.Arcade.Components.Enable
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Enable")
extern class Enable {
    public function new();
    /**
     * Enables this Game Object's Body.
     *
     * @method Phaser.Physics.Arcade.Components.Enable#enableBody
     * @since 3.0.0
     *
     * @param {boolean} reset - Also reset the Body and place it at (x, y).
     * @param {number} x - The horizontal position to place the Game Object and Body.
     * @param {number} y - The horizontal position to place the Game Object and Body.
     * @param {boolean} enableGameObject - Also activate this Game Object.
     * @param {boolean} showGameObject - Also show this Game Object.
     *
     * @return {this} This Game Object.
     *
     * @see Phaser.Physics.Arcade.Body#enable
     * @see Phaser.Physics.Arcade.StaticBody#enable
     * @see Phaser.Physics.Arcade.Body#reset
     * @see Phaser.Physics.Arcade.StaticBody#reset
     * @see Phaser.GameObjects.GameObject#active
     * @see Phaser.GameObjects.GameObject#visible
     */
    public function enableBody(reset:Bool, x:Float, y:Float, enableGameObject:Bool, showGameObject:Bool):Dynamic;
    /**
     * Stops and disables this Game Object's Body.
     *
     * @method Phaser.Physics.Arcade.Components.Enable#disableBody
     * @since 3.0.0
     *
     * @param {boolean} [disableGameObject=false] - Also deactivate this Game Object.
     * @param {boolean} [hideGameObject=false] - Also hide this Game Object.
     *
     * @return {this} This Game Object.
     *
     * @see Phaser.Physics.Arcade.Body#enable
     * @see Phaser.Physics.Arcade.StaticBody#enable
     * @see Phaser.GameObjects.GameObject#active
     * @see Phaser.GameObjects.GameObject#visible
     */
    public function disableBody(?disableGameObject:Bool, ?hideGameObject:Bool):Dynamic;
    /**
     * Syncs the Body's position and size with its parent Game Object.
     * You don't need to call this for Dynamic Bodies, as it happens automatically.
     * But for Static bodies it's a useful way of modifying the position of a Static Body
     * in the Physics World, based on its Game Object.
     *
     * @method Phaser.Physics.Arcade.Components.Enable#refreshBody
     * @since 3.1.0
     *
     * @return {this} This Game Object.
     *
     * @see Phaser.Physics.Arcade.StaticBody#updateFromGameObject
     */
    public function refreshBody():Dynamic;
}
