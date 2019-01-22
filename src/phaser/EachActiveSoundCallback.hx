package phaser;

/**
 * @callback EachActiveSoundCallback
 *
 * @param {Phaser.Sound.BaseSoundManager} manager - The SoundManager
 * @param {Phaser.Sound.BaseSound} sound - The current active Sound
 * @param {number} index - The index of the current active Sound
 * @param {Phaser.Sound.BaseSound[]} sounds - All sounds
 */
typedef EachActiveSoundCallback = Dynamic;
