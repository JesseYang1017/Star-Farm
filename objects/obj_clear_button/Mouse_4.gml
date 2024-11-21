/// @description Insert description here
// You can write your code in this editor
// obj_clear_button - Mouse Left Pressed Event
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    // Call the clear_map function in obj_map
    with (obj_map) {
        clear_map();
    }

    // Optional: Provide feedback
    show_debug_message("Map cleared by player.");
}
