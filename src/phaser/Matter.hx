package phaser;

/**
 * The `Matter` module is the top level namespace. It also includes a function for installing plugins on top of the library.
 *
 * @class Matter
 */
@:native("Matter")
extern class Matter {
    public function new();
    static public function use():Void;
    static public function before():Void;
    static public function after():Void;
}
