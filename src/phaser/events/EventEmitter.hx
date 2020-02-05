package phaser.events;

/**
 * @classdesc
 * EventEmitter is a Scene Systems plugin compatible version of eventemitter3.
 *
 * @class EventEmitter
 * @memberof Phaser.Events
 * @constructor
 * @since 3.0.0
 */
@:native("Phaser.Events.EventEmitter")
extern class EventEmitter {
    public function new();
    /**
     * Removes all listeners.
     *
     * @method Phaser.Events.EventEmitter#shutdown
     * @since 3.0.0
     */
    public function shutdown():Void;
    /**
     * Removes all listeners.
     *
     * @method Phaser.Events.EventEmitter#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
    /**
     * Return an array listing the events for which the emitter has registered listeners.
     *
     * @method Phaser.Events.EventEmitter#eventNames
     * @since 3.0.0
     *
     * @return {Array.<string|symbol>}
     */
    public function eventNames():Array<String>;
    /**
     * Return the listeners registered for a given event.
     *
     * @method Phaser.Events.EventEmitter#listeners
     * @since 3.0.0
     *
     * @param {(string|symbol)} event - The event name.
     *
     * @return {Function[]} The registered listeners.
     */
    public function listeners(event:Dynamic):Array<Dynamic>;
    /**
     * Return the number of listeners listening to a given event.
     *
     * @method Phaser.Events.EventEmitter#listenerCount
     * @since 3.0.0
     *
     * @param {(string|symbol)} event - The event name.
     *
     * @return {number} The number of listeners.
     */
    public function listenerCount(event:Dynamic):Float;
    /**
     * Calls each of the listeners registered for a given event.
     *
     * @method Phaser.Events.EventEmitter#emit
     * @since 3.0.0
     *
     * @param {(string|symbol)} event - The event name.
     * @param {...*} [args] - Additional arguments that will be passed to the event handler.
     *
     * @return {boolean} `true` if the event had listeners, else `false`.
     */
    public function emit(event:Dynamic, ?args:Dynamic):Bool;
    /**
     * Add a listener for a given event.
     *
     * @method Phaser.Events.EventEmitter#on
     * @since 3.0.0
     *
     * @param {(string|symbol)} event - The event name.
     * @param {function} fn - The listener function.
     * @param {*} [context=this] - The context to invoke the listener with.
     *
     * @return {this} `this`.
     */
    public function on(event:Dynamic, fn:Dynamic, ?context:Dynamic):Dynamic;
    /**
     * Add a listener for a given event.
     *
     * @method Phaser.Events.EventEmitter#addListener
     * @since 3.0.0
     *
     * @param {(string|symbol)} event - The event name.
     * @param {function} fn - The listener function.
     * @param {*} [context=this] - The context to invoke the listener with.
     *
     * @return {this} `this`.
     */
    public function addListener(event:Dynamic, fn:Dynamic, ?context:Dynamic):Dynamic;
    /**
     * Add a one-time listener for a given event.
     *
     * @method Phaser.Events.EventEmitter#once
     * @since 3.0.0
     *
     * @param {(string|symbol)} event - The event name.
     * @param {function} fn - The listener function.
     * @param {*} [context=this] - The context to invoke the listener with.
     *
     * @return {this} `this`.
     */
    public function once(event:Dynamic, fn:Dynamic, ?context:Dynamic):Dynamic;
    /**
     * Remove the listeners of a given event.
     *
     * @method Phaser.Events.EventEmitter#removeListener
     * @since 3.0.0
     *
     * @param {(string|symbol)} event - The event name.
     * @param {function} [fn] - Only remove the listeners that match this function.
     * @param {*} [context] - Only remove the listeners that have this context.
     * @param {boolean} [once] - Only remove one-time listeners.
     *
     * @return {this} `this`.
     */
    public function removeListener(event:Dynamic, ?fn:Dynamic, ?context:Dynamic, ?once:Bool):Dynamic;
    /**
     * Remove the listeners of a given event.
     *
     * @method Phaser.Events.EventEmitter#off
     * @since 3.0.0
     *
     * @param {(string|symbol)} event - The event name.
     * @param {function} [fn] - Only remove the listeners that match this function.
     * @param {*} [context] - Only remove the listeners that have this context.
     * @param {boolean} [once] - Only remove one-time listeners.
     *
     * @return {this} `this`.
     */
    public function off(event:Dynamic, ?fn:Dynamic, ?context:Dynamic, ?once:Bool):Dynamic;
    /**
     * Remove all listeners, or those of the specified event.
     *
     * @method Phaser.Events.EventEmitter#removeAllListeners
     * @since 3.0.0
     *
     * @param {(string|symbol)} [event] - The event name.
     *
     * @return {this} `this`.
     */
    public function removeAllListeners(?event:Dynamic):Dynamic;
}
