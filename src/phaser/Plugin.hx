package phaser;

/**
 * The `Matter.Plugin` module contains functions for registering and installing plugins on modules.
 *
 * @class Plugin
 */
@:native("Plugin")
extern class Plugin {
    public function new();
    public function register():Void;
    public function resolve():Void;
    public function toString():Void;
    public function isPlugin():Void;
    public function isUsed():Void;
    public function isFor():Void;
    public function use():Void;
    public function dependencies():Void;
    public function dependencyParse():Void;
    public function versionParse():Void;
    public function versionSatisfies():Void;
}
