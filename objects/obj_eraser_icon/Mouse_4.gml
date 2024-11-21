/// @description Insert description here
// You can write your code in this editor
global.isEraserMode = !global.isEraserMode; // Toggle eraser mode

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

if(global.is_placing_star){
	global.is_placing_star = false;
	with(obj_star_icon){
		sprite_index = place_star;
	}
}



if (global.isEraserMode) {
    sprite_index = Eraser_highlighted; // Switch to highlighted sprite
} else {
    sprite_index = Eraser;      // Switch to normal sprite
}