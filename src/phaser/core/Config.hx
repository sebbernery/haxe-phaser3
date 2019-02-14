package phaser.core;

/**
 * @classdesc
 * The active game configuration settings, parsed from a {@link GameConfig} object.
 *
 * @class Config
 * @memberof Phaser.Core
 * @constructor
 * @since 3.0.0
 *
 * @param {GameConfig} [GameConfig] - The configuration object for your Phaser Game instance.
 *
 * @see Phaser.Game#config
 */
@:native("Phaser.Core.Config")
extern class Config {
    public function new(?GameConfig:GameConfig);
}
