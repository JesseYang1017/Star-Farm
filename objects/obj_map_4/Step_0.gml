// obj_map - Step Event

var all_occupied = true; // Assume all nodes are occupied initially

// Handle placing a star
if (mouse_check_button_pressed(mb_left) && global.placing_star) {
    for (var i = 0; i < ds_list_size(nodes); i++) {
        var node = nodes[| i];

        // Check if the mouse is near the node
        if (point_distance(mouse_x, mouse_y, node.x, node.y) < 20) {
            if (!node.occupied) {
                // Place the star
                node.occupied = true;
                node.star_type = global.selected_star_type;

                // Create the star instance
                if ((global.selected_star_type == "A" && typeA_count > 0) ||
                    (global.selected_star_type == "B" && typeB_count > 0) || 
                    (global.selected_star_type == "C" && typeC_count > 0)) {
                    
                    var new_star = instance_create_layer(node.x, node.y, "Instances", obj_star);
                    new_star.type = global.selected_star_type;
                    
                    if (global.selected_star_type == "A") {
                        typeA_count -= 1;
                        new_star.sprite_index = star;
						audio_play_sound(snd_starA, 3, false);
                        show_debug_message("Type A remaining: " + string(typeA_count));
                    } else if (global.selected_star_type == "B") {
                        typeB_count -= 1;
                        new_star.sprite_index = star_B;
						audio_play_sound(snd_starB,3,false);
                        show_debug_message("Type B remaining: " + string(typeB_count));
                    } else if (global.selected_star_type == "C") {
                        typeC_count -= 1;
                        new_star.sprite_index = fireball;
						audio_play_sound(snd_fireball, 3, false);
                        show_debug_message("Type C remaining: " + string(typeC_count));
                    }
                    // Reset placement state
                    global.placing_star = false;
                    global.selected_star_type = noone;
                }
            } else {
                // Set violation message and start the timer
                node.violation = "Node is already occupied!";
                node.violation_timer = room_speed * 2; // 2 seconds timer
            }
            break;
        }
    }
}

// Decrease the violation timer for all nodes
for (var i = 0; i < ds_list_size(nodes); i++) {
    var node = nodes[| i];

    // Reduce the timer if it's active
    if (node.violation_timer > 0) {
        node.violation_timer -= 1;

        // Clear violation if timer reaches zero
        if (node.violation_timer <= 0) {
            node.violation = "";
        }
    }

    // Check if all nodes are occupied
    if (!node.occupied) {
        all_occupied = false;
    }
}

// If all nodes are occupied, validate adjacency constraints
if (all_occupied && !global.graph_completed) {
    global.graph_completed = true; // Mark graph as complete

    // Validate adjacency for all nodes
    for (var i = 0; i < ds_list_size(nodes); i++) {
        var node = nodes[| i];
        var num_adjacent_stars = 0;
        var same_type_violation = false;

        // Check connections for adjacency
        for (var j = 0; j < array_length(node.connections); j++) {
            var adjacent_node_index = node.connections[j];
            var adjacent_node = nodes[| adjacent_node_index];

            if (adjacent_node.occupied) {
                num_adjacent_stars++;

                // Check for same-type violation
                if (node.star_type == "A" && adjacent_node.star_type == "A") {
                    same_type_violation = true;
                }
            }
        }

        // Validate based on star type
        if (node.star_type == "A" && (num_adjacent_stars < 1 || num_adjacent_stars > 2 || same_type_violation)) {
            node.violation = "Type A: 1-2 adjacent stars, no same type!";
            node.violation_timer = room_speed * 10; // Show for 10 seconds
            global.violation_count++;
        } else if (node.star_type == "B" && (num_adjacent_stars < 2 || num_adjacent_stars > 3)) {
            node.violation = "Type B: 2-3 adjacent stars required";
            node.violation_timer = room_speed * 10; // Show for 10 seconds
            global.violation_count++;
        } else if (node.star_type == "C" && num_adjacent_stars != 1) {
            node.violation = "Type C: 1 adjacent star required";
            node.violation_timer = room_speed * 10; // Show for 10 seconds
            global.violation_count++;
        } else {
            node.violation = ""; // Clear violations if valid
        }
    }

    // Check if there are no violations
    if (global.violation_count == 0 && global.graph_completed) {
        global.aries_completed = true;
			audio_play_sound(snd_level_success, 1, false);
        global.huzzah_timer = room_speed * 2; // Set Huzzah message timer
    } else {
		global.graph_complete = false;
	}
	
}

// Display "Huzzah" message if the graph is valid and completed
if (global.huzzah_timer > 0) {
    draw_text(2600, 1700, "Huzzah You Got It!");

    global.huzzah_timer -= 1; // Decrease timer each frame
}
