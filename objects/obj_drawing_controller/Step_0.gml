if (global.is_pen_mode && mouse_check_button(mb_left)) {
    // Check if this is the first point in the drawing
    if (global.previous_x == -1 && global.previous_y == -1) {
        // Start drawing at the current mouse position
        global.previous_x = mouse_x;
        global.previous_y = mouse_y;
    } else {
        // Create a line segment from the previous position to the current mouse position
        var line_segment = [global.previous_x, global.previous_y, mouse_x, mouse_y];
        array_push(global.lines, line_segment); // Add segment to the lines array
    }

    // Update previous position to the current position
    global.previous_x = mouse_x;
    global.previous_y = mouse_y;
} else if (global.is_pen_mode && !mouse_check_button(mb_left)) {
    // Reset the previous position when the mouse button is released
    global.previous_x = -1;
    global.previous_y = -1;
}
