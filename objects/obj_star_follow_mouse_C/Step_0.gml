/// @description Insert description here
// You can write your code in this editor
// obj_star_follow_mouse - Step Event
x = mouse_x;
y = mouse_y;

// Destroy the follow mouse object when placement is canceled
if (!global.placing_star) {
    instance_destroy();
}
