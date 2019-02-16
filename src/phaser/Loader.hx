package phaser;

/**
 * @namespace Phaser.Loader
 */
@:native("Phaser.Loader")
class Loader {
    /**
     * The Loader is idle.
     *
     * @name Phaser.Loader.LOADER_IDLE
     * @type {integer}
     * @since 3.0.0
     */
    static public var LOADER_IDLE:Int;
    /**
     * The Loader is actively loading.
     *
     * @name Phaser.Loader.LOADER_LOADING
     * @type {integer}
     * @since 3.0.0
     */
    static public var LOADER_LOADING:Int;
    /**
     * The Loader is processing files is has loaded.
     *
     * @name Phaser.Loader.LOADER_PROCESSING
     * @type {integer}
     * @since 3.0.0
     */
    static public var LOADER_PROCESSING:Int;
    /**
     * The Loader has completed loading and processing.
     *
     * @name Phaser.Loader.LOADER_COMPLETE
     * @type {integer}
     * @since 3.0.0
     */
    static public var LOADER_COMPLETE:Int;
    /**
     * The Loader is shutting down.
     *
     * @name Phaser.Loader.LOADER_SHUTDOWN
     * @type {integer}
     * @since 3.0.0
     */
    static public var LOADER_SHUTDOWN:Int;
    /**
     * The Loader has been destroyed.
     *
     * @name Phaser.Loader.LOADER_DESTROYED
     * @type {integer}
     * @since 3.0.0
     */
    static public var LOADER_DESTROYED:Int;
    /**
     * File is in the load queue but not yet started
     *
     * @name Phaser.Loader.FILE_PENDING
     * @type {integer}
     * @since 3.0.0
     */
    static public var FILE_PENDING:Int;
    /**
     * File has been started to load by the loader (onLoad called)
     *
     * @name Phaser.Loader.FILE_LOADING
     * @type {integer}
     * @since 3.0.0
     */
    static public var FILE_LOADING:Int;
    /**
     * File has loaded successfully, awaiting processing
     *
     * @name Phaser.Loader.FILE_LOADED
     * @type {integer}
     * @since 3.0.0
     */
    static public var FILE_LOADED:Int;
    /**
     * File failed to load
     *
     * @name Phaser.Loader.FILE_FAILED
     * @type {integer}
     * @since 3.0.0
     */
    static public var FILE_FAILED:Int;
    /**
     * File is being processed (onProcess callback)
     *
     * @name Phaser.Loader.FILE_PROCESSING
     * @type {integer}
     * @since 3.0.0
     */
    static public var FILE_PROCESSING:Int;
    /**
     * The File has errored somehow during processing.
     *
     * @name Phaser.Loader.FILE_ERRORED
     * @type {integer}
     * @since 3.0.0
     */
    static public var FILE_ERRORED:Int;
    /**
     * File has finished processing.
     *
     * @name Phaser.Loader.FILE_COMPLETE
     * @type {integer}
     * @since 3.0.0
     */
    static public var FILE_COMPLETE:Int;
    /**
     * File has been destroyed
     *
     * @name Phaser.Loader.FILE_DESTROYED
     * @type {integer}
     * @since 3.0.0
     */
    static public var FILE_DESTROYED:Int;
    /**
     * File was populated from local data and doesn't need an HTTP request
     *
     * @name Phaser.Loader.FILE_POPULATED
     * @type {integer}
     * @since 3.0.0
     */
    static public var FILE_POPULATED:Int;
    static public var File:Dynamic;
    static public var LoaderPlugin:Dynamic;
    static public var MultiFile:Dynamic;
}
