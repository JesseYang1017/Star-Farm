// Mouse Left Pressed Event in OStar
if(!global.isEraserMode){
	with (obj_line_controller) {
    if (!draggingLine) {
        // Start a new line from this star
        firstStar = other.id; // Reference the clicked star
        draggingLine = true;
    } else {
        // Check if this star is within range
        var dist = point_distance(firstStar.x, firstStar.y, other.x, other.y);
        
        if (dist <= 500) {
            // Add a new line to the list
            var line = ds_map_create();
            line[? "startX"] = firstStar.x;
            line[? "startY"] = firstStar.y;
            line[? "endX"] = other.x;
            line[? "endY"] = other.y;
            ds_list_add(lines, line);

            // Reset dragging state
            firstStar = noone;
            draggingLine = false;
        }
    }
}
}
