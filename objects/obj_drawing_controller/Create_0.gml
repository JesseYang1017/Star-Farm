// Initialize global variables for modes
global.is_pen_mode = false;       // Track if pen mode is active
global.is_placing_star = true;    // Track if placing stars is allowed (starts enabled)
global.previous_x = -1;           // Initial previous x-coordinate for drawing
global.previous_y = -1;           // Initial previous y-coordinate
global.lines = [];                // Array to store drawn line segments for persistent drawing
