// Only place a star if placing mode is active and there's no object at the mouse position
if (global.is_placing_star && instance_position(mouse_x, mouse_y, all) == noone) {
    instance_create_layer(mouse_x, mouse_y, "Instances", OStar);
}