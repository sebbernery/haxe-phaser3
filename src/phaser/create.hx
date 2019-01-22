package phaser;

/**
 * Creates a new world composite. The options parameter is an object that specifies any properties you wish to override the defaults.
 * See the properties section below for detailed information on what you can pass via the `options` object.
 * @method create
 * @constructor
 * @param {} options
 * @return {world} A new world
 */
@:native("create")
extern class create {
    public function new(options:Dynamic);
}
