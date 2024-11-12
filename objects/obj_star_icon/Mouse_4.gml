/// @description Insert description here
// You can write your code in this editor
global.is_placing_star = !global.is_placing_star;

if (global.is_placing_star) {
    sprite_index =place_star_highlighted; // Switch to highlighted sprite
} else {
    sprite_index = place_star;      // Switch to normal sprite
}
