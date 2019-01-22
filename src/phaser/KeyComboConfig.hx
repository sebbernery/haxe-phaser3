package phaser;

/**
 * @typedef {object} KeyComboConfig
 *
 * @property {boolean} [resetOnWrongKey=true] - If they press the wrong key do we reset the combo?
 * @property {number} [maxKeyDelay=0] - The max delay in ms between each key press. Above this the combo is reset. 0 means disabled.
 * @property {boolean} [resetOnMatch=false] - If previously matched and they press the first key of the combo again, will it reset?
 * @property {boolean} [deleteOnMatch=false] - If the combo matches, will it delete itself?
 */
typedef KeyComboConfig = {
    @:optional var resetOnWrongKey:Bool;
    @:optional var maxKeyDelay:Float;
    @:optional var resetOnMatch:Bool;
    @:optional var deleteOnMatch:Bool;
};
