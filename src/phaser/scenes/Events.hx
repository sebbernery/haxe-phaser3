package phaser.scenes;

/**
 * @namespace Phaser.Scenes.Events
 */
@:native("Phaser.Scenes.Events")
class Events {
    /**
     * The Game Object Added to Scene Event.
     * 
     * This event is dispatched when a Game Object is added to a Scene.
     * 
     * Listen for it from a Scene using `this.events.on('addedtoscene', listener)`.
     */
    public static final ADDED_TO_SCENE : String = "addedtoscene";

    /**
     * The Scene Systems Boot Event.
     * 
     * This event is dispatched by a Scene during the Scene Systems boot process. Primarily used by Scene Plugins.
     * 
     * Listen to it from a Scene using `this.events.on('boot', listener)`.
     */
    public static final BOOT : String = "boot";

    /**
     * The Scene Create Event.
     * 
     * This event is dispatched by a Scene after it has been created by the Scene Manager.
     * 
     * If a Scene has a `create` method then this event is emitted _after_ that has run.
     * 
     * If there is a transition, this event will be fired after the `TRANSITION_START` event.
     * 
     * Listen to it from a Scene using `this.events.on('create', listener)`.
     */
    public static final CREATE : String = "create";

    /**
     * The Scene Systems Destroy Event.
     * 
     * This event is dispatched by a Scene during the Scene Systems destroy process.
     * 
     * Listen to it from a Scene using `this.events.on('destroy', listener)`.
     * 
     * You should destroy any resources that may be in use by your Scene in this event handler.
     */
    public static final DESTROY : String = "destroy";

    /**
     * The Scene Systems Pause Event.
     * 
     * This event is dispatched by a Scene when it is paused, either directly via the `pause` method, or as an
     * action from another Scene.
     * 
     * Listen to it from a Scene using `this.events.on('pause', listener)`.
     */
    public static final PAUSE : String = "pause";

    /**
     * The Scene Systems Post Update Event.
     * 
     * This event is dispatched by a Scene during the main game loop step.
     * 
     * The event flow for a single step of a Scene is as follows:
     * 
     * 1. [PRE_UPDATE]{@linkcode Phaser.Scenes.Events#event:PRE_UPDATE}
     * 2. [UPDATE]{@linkcode Phaser.Scenes.Events#event:UPDATE}
     * 3. The `Scene.update` method is called, if it exists
     * 4. [POST_UPDATE]{@linkcode Phaser.Scenes.Events#event:POST_UPDATE}
     * 5. [PRE_RENDER]{@linkcode Phaser.Scenes.Events#event:PRE_RENDER}
     * 6. [RENDER]{@linkcode Phaser.Scenes.Events#event:RENDER}
     * 
     * Listen to it from a Scene using `this.events.on('postupdate', listener)`.
     * 
     * A Scene will only run its step if it is active.
     */
    public static final POST_UPDATE : String = "postupdate";

    /**
     * The Scene Systems Pre-Render Event.
     * 
     * This event is dispatched by a Scene during the main game loop step.
     * 
     * The event flow for a single step of a Scene is as follows:
     * 
     * 1. [PRE_UPDATE]{@linkcode Phaser.Scenes.Events#event:PRE_UPDATE}
     * 2. [UPDATE]{@linkcode Phaser.Scenes.Events#event:UPDATE}
     * 3. The `Scene.update` method is called, if it exists
     * 4. [POST_UPDATE]{@linkcode Phaser.Scenes.Events#event:POST_UPDATE}
     * 5. [PRE_RENDER]{@linkcode Phaser.Scenes.Events#event:PRE_RENDER}
     * 6. [RENDER]{@linkcode Phaser.Scenes.Events#event:RENDER}
     * 
     * Listen to this event from a Scene using `this.events.on('prerender', listener)`.
     * 
     * A Scene will only render if it is visible.
     * 
     * This event is dispatched after the Scene Display List is sorted and before the Scene is rendered.
     */
    public static final PRE_RENDER : String = "prerender";

