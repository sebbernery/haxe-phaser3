# Organizing your project

```
assets/
dist/
    assets/ --> ../assets/
    index.html
    main.js
src/
    Game.hx
    Main.hx
    PlayScene.hx
    import.hx
build.hxml
```

|     Filename          |   Description            |
| ------------- | ------------- |
| /assets/  | You can put all your images, sounds, music, sprites in this directory  |
| /dist/ | Your compiled code will go here |
| /dist/assets/  | Symbolically linked to ../assets/ in order to let Javascript accesses the assets  |
| /dist/index.html | The html page where you execute your compiled code |
| /src/ | Where you put all your Haxe files to make your game |
| /src/Game.hx | Where you create the Game instance |
| /src/Main.hx | Where you launch the Game |
| /src/PlayScene.hx | A scene example |
| /src/import.hx | You can put all your imports in this file, but it's optional |
| build.hxml | Compilation configuration |


# Test your project

You'll have to compile first:

```
haxe build.hxml
```

Then, you can create a local server in your dist/ directory, with Python for example:

```
python3 -m http.server 8000
```

Go to ```localhost:8000``` to test your game!
