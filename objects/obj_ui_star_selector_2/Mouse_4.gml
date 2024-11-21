/// @description Insert description here
// You can write your code in this editor
// obj_ui_star_selector - Mouse Left Pressed Event

// Set the selected type and enable placement mode
global.selected_star_type = type;
global.placing_star = true;


// Create the star icon following the mouse
if (instance_exists(global.star_icon)) {
    instance_destroy(global.star_icon); // Remove any existing icon
}
if(type == "A"){
	global.star_icon = instance_create_layer(mouse_x, mouse_y, "Instances", obj_star_follow_mouse_A);
}
else if(type == "B"){
	global.star_icon = instance_create_layer(mouse_x, mouse_y, "Instances", obj_star_follow_mouse_B);
}
global.star_icon.type = type; // Set the icon's type to match the selected star type
