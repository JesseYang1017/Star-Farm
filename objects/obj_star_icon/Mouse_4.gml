/// @description Insert description here
// You can write your code in this editor
global.is_placing_star = !global.is_placing_star;

if (global.is_placing_star) {
    sprite_index =place_star_highlighted; // Switch to highlighted sprite
} else {
    sprite_index = place_star;      // Switch to normal sprite
}

if(global.connectStarMode){
	global.connectStarMode = false;
	with(obj_connect_icon){
		sprite_index = DrawLine;
	}
}
if(global.is_pen_mode){
	global.is_pen_mode = false;
	with(obj_pen_icon){
		sprite_index = DrawShape;
	}
}

if(global.isEraserMode){
	global.isEraserMode = false;
	with(obj_eraser_icon){
		sprite_index = Eraser;
	}
}