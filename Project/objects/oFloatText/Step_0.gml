// Movement
xOffset += horizShakeAmt;
angle += tiltAmt;

// Lifetime stuff
alpha = life / lifeTime;	// Get alpha at lifetime
life--;

if (life <= 0) { instance_destroy(); }