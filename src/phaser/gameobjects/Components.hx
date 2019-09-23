package phaser.gameobjects;

/**
 * @namespace Phaser.GameObjects.Components
 */
@:native("Phaser.GameObjects.Components")
extern class Components {
    public function new();
    /**
     * Build a JSON representation of the given Game Object.
     *
     * This is typically extended further by Game Object specific implementations.
     *
     * @method Phaser.GameObjects.Components.ToJSON
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - The Game Object to export as JSON.
     *
     * @return {Phaser.Types.GameObjects.JSONGameObject} A JSON representation of the Game Object.
     */
    static public function ToJSON(gameObject:phaser.gameobjects.GameObject):phaser.types.gameobjects.JSONGameObject;
}
