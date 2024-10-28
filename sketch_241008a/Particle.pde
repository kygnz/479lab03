// Particle class for the explosion effect
class Particle {
    float x, y, vx, vy;
    color c;

    Particle(float x, float y) {
        this.x = x;
        this.y = y;
        vx = random(-2, 2);  // Random horizontal velocity
        vy = random(-2, 2);  // Random vertical velocity
        c = color(random(255), random(255), random(255));  // Random color
    }

    void update() {
        x += vx;
        y += vy;
        vy += 0.1;  // Simulate gravity
    }

    void display() {
        fill(c);
        noStroke();
        ellipse(x, y, 5, 5);  // Draw the particle
    }

    boolean isOffScreen() {
        // Check if the particle is off the screen
        return (x < 0 || x > width || y > height);
    }
}
