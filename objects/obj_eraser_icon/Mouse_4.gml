/// @description Insert description here
// You can write your code in this editor
global.isEraserMode = !global.isEraserMode; // Toggle eraser mode


if (global.isEraserMode) {
    sprite_index = Eraser_highlighted; // Switch to highlighted sprite
} else {
    sprite_index = Eraser;      // Switch to normal sprite
}