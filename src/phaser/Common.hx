package phaser;

/**
 * The `Matter.Common` module contains utility functions that are common to all modules.
 *
 * @class Common
 */
@:native("Common")
extern class Common {
    public function new();
    static public function extend():Void;
    static public function clone():Void;
    static public function keys():Void;
    static public function values():Void;
    static public function get():Void;
    static public function set():Void;
    static public function shuffle():Void;
    static public function choose():Void;
    static public function isElement():Void;
    static public function isArray():Void;
    static public function isFunction():Void;
    static public function isPlainObject():Void;
    static public function isString():Void;
    static public function clamp():Void;
    static public function sign():Void;
    static public function now():Void;
    static public function random():Void;
    static public function colorToNumber():Void;
    static public function log():Void;
    static public function info():Void;
    static public function warn():Void;
    static public function nextId():Void;
    static public function indexOf():Void;
    static public function map():Void;
    static public function topologicalSort():Void;
    static public function _topologicalSort():Void;
    static public function chain():Void;
    static public function chainPathBefore():Void;
    static public function chainPathAfter():Void;
    static public function _requireGlobal():Void;
}
