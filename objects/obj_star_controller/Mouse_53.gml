/// @description Insert description here
// You can write your code in this editor
if (global.is_placing_star && instance_position(mouse_x, mouse_y, all) == noone) {
    instance_create_layer(mouse_x, mouse_y, "Instances", OStar);
}

