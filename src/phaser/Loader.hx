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
     * @type {number}
     * @since 3.0.0
     */
    static public var LOADER_IDLE:Float;
    /**
     * The Loader is actively loading.
     *
     * @name Phaser.Loader.LOADER_LOADING
     * @type {number}
     * @since 3.0.0
     */
    static public var LOADER_LOADING:Float;
    /**
     * The Loader is processing files is has loaded.
     *
     * @name Phaser.Loader.LOADER_PROCESSING
     * @type {number}
     * @since 3.0.0
     */
    static public var LOADER_PROCESSING:Float;
    /**
     * The Loader has completed loading and processing.
     *
     * @name Phaser.Loader.LOADER_COMPLETE
     * @type {number}
     * @since 3.0.0
     */
    static public var LOADER_COMPLETE:Float;
    /**
     * The Loader is shutting down.
     *
     * @name Phaser.Loader.LOADER_SHUTDOWN
     * @type {number}
     * @since 3.0.0
     */
    static public var LOADER_SHUTDOWN:Float;
    /**
     * The Loader has been destroyed.
     *
     * @name Phaser.Loader.LOADER_DESTROYED
     * @type {number}
     * @since 3.0.0
     */
    static public var LOADER_DESTROYED:Float;
    /**
     * File is in the load queue but not yet started
     *
     * @name Phaser.Loader.FILE_PENDING
     * @type {number}
     * @since 3.0.0
     */
    static public var FILE_PENDING:Float;
    /**
     * File has been started to load by the loader (onLoad called)
     *
     * @name Phaser.Loader.FILE_LOADING
     * @type {number}
     * @since 3.0.0
     */
    static public var FILE_LOADING:Float;
    /**
     * File has loaded successfully, awaiting processing
     *
     * @name Phaser.Loader.FILE_LOADED
     * @type {number}
     * @since 3.0.0
     */
    static public var FILE_LOADED:Float;
    /**
     * File failed to load
     *
     * @name Phaser.Loader.FILE_FAILED
     * @type {number}
     * @since 3.0.0
     */
    static public var FILE_FAILED:Float;
    /**
     * File is being processed (onProcess callback)
     *
     * @name Phaser.Loader.FILE_PROCESSING
     * @type {number}
     * @since 3.0.0
     */
    static public var FILE_PROCESSING:Float;
    /**
     * The File has errored somehow during processing.
     *
     * @name Phaser.Loader.FILE_ERRORED
     * @type {number}
     * @since 3.0.0
     */
    static public var FILE_ERRORED:Float;
    /**
     * File has finished processing.
     *
     * @name Phaser.Loader.FILE_COMPLETE
     * @type {number}
     * @since 3.0.0
     */
    static public var FILE_COMPLETE:Float;
    /**
     * File has been destroyed
     *
     * @name Phaser.Loader.FILE_DESTROYED
     * @type {number}
     * @since 3.0.0
     */
    static public var FILE_DESTROYED:Float;
    /**
     * File was populated from local data and doesn't need an HTTP request
     *
     * @name Phaser.Loader.FILE_POPULATED
     * @type {number}
     * @since 3.0.0
     */
    static public var FILE_POPULATED:Float;
    static public var File:Dynamic;
    static public var LoaderPlugin:Dynamic;
    static public var MultiFile:Dynamic;
}