    /**
     * The Scene Systems Pre Update Event.
     * 
     * This event is dispatched by a Scene during the main game loop step.
     * 
     * The event flow for a single step of a Scene is as follows:
     * 
     * 1. [PRE_UPDATE]{@linkcode Phaser.Scenes.Events#event:PRE_UPDATE}
     * 2. [UPDATE]{@linkcode Phaser.Scenes.Events#event:UPDATE}
     * 3. The `Scene.update` method is called, if it exists
     * 4. [POST_UPDATE]{@linkcode Phaser.Scenes.Events#event:POST_UPDATE}
     * 5. [PRE_RENDER]{@linkcode Phaser.Scenes.Events#event:PRE_RENDER}
     * 6. [RENDER]{@linkcode Phaser.Scenes.Events#event:RENDER}
     * 
     * Listen to it from a Scene using `this.events.on('preupdate', listener)`.
     * 
     * A Scene will only run its step if it is active.
     */
    public static final PRE_UPDATE : String = "preupdate";

    /**
     * The Scene Systems Ready Event.
     * 
     * This event is dispatched by a Scene during the Scene Systems start process.
     * By this point in the process the Scene is now fully active and rendering.
     * This event is meant for your game code to use, as all plugins have responded to the earlier 'start' event.
     * 
     * Listen to it from a Scene using `this.events.on('ready', listener)`.
     */
    public static final READY : String = "ready";

    /**
     * The Game Object Removed from Scene Event.
     * 
     * This event is dispatched when a Game Object is removed from a Scene.
     * 
     * Listen for it from a Scene using `this.events.on('removedfromscene', listener)`.
     */
    public static final REMOVED_FROM_SCENE : String = "removedfromscene";

    /**
     * The Scene Systems Render Event.
     * 
     * This event is dispatched by a Scene during the main game loop step.
     * 
     * The event flow for a single step of a Scene is as follows:
     * 
     * 1. [PRE_UPDATE]{@linkcode Phaser.Scenes.Events#event:PRE_UPDATE}
     * 2. [UPDATE]{@linkcode Phaser.Scenes.Events#event:UPDATE}
     * 3. The `Scene.update` method is called, if it exists
     * 4. [POST_UPDATE]{@linkcode Phaser.Scenes.Events#event:POST_UPDATE}
     * 5. [PRE_RENDER]{@linkcode Phaser.Scenes.Events#event:PRE_RENDER}
     * 6. [RENDER]{@linkcode Phaser.Scenes.Events#event:RENDER}
     * 
     * Listen to it from a Scene using `this.events.on('render', listener)`.
     * 
     * A Scene will only render if it is visible.
     * 
     * By the time this event is dispatched, the Scene will have already been rendered.
     */
    public static final RENDER : String = "render";

    /**
     * The Scene Systems Resume Event.
     * 
     * This event is dispatched by a Scene when it is resumed from a paused state, either directly via the `resume` method,
     * or as an action from another Scene.
     * 
     * Listen to it from a Scene using `this.events.on('resume', listener)`.
     */
    public static final RESUME : String = "resume";

    /**
     * The Scene Systems Shutdown Event.
     * 
     * This event is dispatched by a Scene during the Scene Systems shutdown process.
     * 
     * Listen to it from a Scene using `this.events.on('shutdown', listener)`.
     * 
     * You should free-up any resources that may be in use by your Scene in this event handler, on the understanding
     * that the Scene may, at any time, become active again. A shutdown Scene is not 'destroyed', it's simply not
     * currently active. Use the [DESTROY]{@linkcode Phaser.Scenes.Events#event:DESTROY} event to completely clear resources.
     */
    public static final SHUTDOWN : String = "shutdown";

    /**
     * The Scene Systems Sleep Event.
     * 
     * This event is dispatched by a Scene when it is sent to sleep, either directly via the `sleep` method,
     * or as an action from another Scene.
     * 
     * Listen to it from a Scene using `this.events.on('sleep', listener)`.
     */
    public static final SLEEP : String = "sleep";

    /**
     * The Scene Systems Start Event.
     * 
     * This event is dispatched by a Scene during the Scene Systems start process. Primarily used by Scene Plugins.
     * 
     * Listen to it from a Scene using `this.events.on('start', listener)`.
     */
    public static final START : String = "start";

