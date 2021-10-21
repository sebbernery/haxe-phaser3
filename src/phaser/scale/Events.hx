package phaser.scale;

/**
 * @namespace Phaser.Scale.Events
 */
@:native("Phaser.Scale.Events")
class Events {
    /**
     * The Scale Manager has successfully entered fullscreen mode.
     */
    public static final ENTER_FULLSCREEN : String = "enterfullscreen";

    /**
     * The Scale Manager tried to enter fullscreen mode but failed.
     */
    public static final FULLSCREEN_FAILED : String = "fullscreenfailed";

    /**
     * The Scale Manager tried to enter fullscreen mode, but it is unsupported by the browser.
     */
    public static final FULLSCREEN_UNSUPPORTED : String = "fullscreenunsupported";

    /**
     * The Scale Manager was in fullscreen mode, but has since left, either directly via game code,
     * or via a user gestured, such as pressing the ESC key.
     */
    public static final LEAVE_FULLSCREEN : String = "leavefullscreen";

    /**
     * The Scale Manager Orientation Change Event.
     * 
     * This event is dispatched whenever the Scale Manager detects an orientation change event from the browser.
     */
    public static final ORIENTATION_CHANGE : String = "orientationchange";

    /**
     * The Scale Manager Resize Event.
     * 
     * This event is dispatched whenever the Scale Manager detects a resize event from the browser.
     * It sends three parameters to the callback, each of them being Size components. You can read
     * the `width`, `height`, `aspectRatio` and other properties of these components to help with
     * scaling your own game content.
     */
    public static final RESIZE : String = "resize";
 
}
