package phaser;

typedef TilemapConfig = {
    @:optional var key:String;
    @:optional var data:Array<Array<Int>>;
    @:optional var tileWidth:Int;
    @:optional var tileHeight:Int;
    @:optional var width:Int;
    @:optional var height:Int;
    @:optional var insertNull:Bool;
};
