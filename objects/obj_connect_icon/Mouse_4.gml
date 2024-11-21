// obj_connect_icon - Mouse Left Pressed Event
global.connectStarMode = !global.connectStarMode; // Toggle connect star mode


   
if (global.connectStarMode) {
    sprite_index = DrawLine_Highlighted; // Switch to highlighted sprite
} else {
    sprite_index = DrawLine;
	    with (obj_line_controller) {
        draggingLine = false; // Ensure dragging is reset
        firstStar = noone;    // Clear the first star reference
    }// Switch to normal sprite
}
// Reset previous star to avoid lingering connections

if(global.is_placing_star){
	global.is_placing_star = false;
	with(obj_star_icon){
		sprite_index = place_star;
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