if (global.isEraserMode) {
    for (var i = 0; i < ds_list_size(lines); i++) {
        var line = lines[| i];
        var startX = line[? "startX"];
        var startY = line[? "startY"];
        var endX = line[? "endX"];
        var endY = line[? "endY"];
        
        // Calculate the perpendicular distance from the mouse to the line segment
        var A = mouse_x - startX;
        var B = mouse_y - startY;
        var C = endX - startX;
        var D = endY - startY;

        var dot = A * C + B * D;
        var len_sq = C * C + D * D;
        var param = -1;
        if (len_sq != 0) // Avoid division by zero
            param = dot / len_sq;

        var nearest_x, nearest_y;

        if (param < 0) {
            nearest_x = startX;
            nearest_y = startY;
        } else if (param > 1) {
            nearest_x = endX;
            nearest_y = endY;
        } else {
            nearest_x = startX + param * C;
            nearest_y = startY + param * D;
        }

        // Calculate distance from the mouse to the nearest point on the line
        var lineDist = point_distance(mouse_x, mouse_y, nearest_x, nearest_y);

        // Additional check: Ensure the click is not near the endpoints
        var distToStart = point_distance(mouse_x, mouse_y, startX, startY);
        var distToEnd = point_distance(mouse_x, mouse_y, endX, endY);

        // If the click is close to the line but not too close to the endpoints, erase it
        if (lineDist < 25 && distToStart > 10 && distToEnd > 10) { // Adjust thresholds as needed
            ds_map_destroy(line); // Clean up the map
            ds_list_delete(lines, i); // Remove from list
            i--; // Adjust index after deletion
            break;
        }
    }
}
