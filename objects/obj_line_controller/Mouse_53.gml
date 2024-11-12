/// @description Insert description here
// You can write your code in this editor
// obj_line_controller - Global Left Mouse Pressed Event
if (global.isEraserMode) {
    for (var i = 0; i < ds_list_size(lines); i++) {
        var line = lines[| i];
        var distToStart = point_distance(mouse_x, mouse_y, line[? "startX"], line[? "startY"]);
        var distToEnd = point_distance(mouse_x, mouse_y, line[? "endX"], line[? "endY"]);

        // If the click is close to either endpoint, erase the line
        if (distToStart < 15 || distToEnd < 15) {
            ds_map_destroy(line); // Clean up the map
            ds_list_delete(lines, i); // Remove from list
            break;
        }
    }
}

