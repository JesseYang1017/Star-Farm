/// @description Insert description here
// You can write your code in this editor
// obj_clear_button - Mouse Left Pressed Event
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    // Call the clear_map function in obj_map
    with (obj_map_4) {
        clear_map();
		obj_map_4.typeA_count = 2;
		obj_map_4.typeB_count = 1;
		obj_map_4.typeC_count = 1;
    }

    // Optional: Provide feedback
    show_debug_message("Map cleared by player.");
}
