/// @description Insert description here
// You can write your code in this editor
if (global.isEraserMode) {
    // Erase mode: Check if clicking on a star, and remove it
	if (instance_position(mouse_x, mouse_y, obj_star) != noone) {
    show_debug_message("Star detected under mouse.");
	 var destroy = instance_position(mouse_x, mouse_y, OStar);
	     if (destroy != noone) {
			//show_debug_message("destroy not noone") 
        with (destroy) {
            instance_destroy();
			//show_debug_message("destroyed");
        }
    }
} else {
    //show_debug_message("No star detected.");
}
}
	
