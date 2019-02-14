package phaser;

/**
 * @typedef {object} EmitterOpCustomUpdateConfig
 *
 * @property {EmitterOpOnEmitCallback} [onEmit] - A callback that is invoked each time the emitter emits a particle.
 * @property {EmitterOpOnUpdateCallback} onUpdate - A callback that is invoked each time the emitter updates.
 */
typedef EmitterOpCustomUpdateConfig = {
    @:optional var onEmit:EmitterOpOnEmitCallback;
var onUpdate:EmitterOpOnUpdateCallback;
};
