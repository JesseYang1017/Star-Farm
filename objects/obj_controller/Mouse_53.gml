if (instance_position(mouse_x, mouse_y, OStar) == noone && instance_position(mouse_x, mouse_y, obj_star_icon) == noone) {
    instance_create_layer(mouse_x, mouse_y, "Instances", OStar);
}


/// @description Insert description here
// You can write your code in this editor