package phaser;

/**
 * @typedef {object} ArcadeWorldConfig
 *
 * @property {number} [fps=60] - Sets {@link Phaser.Physics.Arcade.World#fps}.
 * @property {number} [timeScale=1] - Sets {@link Phaser.Physics.Arcade.World#timeScale}.
 * @property {object} [gravity] - Sets {@link Phaser.Physics.Arcade.World#gravity}.
 * @property {number} [gravity.x=0] - The horizontal world gravity value.
 * @property {number} [gravity.y=0] - The vertical world gravity value.
 * @property {number} [x=0] - Sets {@link Phaser.Physics.Arcade.World#bounds bounds.x}.
 * @property {number} [y=0] - Sets {@link Phaser.Physics.Arcade.World#bounds bounds.y}.
 * @property {number} [width=0] - Sets {@link Phaser.Physics.Arcade.World#bounds bounds.width}.
 * @property {number} [height=0] - Sets {@link Phaser.Physics.Arcade.World#bounds bounds.height}.
 * @property {object} [checkCollision] - Sets {@link Phaser.Physics.Arcade.World#checkCollision}.
 * @property {boolean} [checkCollision.up=true] - Should bodies collide with the top of the world bounds?
 * @property {boolean} [checkCollision.down=true] - Should bodies collide with the bottom of the world bounds?
 * @property {boolean} [checkCollision.left=true] - Should bodies collide with the left of the world bounds?
 * @property {boolean} [checkCollision.right=true] - Should bodies collide with the right of the world bounds?
 * @property {number} [overlapBias=4] - Sets {@link Phaser.Physics.Arcade.World#OVERLAP_BIAS}.
 * @property {number} [tileBias=16] - Sets {@link Phaser.Physics.Arcade.World#TILE_BIAS}.
 * @property {boolean} [forceX=false] - Sets {@link Phaser.Physics.Arcade.World#forceX}.
 * @property {boolean} [isPaused=false] - Sets {@link Phaser.Physics.Arcade.World#isPaused}.
 * @property {boolean} [debug=false] - Sets {@link Phaser.Physics.Arcade.World#debug}.
 * @property {boolean} [debugShowBody=true] - Sets {@link Phaser.Physics.Arcade.World#defaults debugShowBody}.
 * @property {boolean} [debugShowStaticBody=true] - Sets {@link Phaser.Physics.Arcade.World#defaults debugShowStaticBody}.
 * @property {boolean} [debugShowVelocity=true] - Sets {@link Phaser.Physics.Arcade.World#defaults debugShowStaticBody}.
 * @property {number} [debugBodyColor=0xff00ff] - Sets {@link Phaser.Physics.Arcade.World#defaults debugBodyColor}.
 * @property {number} [debugStaticBodyColor=0x0000ff] - Sets {@link Phaser.Physics.Arcade.World#defaults debugStaticBodyColor}.
 * @property {number} [debugVelocityColor=0x00ff00] - Sets {@link Phaser.Physics.Arcade.World#defaults debugVelocityColor}.
 * @property {number} [maxEntries=16] - Sets {@link Phaser.Physics.Arcade.World#maxEntries}.
 * @property {boolean} [useTree=true] - Sets {@link Phaser.Physics.Arcade.World#useTree}.
 */
typedef ArcadeWorldConfig = {
    @:optional var fps:Float;
    @:optional var timeScale:Float;
    @:optional var gravity:Dynamic;
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var width:Float;
    @:optional var height:Float;
    @:optional var checkCollision:Dynamic;
    @:optional var overlapBias:Float;
    @:optional var tileBias:Float;
    @:optional var forceX:Bool;
    @:optional var isPaused:Bool;
    @:optional var debug:Bool;
    @:optional var debugShowBody:Bool;
    @:optional var debugShowStaticBody:Bool;
    @:optional var debugShowVelocity:Bool;
    @:optional var debugBodyColor:Float;
    @:optional var debugStaticBodyColor:Float;
    @:optional var debugVelocityColor:Float;
    @:optional var maxEntries:Float;
    @:optional var useTree:Bool;
};
