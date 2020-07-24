// You can make your game here, or create other .hx files.

class PlayScene extends Scene {

    public function create() {
        var title = this.add.text(100, 200, "Try it!", { fontFamily: 'Arial', fontSize: 64, color: '#ffffff' });

        // Flip the text horizontally
        this.input.on("pointerup", function() {
            if (title.flipX) {
                title.flipX = false;
                // == title.setFlipX(false)
            } else {
                title.flipX = true;
                // == title.setFlipX(true)
            };
        });

        // Move the title to the position of the pointer
        this.input.on("pointerdown", function(pointer) {
            title.setPosition(pointer.x, pointer.y);
        });
    }
}

