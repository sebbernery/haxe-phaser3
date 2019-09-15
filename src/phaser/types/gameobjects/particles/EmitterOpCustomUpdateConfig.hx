package phaser.types.gameobjects.particles;

/**
 * @typedef {object} Phaser.Types.GameObjects.Particles.EmitterOpCustomUpdateConfig
 * @since 3.0.0
 *
 * @property {Phaser.Types.GameObjects.Particles.EmitterOpOnEmitCallback} [onEmit] - A callback that is invoked each time the emitter emits a particle.
 * @property {Phaser.Types.GameObjects.Particles.EmitterOpOnUpdateCallback} onUpdate - A callback that is invoked each time the emitter updates.
 */
typedef EmitterOpCustomUpdateConfig = {
    @:optional var onEmit:phaser.types.gameobjects.particles.EmitterOpOnEmitCallback;
var onUpdate:phaser.types.gameobjects.particles.EmitterOpOnUpdateCallback;
};
