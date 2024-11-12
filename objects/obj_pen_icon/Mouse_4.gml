// Toggle pen mode when clicking the pen icon
global.is_pen_mode = !global.is_pen_mode;

// Disable star placing if pen mode is active, and enable it if pen mode is inactive
//global.is_placing_star = !global.is_pen_mode;

if (global.is_pen_mode) {
    sprite_index = DrawShape_highlighted; // Switch to highlighted sprite
} else {
    sprite_index = DrawShape;      // Switch to normal sprite
}
