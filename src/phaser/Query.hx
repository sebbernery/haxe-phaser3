package phaser;

/**
 * The `Matter.Query` module contains methods for performing collision queries.
 *
 * See the included usage [examples](https://github.com/liabru/matter-js/tree/master/examples).
 *
 * @class Query
 */
@:native("Query")
extern class Query {
    public function new();
    static public function collides():Void;
    static public function ray():Void;
    static public function region():Void;
    static public function point():Void;
}
