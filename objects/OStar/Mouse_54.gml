// Check if there is an instance of OStar at the mouse position
var instance_to_destroy = instance_position(mouse_x, mouse_y, OStar);

if (instance_to_destroy != noone) {
    // Destroy the OStar instance at the mouse position
    with (instance_to_destroy) {
        instance_destroy();
    }
}
