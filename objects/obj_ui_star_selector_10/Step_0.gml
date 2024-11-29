/// @description Insert description here
// You can write your code in this editor
if (point_in_rectangle(mouse_x, mouse_y, x - sprite_width, y - sprite_height, x + sprite_width, y + sprite_height)) {
    is_hovered = true;
} else {
    is_hovered = false;
}