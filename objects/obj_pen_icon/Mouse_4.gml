// Toggle pen mode when clicking the pen icon
global.is_pen_mode = !global.is_pen_mode;

// Disable star placing if pen mode is active, and enable it if pen mode is inactive
//global.is_placing_star = !global.is_pen_mode;

if (global.is_pen_mode) {
    sprite_index = DrawShape_highlighted; // Switch to highlighted sprite
} else {
    sprite_index = DrawShape;      // Switch to normal sprite
}

if(global.connectStarMode){
	global.connectStarMode = false;
	with(obj_connect_icon){
		sprite_index = DrawLine;
	}
}
if(global.isEraserMode){
	global.isEraserMode = false;
	with(obj_eraser_icon){
		sprite_index = Eraser;
	}
}

if(global.is_placing_star){
	global.is_placing_star = false;
	with(obj_star_icon){
		sprite_index = place_star;
	}
}