// obj_line_controller - Draw Event
// Draw permanent lines
for (var i = 0; i < ds_list_size(lines); i++) {
    var line = lines[| i];
    draw_line(line[? "startX"], line[? "startY"], line[? "endX"], line[? "endY"]);
}

// Draw the temporary line if dragging a line
if (draggingLine && instance_exists(firstStar)) { // Check if firstStar exists
    var dist = point_distance(firstStar.x, firstStar.y, mouse_x, mouse_y);

    // Adjust endpoint if distance exceeds 500 pixels
    if (dist > 500) {
        var angle = point_direction(firstStar.x, firstStar.y, mouse_x, mouse_y);
        var endX = firstStar.x + lengthdir_x(500, angle);
        var endY = firstStar.y + lengthdir_y(500, angle);
    } else {
        var endX = mouse_x;
        var endY = mouse_y;
    }

    draw_line(firstStar.x, firstStar.y, endX, endY);
}
