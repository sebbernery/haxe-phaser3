package phaser;

/**
 * The `Matter.Plugin` module contains functions for registering and installing plugins on modules.
 *
 * @class Plugin
 */
@:native("Plugin")
extern class Plugin {
    public function new();
    static public function register():Void;
    static public function resolve():Void;
    static public function toString():Void;
    static public function isPlugin():Void;
    static public function isUsed():Void;
    static public function isFor():Void;
    static public function use():Void;
    static public function dependencies():Void;
    static public function dependencyParse():Void;
    static public function versionParse():Void;
    static public function versionSatisfies():Void;
}
