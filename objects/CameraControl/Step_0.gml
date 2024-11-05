// Define the boundaries (you can set these values as needed)
var min_x = 0; // Minimum X coordinate
var max_x = room_width - view_wview[0]; // Maximum X coordinate (room width minus viewport width)
var min_y = 0; // Minimum Y coordinate
var max_y = room_height - view_hview[0]; // Maximum Y coordinate (room height minus viewport height)

// Check for scroll wheel input
if (mouse_wheel_up()) {
    zoom_level += zoom_speed;
}
if (mouse_wheel_down()) {
    zoom_level -= zoom_speed;
}

// Clamp zoom level between minimum and maximum
zoom_level = clamp(zoom_level, zoom_min, zoom_max);

// Calculate the new camera size based on the zoom level
var new_width = original_width / zoom_level;
var new_height = original_height / zoom_level;

// Update the camera view size to implement the zoom effect
camera_set_view_size(view_camera[0], new_width, new_height);

// Update the viewport size for Viewport 0
view_wview[0] = new_width; // Set the width of Viewport 0
view_hview[0] = new_height; // Set the height of Viewport 0

// Handle right-click drag for panning
if (mouse_check_button(mb_right)) {
    if (!is_dragging) {
        // Start dragging
        is_dragging = true;
        drag_start_x = mouse_x; // Store initial mouse position
        drag_start_y = mouse_y; // Store initial mouse position
    } else {
        // Calculate the difference from the starting position
        var dx = mouse_x - drag_start_x; // Change in X
        var dy = mouse_y - drag_start_y; // Change in Y

        // Update the drag start position for the next frame
        drag_start_x = mouse_x; // Reset to current mouse position
        drag_start_y = mouse_y; // Reset to current mouse position
        
        // Calculate new camera position
        var new_camera_x = camera_get_view_x(view_camera[0]) - (dx / drag_speed);
        var new_camera_y = camera_get_view_y(view_camera[0]) - (dy / drag_speed);
        
        // Clamp camera position to defined boundaries
        new_camera_x = clamp(new_camera_x, min_x, max_x);
        new_camera_y = clamp(new_camera_y, min_y, max_y);
        
        // Update the viewport position for Viewport 0
        camera_set_view_pos(view_camera[0], new_camera_x, new_camera_y);
    }
} else {
    // Reset dragging state if the right mouse button is released
    is_dragging = false;
}
