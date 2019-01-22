package phaser;

/**
 * The `Matter` module is the top level namespace. It also includes a function for installing plugins on top of the library.
 *
 * @class Matter
 */
@:native("Matter")
extern class Matter {
    public function new();
    public function use():Void;
    public function before():Void;
    public function after():Void;
}
