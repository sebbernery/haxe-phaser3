package phaser.types.gameobjects.sprite;

/**
 * @typedef {object} Phaser.Types.GameObjects.Sprite.SpriteConfig
 * @extends Phaser.Types.GameObjects.GameObjectConfig
 * @since 3.0.0
 *
 * @property {string} [key] - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
 * @property {(number|string)} [frame] - An optional frame from the Texture this Game Object is rendering with.
 */
typedef SpriteConfig = {
    @:optional var key:String;
    @:optional var frame:Dynamic;
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var depth:Float;
    @:optional var flipX:Bool;
    @:optional var flipY:Bool;
    @:optional var scale:Dynamic;
    @:optional var scrollFactor:Dynamic;
    @:optional var rotation:Float;
    @:optional var angle:Float;
    @:optional var alpha:Float;
    @:optional var origin:Dynamic;
    @:optional var scaleMode:Float;
    @:optional var blendMode:Float;
    @:optional var visible:Bool;
    @:optional var add:Bool;
};
