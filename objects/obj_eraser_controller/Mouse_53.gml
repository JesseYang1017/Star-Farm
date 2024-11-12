/// @description Insert description here
// You can write your code in this editor
if (global.isEraserMode) {
    // Erase mode: Check if clicking on a star, and remove it
    var destroy = instance_position(mouse_x, mouse_y, OStar);
    if (destroy != noone) {
        with (destroy) {
            instance_destroy();
        }
    }
}
else{
}	
