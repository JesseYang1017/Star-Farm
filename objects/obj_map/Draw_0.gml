// obj_map - Draw Event

// Draw connections
for (var i = 0; i < ds_list_size(nodes); i++) {
    var node = nodes[| i];

    // Draw lines to connected nodes
    for (var j = 0; j < array_length(node.connections); j++) {
        var connected_node_index = node.connections[j];
        var connected_node = nodes[| connected_node_index];

        draw_line_color(node.x, node.y, connected_node.x, connected_node.y, c_white, c_white);
    }
}

// Draw nodes
for (var i = 0; i < ds_list_size(nodes); i++) {
    var node = nodes[| i];

    // Draw stars for occupied nodes
    if (node.occupied) {
        draw_sprite_ext(
            node.star_type == "A" ? star : star_B,
            0, node.x, node.y, 1, 1, 0, c_white, 1
        );
    } else {
        draw_circle_color(node.x, node.y, 10, c_gray, c_gray, false);
    }

    // Draw red circle and violation message if the timer is active
    if (node.violation_timer > 0) {
        draw_circle_color(node.x, node.y, 15, c_red, c_red, false);
        draw_text(node.x + 20, node.y, node.violation);
    }
}
