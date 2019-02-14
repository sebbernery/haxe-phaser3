package phaser.gameobjects.bitmaptext;

/**
 * Parse an XML Bitmap Font from an Atlas.
 *
 * Adds the parsed Bitmap Font data to the cache with the `fontName` key.
 *
 * @name Phaser.GameObjects.BitmapText.ParseFromAtlas
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene to parse the Bitmap Font for.
 * @param {string} fontName - The key of the font to add to the Bitmap Font cache.
 * @param {string} textureKey - The key of the BitmapFont's texture.
 * @param {string} frameKey - The key of the BitmapFont texture's frame.
 * @param {string} xmlKey - The key of the XML data of the font to parse.
 * @param {integer} [xSpacing] - The x-axis spacing to add between each letter.
 * @param {integer} [ySpacing] - The y-axis spacing to add to the line height.
 *
 * @return {boolean} Whether the parsing was successful or not.
 */
@:native("Phaser.GameObjects.BitmapText.ParseFromAtlas")
extern class ParseFromAtlas {
    public function new(scene:phaser.Scene, fontName:String, textureKey:String, frameKey:String, xmlKey:String, ?xSpacing:Int, ?ySpacing:Int);
}
