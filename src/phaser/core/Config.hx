package phaser.core;

/**
 * @classdesc
 * The active game configuration settings, parsed from a {@link Phaser.Types.Core.GameConfig} object.
 *
 * @class Config
 * @memberof Phaser.Core
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Types.Core.GameConfig} [GameConfig] - The configuration object for your Phaser Game instance.
 *
 * @see Phaser.Game#config
 */
@:native("Phaser.Core.Config")
extern class Config {
    public function new(?GameConfig:phaser.types.core.GameConfig);
}
