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
    public function collides():Void;
    public function ray():Void;
    public function region():Void;
    public function point():Void;
}
