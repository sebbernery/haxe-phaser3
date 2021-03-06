package phaser.scenes;

/**
 * @classdesc
 * The Scene Plugin is the main interface to the Scene Manager and allows you to control
 * any Scene running in your game. You should always use this plugin. By default, it is
 * mapped to the Scene property `this.scene`. Meaning, from within a Scene, you can call
 * methods such as `this.scene.start()`.
 *
 * Note that nearly all methods in this class are run on a queue-basis and not
 * immediately. For example, calling `this.scene.launch('SceneB')` will try to
 * launch SceneB when the Scene Manager next updates, which is at the start of the game
 * step. All operations are queued and run in the order in which they are invoked here.
 *
 * @class ScenePlugin
 * @memberof Phaser.Scenes
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene that this ScenePlugin belongs to.
 */
@:native("Phaser.Scenes.ScenePlugin")
extern class ScenePlugin {
    public function new(scene:phaser.Scene);
    /**
     * The Scene that this ScenePlugin belongs to.
     *
     * @name Phaser.Scenes.ScenePlugin#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * The Scene Systems instance of the Scene that this ScenePlugin belongs to.
     *
     * @name Phaser.Scenes.ScenePlugin#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * The settings of the Scene this ScenePlugin belongs to.
     *
     * @name Phaser.Scenes.ScenePlugin#settings
     * @type {Phaser.Types.Scenes.SettingsObject}
     * @since 3.0.0
     */
    public var settings:phaser.types.scenes.SettingsObject;
    /**
     * The key of the Scene this ScenePlugin belongs to.
     *
     * @name Phaser.Scenes.ScenePlugin#key
     * @type {string}
     * @since 3.0.0
     */
    public var key:String;
    /**
     * The Game's SceneManager.
     *
     * @name Phaser.Scenes.ScenePlugin#manager
     * @type {Phaser.Scenes.SceneManager}
     * @since 3.0.0
     */
    public var manager:phaser.scenes.SceneManager;
    /**
     * If this Scene is currently transitioning to another, this holds
     * the current percentage of the transition progress, between 0 and 1.
     *
     * @name Phaser.Scenes.ScenePlugin#transitionProgress
     * @type {number}
     * @since 3.5.0
     */
    public var transitionProgress:Float;
    /**
     * Shutdown this Scene and run the given one.
     *
     * This will happen at the next Scene Manager update, not immediately.
     *
     * @method Phaser.Scenes.ScenePlugin#start
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to start.
     * @param {object} [data] - The Scene data.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function start(?key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Restarts this Scene.
     *
     * This will happen at the next Scene Manager update, not immediately.
     *
     * @method Phaser.Scenes.ScenePlugin#restart
     * @since 3.4.0
     *
     * @param {object} [data] - The Scene data.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function restart(?data:Dynamic):Dynamic;
    /**
     * This will start a transition from the current Scene to the target Scene given.
     *
     * The transition will last for the duration specified in milliseconds.
     *
     * You can have the target Scene moved above or below this one in the display list.
     *
     * You can specify an update callback. This callback will be invoked _every frame_ for the duration
     * of the transition.
     *
     * This Scene can either be sent to sleep at the end of the transition, or stopped. The default is to stop.
     *
     * There are also 5 transition related events: This scene will emit the event `transitionout` when
     * the transition begins, which is typically the frame after calling this method.
     *
     * The target Scene will emit the event `transitioninit` when that Scene's `init` method is called.
     * It will then emit the event `transitionstart` when its `create` method is called.
     * If the Scene was sleeping and has been woken up, it will emit the event `transitionwake` instead of these two,
     * as the Scenes `init` and `create` methods are not invoked when a Scene wakes up.
     *
     * When the duration of the transition has elapsed it will emit the event `transitioncomplete`.
     * These events are cleared of all listeners when the Scene shuts down, but not if it is sent to sleep.
     *
     * It's important to understand that the duration of the transition begins the moment you call this method.
     * If the Scene you are transitioning to includes delayed processes, such as waiting for files to load, the
     * time still counts down even while that is happening. If the game itself pauses, or something else causes
     * this Scenes update loop to stop, then the transition will also pause for that duration. There are
     * checks in place to prevent you accidentally stopping a transitioning Scene but if you've got code to
     * override this understand that until the target Scene completes it might never be unlocked for input events.
     *
     * @method Phaser.Scenes.ScenePlugin#transition
     * @fires Phaser.Scenes.Events#TRANSITION_OUT
     * @since 3.5.0
     *
     * @param {Phaser.Types.Scenes.SceneTransitionConfig} config - The transition configuration object.
     *
     * @return {boolean} `true` is the transition was started, otherwise `false`.
     */
    public function transition(config:phaser.types.scenes.SceneTransitionConfig):Bool;
    /**
     * Add the Scene into the Scene Manager and start it if 'autoStart' is true or the Scene config 'active' property is set.
     *
     * @method Phaser.Scenes.ScenePlugin#add
     * @since 3.0.0
     *
     * @param {string} key - A unique key used to reference the Scene, i.e. `MainMenu` or `Level1`.
     * @param {(Phaser.Scene|Phaser.Types.Scenes.SettingsConfig|Phaser.Types.Scenes.CreateSceneFromObjectConfig|function)} sceneConfig - The config for the Scene
     * @param {boolean} [autoStart=false] - If `true` the Scene will be started immediately after being added.
     * @param {object} [data] - Optional data object. This will be set as `Scene.settings.data` and passed to `Scene.init`, and `Scene.create`.
     *
     * @return {?Phaser.Scene} The added Scene, if it was added immediately, otherwise `null`.
     */
    public function add(key:String, sceneConfig:Dynamic, ?autoStart:Bool, ?data:Dynamic):phaser.Scene;
    /**
     * Launch the given Scene and run it in parallel with this one.
     *
     * This will happen at the next Scene Manager update, not immediately.
     *
     * @method Phaser.Scenes.ScenePlugin#launch
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to launch.
     * @param {object} [data] - The Scene data.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function launch(key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Runs the given Scene, but does not change the state of this Scene.
     *
     * This will happen at the next Scene Manager update, not immediately.
     *
     * If the given Scene is paused, it will resume it. If sleeping, it will wake it.
     * If not running at all, it will be started.
     *
     * Use this if you wish to open a modal Scene by calling `pause` on the current
     * Scene, then `run` on the modal Scene.
     *
     * @method Phaser.Scenes.ScenePlugin#run
     * @since 3.10.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to run.
     * @param {object} [data] - A data object that will be passed to the Scene and emitted in its ready, wake, or resume events.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function run(key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Pause the Scene - this stops the update step from happening but it still renders.
     *
     * This will happen at the next Scene Manager update, not immediately.
     *
     * @method Phaser.Scenes.ScenePlugin#pause
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to pause.
     * @param {object} [data] - An optional data object that will be passed to the Scene and emitted in its pause event.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function pause(?key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Resume the Scene - starts the update loop again.
     *
     * This will happen at the next Scene Manager update, not immediately.
     *
     * @method Phaser.Scenes.ScenePlugin#resume
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to resume.
     * @param {object} [data] - An optional data object that will be passed to the Scene and emitted in its resume event.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function resume(?key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Makes the Scene sleep (no update, no render) but doesn't shutdown.
     *
     * This will happen at the next Scene Manager update, not immediately.
     *
     * @method Phaser.Scenes.ScenePlugin#sleep
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to put to sleep.
     * @param {object} [data] - An optional data object that will be passed to the Scene and emitted in its sleep event.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function sleep(?key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Makes the Scene wake-up (starts update and render)
     *
     * This will happen at the next Scene Manager update, not immediately.
     *
     * @method Phaser.Scenes.ScenePlugin#wake
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to wake up.
     * @param {object} [data] - An optional data object that will be passed to the Scene and emitted in its wake event.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function wake(?key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Makes this Scene sleep then starts the Scene given.
     *
     * This will happen at the next Scene Manager update, not immediately.
     *
     * @method Phaser.Scenes.ScenePlugin#switch
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to start.
     *
     * @return {this} This Scene Plugin instance.
     */
    @:native('switch') public function switch_(key:Dynamic):Dynamic;
    /**
     * Shutdown the Scene, clearing display list, timers, etc.
     *
     * This happens at the next Scene Manager update, not immediately.
     *
     * @method Phaser.Scenes.ScenePlugin#stop
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to stop.
     * @param {any} [data] - Optional data object to pass to Scene.Systems.shutdown.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function stop(?key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Sets the active state of the given Scene.
     *
     * @method Phaser.Scenes.ScenePlugin#setActive
     * @since 3.0.0
     *
     * @param {boolean} value - If `true` the Scene will be resumed. If `false` it will be paused.
     * @param {(string|Phaser.Scene)} [key] - The Scene to set the active state of.
     * @param {object} [data] - An optional data object that will be passed to the Scene and emitted with its events.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function setActive(value:Bool, ?key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Sets the visible state of the given Scene.
     *
     * @method Phaser.Scenes.ScenePlugin#setVisible
     * @since 3.0.0
     *
     * @param {boolean} value - The visible value.
     * @param {(string|Phaser.Scene)} [key] - The Scene to set the visible state for.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function setVisible(value:Bool, ?key:Dynamic):Dynamic;
    /**
     * Checks if the given Scene is sleeping or not?
     *
     * @method Phaser.Scenes.ScenePlugin#isSleeping
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to check.
     *
     * @return {boolean} Whether the Scene is sleeping, or `null` if no matching Scene was found.
     */
    public function isSleeping(?key:Dynamic):Bool;
    /**
     * Checks if the given Scene is running or not?
     *
     * @method Phaser.Scenes.ScenePlugin#isActive
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to check.
     *
     * @return {boolean} Whether the Scene is running, or `null` if no matching Scene was found.
     */
    public function isActive(?key:Dynamic):Bool;
    /**
     * Checks if the given Scene is paused or not?
     *
     * @method Phaser.Scenes.ScenePlugin#isPaused
     * @since 3.17.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to check.
     *
     * @return {boolean} Whether the Scene is paused, or `null` if no matching Scene was found.
     */
    public function isPaused(?key:Dynamic):Bool;
    /**
     * Checks if the given Scene is visible or not?
     *
     * @method Phaser.Scenes.ScenePlugin#isVisible
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to check.
     *
     * @return {boolean} Whether the Scene is visible, or `null` if no matching Scene was found.
     */
    public function isVisible(?key:Dynamic):Bool;
    /**
     * Swaps the position of two scenes in the Scenes list.
     *
     * This controls the order in which they are rendered and updated.
     *
     * @method Phaser.Scenes.ScenePlugin#swapPosition
     * @since 3.2.0
     *
     * @param {(string|Phaser.Scene)} keyA - The first Scene to swap.
     * @param {(string|Phaser.Scene)} [keyB] - The second Scene to swap. If none is given it defaults to this Scene.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function swapPosition(keyA:Dynamic, ?keyB:Dynamic):Dynamic;
    /**
     * Swaps the position of two scenes in the Scenes list, so that Scene B is directly above Scene A.
     *
     * This controls the order in which they are rendered and updated.
     *
     * @method Phaser.Scenes.ScenePlugin#moveAbove
     * @since 3.2.0
     *
     * @param {(string|Phaser.Scene)} keyA - The Scene that Scene B will be moved to be above.
     * @param {(string|Phaser.Scene)} [keyB] - The Scene to be moved. If none is given it defaults to this Scene.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function moveAbove(keyA:Dynamic, ?keyB:Dynamic):Dynamic;
    /**
     * Swaps the position of two scenes in the Scenes list, so that Scene B is directly below Scene A.
     *
     * This controls the order in which they are rendered and updated.
     *
     * @method Phaser.Scenes.ScenePlugin#moveBelow
     * @since 3.2.0
     *
     * @param {(string|Phaser.Scene)} keyA - The Scene that Scene B will be moved to be below.
     * @param {(string|Phaser.Scene)} [keyB] - The Scene to be moved. If none is given it defaults to this Scene.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function moveBelow(keyA:Dynamic, ?keyB:Dynamic):Dynamic;
    /**
     * Removes a Scene from the SceneManager.
     *
     * The Scene is removed from the local scenes array, it's key is cleared from the keys
     * cache and Scene.Systems.destroy is then called on it.
     *
     * If the SceneManager is processing the Scenes when this method is called it will
     * queue the operation for the next update sequence.
     *
     * @method Phaser.Scenes.ScenePlugin#remove
     * @since 3.2.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to be removed.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function remove(?key:Dynamic):Dynamic;
    /**
     * Moves a Scene up one position in the Scenes list.
     *
     * @method Phaser.Scenes.ScenePlugin#moveUp
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to move.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function moveUp(?key:Dynamic):Dynamic;
    /**
     * Moves a Scene down one position in the Scenes list.
     *
     * @method Phaser.Scenes.ScenePlugin#moveDown
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to move.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function moveDown(?key:Dynamic):Dynamic;
    /**
     * Brings a Scene to the top of the Scenes list.
     *
     * This means it will render above all other Scenes.
     *
     * @method Phaser.Scenes.ScenePlugin#bringToTop
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to move.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function bringToTop(?key:Dynamic):Dynamic;
    /**
     * Sends a Scene to the back of the Scenes list.
     *
     * This means it will render below all other Scenes.
     *
     * @method Phaser.Scenes.ScenePlugin#sendToBack
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to move.
     *
     * @return {this} This Scene Plugin instance.
     */
    public function sendToBack(?key:Dynamic):Dynamic;
    /**
     * Retrieve a Scene.
     *
     * @method Phaser.Scenes.ScenePlugin#get
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to retrieve.
     *
     * @return {Phaser.Scene} The Scene.
     */
    public function get(key:Dynamic):phaser.Scene;
    /**
     * Retrieves the numeric index of a Scene in the Scenes list.
     *
     * @method Phaser.Scenes.ScenePlugin#getIndex
     * @since 3.7.0
     *
     * @param {(string|Phaser.Scene)} [key] - The Scene to get the index of.
     *
     * @return {number} The index of the Scene.
     */
    public function getIndex(?key:Dynamic):Float;
}
