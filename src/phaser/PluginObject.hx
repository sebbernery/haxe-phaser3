package phaser;

typedef PluginObject = {
    @:optional var global:Array<PluginObjectItem>;
    @:optional var scene:Array<PluginObjectItem>;
    @:optional @:native('default') var default_:Array<Dynamic>;
    @:optional var defaultMerge:Dynamic;
};
