// obj_ui_star_selector - Mouse Left Pressed Event

// Set the selected type and enable placement mode
global.selected_star_type = type;
if(type == "C" && obj_map_4.typeC_count > 0){
	global.placing_star = true;
}




// Create the star icon following the mouse
if (instance_exists(global.star_icon)) {
    instance_destroy(global.star_icon); // Remove any existing icon
}

if(type == "C" && obj_map_4.typeC_count > 0){
	global.star_icon = instance_create_layer(mouse_x, mouse_y, "Instances", obj_star_follow_mouse_C_1);
}
if(obj_map_4.typeA_count > 0 && obj_map_4.typeB_count>0 && obj_map_4.typeC_count>0){
	global.star_icon.type = type; // Set the icon's type to match the selected star type
}
