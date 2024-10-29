// Mouse Left Pressed Event in OStar

if (global.is_connecting_stars) {
    // Check if there's a previously clicked star and it's not the same as this one
    if (global.previous_star != noone && global.previous_star != id) {
        // Save the coordinates as a line segment to persist it
        var line = [global.previous_star.x + 5, global.previous_star.y + 5, x + 5, y + 5];
        array_push(global.lines, line); // Append to the line list
        
        // Reset global.previous_star after creating the line
        global.previous_star = noone;
    } else {
        // Set this star as the previous star to prepare for the next click
        global.previous_star = id;
    }
}
