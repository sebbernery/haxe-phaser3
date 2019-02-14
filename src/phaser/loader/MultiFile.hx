package phaser.loader;

/**
 * @classdesc
 * A MultiFile is a special kind of parent that contains two, or more, Files as children and looks after
 * the loading and processing of them all. It is commonly extended and used as a base class for file types such as AtlasJSON or BitmapFont.
 *
 * You shouldn't create an instance of a MultiFile directly, but should extend it with your own class, setting a custom type and processing methods.
 *
 * @class MultiFile
 * @memberof Phaser.Loader
 * @constructor
 * @since 3.7.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - The Loader that is going to load this File.
 * @param {string} type - The file type string for sorting within the Loader.
 * @param {string} key - The key of the file within the loader.
 * @param {Phaser.Loader.File[]} files - An array of Files that make-up this MultiFile.
 */
@:native("Phaser.Loader.MultiFile")
extern class MultiFile {
    public function new(loader:phaser.loader.LoaderPlugin, type:String, key:String, files:Array<phaser.loader.File>);
    /**
     * A reference to the Loader that is going to load this file.
     *
     * @name Phaser.Loader.MultiFile#loader
     * @type {Phaser.Loader.LoaderPlugin}
     * @since 3.7.0
     */
    public var loader:phaser.loader.LoaderPlugin;
    /**
     * The file type string for sorting within the Loader.
     *
     * @name Phaser.Loader.MultiFile#type
     * @type {string}
     * @since 3.7.0
     */
    public var type:String;
    /**
     * Unique cache key (unique within its file type)
     *
     * @name Phaser.Loader.MultiFile#key
     * @type {string}
     * @since 3.7.0
     */
    public var key:String;
    /**
     * Array of files that make up this MultiFile.
     *
     * @name Phaser.Loader.MultiFile#files
     * @type {Phaser.Loader.File[]}
     * @since 3.7.0
     */
    public var files:Array<phaser.loader.File>;
    /**
     * The completion status of this MultiFile.
     *
     * @name Phaser.Loader.MultiFile#complete
     * @type {boolean}
     * @default false
     * @since 3.7.0
     */
    public var complete:Bool;
    /**
     * The number of files to load.
     *
     * @name Phaser.Loader.MultiFile#pending
     * @type {integer}
     * @since 3.7.0
     */
    public var pending:Int;
    /**
     * The number of files that failed to load.
     *
     * @name Phaser.Loader.MultiFile#failed
     * @type {integer}
     * @default 0
     * @since 3.7.0
     */
    public var failed:Int;
    /**
     * A storage container for transient data that the loading files need.
     *
     * @name Phaser.Loader.MultiFile#config
     * @type {any}
     * @since 3.7.0
     */
    public var config:Dynamic;
    /**
     * Checks if this MultiFile is ready to process its children or not.
     *
     * @method Phaser.Loader.MultiFile#isReadyToProcess
     * @since 3.7.0
     *
     * @return {boolean} `true` if all children of this MultiFile have loaded, otherwise `false`.
     */
    public function isReadyToProcess():Bool;
    /**
     * Adds another child to this MultiFile, increases the pending count and resets the completion status.
     *
     * @method Phaser.Loader.MultiFile#addToMultiFile
     * @since 3.7.0
     *
     * @param {Phaser.Loader.File} files - The File to add to this MultiFile.
     *
     * @return {Phaser.Loader.MultiFile} This MultiFile instance.
     */
    public function addToMultiFile(files:phaser.loader.File):phaser.loader.MultiFile;
    /**
     * Called by each File when it finishes loading.
     *
     * @method Phaser.Loader.MultiFile#onFileComplete
     * @since 3.7.0
     *
     * @param {Phaser.Loader.File} file - The File that has completed processing.
     */
    public function onFileComplete(file:phaser.loader.File):Void;
    /**
     * Called by each File that fails to load.
     *
     * @method Phaser.Loader.MultiFile#onFileFailed
     * @since 3.7.0
     *
     * @param {Phaser.Loader.File} file - The File that has failed to load.
     */
    public function onFileFailed(file:phaser.loader.File):Void;
}
