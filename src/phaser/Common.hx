package phaser;

@:native("Common")
extern class Common {
    public function new();
    public function extend():Void;
    public function clone():Void;
    public function keys():Void;
    public function values():Void;
    public function get():Void;
    public function set():Void;
    public function shuffle():Void;
    public function choose():Void;
    public function isElement():Void;
    public function isArray():Void;
    public function isFunction():Void;
    public function isPlainObject():Void;
    public function isString():Void;
    public function clamp():Void;
    public function sign():Void;
    public function now():Void;
    public function random():Void;
    public function colorToNumber():Void;
    public function log():Void;
    public function info():Void;
    public function warn():Void;
    public function nextId():Void;
    public function map():Void;
    public function topologicalSort():Void;
    public function chain():Void;
    public function chainPathBefore():Void;
    public function chainPathAfter():Void;
}