    /**
     * The Scene Transition Complete Event.
     * 
     * This event is dispatched by the Target Scene of a transition.
     * 
     * It happens when the transition process has completed. This occurs when the duration timer equals or exceeds the duration
     * of the transition.
     * 
     * Listen to it from a Scene using `this.events.on('transitioncomplete', listener)`.
     * 
     * The Scene Transition event flow is as follows:
     * 
     * 1. [TRANSITION_OUT]{@linkcode Phaser.Scenes.Events#event:TRANSITION_OUT} - the Scene that started the transition will emit this event.
     * 2. [TRANSITION_INIT]{@linkcode Phaser.Scenes.Events#event:TRANSITION_INIT} - the Target Scene will emit this event if it has an `init` method.
     * 3. [TRANSITION_START]{@linkcode Phaser.Scenes.Events#event:TRANSITION_START} - the Target Scene will emit this event after its `create` method is called, OR ...
     * 4. [TRANSITION_WAKE]{@linkcode Phaser.Scenes.Events#event:TRANSITION_WAKE} - the Target Scene will emit this event if it was asleep and has been woken-up to be transitioned to.
     * 5. [TRANSITION_COMPLETE]{@linkcode Phaser.Scenes.Events#event:TRANSITION_COMPLETE} - the Target Scene will emit this event when the transition finishes.
     */
    public static final TRANSITION_COMPLETE : String = "transitioncomplete";

    /**
     * The Scene Transition Init Event.
     * 
     * This event is dispatched by the Target Scene of a transition.
     * 
     * It happens immediately after the `Scene.init` method is called. If the Scene does not have an `init` method,
     * this event is not dispatched.
     * 
     * Listen to it from a Scene using `this.events.on('transitioninit', listener)`.
     * 
     * The Scene Transition event flow is as follows:
     * 
     * 1. [TRANSITION_OUT]{@linkcode Phaser.Scenes.Events#event:TRANSITION_OUT} - the Scene that started the transition will emit this event.
     * 2. [TRANSITION_INIT]{@linkcode Phaser.Scenes.Events#event:TRANSITION_INIT} - the Target Scene will emit this event if it has an `init` method.
     * 3. [TRANSITION_START]{@linkcode Phaser.Scenes.Events#event:TRANSITION_START} - the Target Scene will emit this event after its `create` method is called, OR ...
     * 4. [TRANSITION_WAKE]{@linkcode Phaser.Scenes.Events#event:TRANSITION_WAKE} - the Target Scene will emit this event if it was asleep and has been woken-up to be transitioned to.
     * 5. [TRANSITION_COMPLETE]{@linkcode Phaser.Scenes.Events#event:TRANSITION_COMPLETE} - the Target Scene will emit this event when the transition finishes.
     */
    public static final TRANSITION_INIT : String = "transitioninit";

    /**
     * The Scene Transition Out Event.
     * 
     * This event is dispatched by a Scene when it initiates a transition to another Scene.
     * 
     * Listen to it from a Scene using `this.events.on('transitionout', listener)`.
     * 
     * The Scene Transition event flow is as follows:
     * 
     * 1. [TRANSITION_OUT]{@linkcode Phaser.Scenes.Events#event:TRANSITION_OUT} - the Scene that started the transition will emit this event.
     * 2. [TRANSITION_INIT]{@linkcode Phaser.Scenes.Events#event:TRANSITION_INIT} - the Target Scene will emit this event if it has an `init` method.
     * 3. [TRANSITION_START]{@linkcode Phaser.Scenes.Events#event:TRANSITION_START} - the Target Scene will emit this event after its `create` method is called, OR ...
     * 4. [TRANSITION_WAKE]{@linkcode Phaser.Scenes.Events#event:TRANSITION_WAKE} - the Target Scene will emit this event if it was asleep and has been woken-up to be transitioned to.
     * 5. [TRANSITION_COMPLETE]{@linkcode Phaser.Scenes.Events#event:TRANSITION_COMPLETE} - the Target Scene will emit this event when the transition finishes.
     */
    public static final TRANSITION_OUT : String = "transitionout";

