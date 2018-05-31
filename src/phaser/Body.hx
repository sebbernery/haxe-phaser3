package phaser;

@:native("Body")
extern class Body {
    public function new();
    public function create():Void;
    public function nextGroup():Void;
    public function nextCategory():Void;
    public function set():Void;
    public function setStatic():Void;
    public function setMass():Void;
    public function setDensity():Void;
    public function setInertia():Void;
    public function setVertices():Void;
    public function setParts():Void;
    public function setPosition():Void;
    public function setAngle():Void;
    public function setVelocity():Void;
    public function setAngularVelocity():Void;
    public function translate():Void;
    public function rotate():Void;
    public function scale():Void;
    public function update():Void;
    public function applyForce():Void;
}
