package phaser;

/**
 * The returned value sets what the property will be at the START of the particle's life, on emit.
 * @callback EmitterOpOnEmitCallback
 *
 * @param {Phaser.GameObjects.Particles.Particle} particle - The particle.
 * @param {string} key - The name of the property.
 * @param {number} value - The current value of the property.
 *
 * @return {number} The new value of the property.
 */
typedef EmitterOpOnEmitCallback = Dynamic;