    /**
     * The Scene Transition Start Event.
     * 
     * This event is dispatched by the Target Scene of a transition, only if that Scene was not asleep.
     * 
     * It happens immediately after the `Scene.create` method is called. If the Scene does not have a `create` method,
     * this event is dispatched anyway.
     * 
     * If the Target Scene was sleeping then the [TRANSITION_WAKE]{@linkcode Phaser.Scenes.Events#event:TRANSITION_WAKE} event is
     * dispatched instead of this event.
     * 
     * Listen to it from a Scene using `this.events.on('transitionstart', listener)`.
     * 
     * The Scene Transition event flow is as follows:
     * 
     * 1. [TRANSITION_OUT]{@linkcode Phaser.Scenes.Events#event:TRANSITION_OUT} - the Scene that started the transition will emit this event.
     * 2. [TRANSITION_INIT]{@linkcode Phaser.Scenes.Events#event:TRANSITION_INIT} - the Target Scene will emit this event if it has an `init` method.
     * 3. [TRANSITION_START]{@linkcode Phaser.Scenes.Events#event:TRANSITION_START} - the Target Scene will emit this event after its `create` method is called, OR ...
     * 4. [TRANSITION_WAKE]{@linkcode Phaser.Scenes.Events#event:TRANSITION_WAKE} - the Target Scene will emit this event if it was asleep and has been woken-up to be transitioned to.
     * 5. [TRANSITION_COMPLETE]{@linkcode Phaser.Scenes.Events#event:TRANSITION_COMPLETE} - the Target Scene will emit this event when the transition finishes.
     */
    public static final TRANSITION_START : String = "transitionstart";

    /**
     * The Scene Transition Wake Event.
     * 
     * This event is dispatched by the Target Scene of a transition, only if that Scene was asleep before
     * the transition began. If the Scene was not asleep the [TRANSITION_START]{@linkcode Phaser.Scenes.Events#event:TRANSITION_START} event is dispatched instead.
     * 
     * Listen to it from a Scene using `this.events.on('transitionwake', listener)`.
     * 
     * The Scene Transition event flow is as follows:
     * 
     * 1. [TRANSITION_OUT]{@linkcode Phaser.Scenes.Events#event:TRANSITION_OUT} - the Scene that started the transition will emit this event.
     * 2. [TRANSITION_INIT]{@linkcode Phaser.Scenes.Events#event:TRANSITION_INIT} - the Target Scene will emit this event if it has an `init` method.
     * 3. [TRANSITION_START]{@linkcode Phaser.Scenes.Events#event:TRANSITION_START} - the Target Scene will emit this event after its `create` method is called, OR ...
     * 4. [TRANSITION_WAKE]{@linkcode Phaser.Scenes.Events#event:TRANSITION_WAKE} - the Target Scene will emit this event if it was asleep and has been woken-up to be transitioned to.
     * 5. [TRANSITION_COMPLETE]{@linkcode Phaser.Scenes.Events#event:TRANSITION_COMPLETE} - the Target Scene will emit this event when the transition finishes.
     */
    public static final TRANSITION_WAKE : String = "transitionwake";

    /**
     * The Scene Systems Update Event.
     * 
     * This event is dispatched by a Scene during the main game loop step.
     * 
     * The event flow for a single step of a Scene is as follows:
     * 
     * 1. [PRE_UPDATE]{@linkcode Phaser.Scenes.Events#event:PRE_UPDATE}
     * 2. [UPDATE]{@linkcode Phaser.Scenes.Events#event:UPDATE}
     * 3. The `Scene.update` method is called, if it exists
     * 4. [POST_UPDATE]{@linkcode Phaser.Scenes.Events#event:POST_UPDATE}
     * 5. [PRE_RENDER]{@linkcode Phaser.Scenes.Events#event:PRE_RENDER}
     * 6. [RENDER]{@linkcode Phaser.Scenes.Events#event:RENDER}
     * 
     * Listen to it from a Scene using `this.events.on('update', listener)`.
     * 
     * A Scene will only run its step if it is active.
     */
    public static final UPDATE : String = "update";

    /**
     * The Scene Systems Wake Event.
     * 
     * This event is dispatched by a Scene when it is woken from sleep, either directly via the `wake` method,
     * or as an action from another Scene.
     * 
     * Listen to it from a Scene using `this.events.on('wake', listener)`.
     */
    public static final WAKE : String = "wake";

}
