/// @description Insert description here
// You can write your code in this editor
// obj_ui_star_selector - Mouse Left Pressed Event

// Set the selected type and enable placement mode
global.selected_star_type = type;
if(type == "B" && obj_map.typeB_count > 0){
	global.placing_star = true;
}



// Create the star icon following the mouse

if (instance_exists(global.star_icon)) {
	show_debug_message("Star Icon Exists with ID: " + string(global.star_icon));
    instance_destroy(global.star_icon); // Remove any existing icon
	show_debug_message("Star Icon Destroyed");
	global.star_icon = noone; 
}

 if(type == "B" && obj_map.typeB_count > 0){
	global.star_icon = instance_create_layer(mouse_x, mouse_y, "Instances", obj_star_follow_mouse_B);
}
if(obj_map.typeB_count > 0){
	global.star_icon.type = type; // Set the icon's type to match the selected star type
}
