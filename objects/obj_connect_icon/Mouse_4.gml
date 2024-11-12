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
