// Create Event of obj_camera_control

// Initialize zooming variables
zoom_level = 1;          // Starting zoom level (1 = 100%)
zoom_min = 0.25;         // Minimum zoom (50% of original size)
zoom_max = 2;           // Maximum zoom (200% of original size)
zoom_speed = 0.1;       // Speed of zooming
original_width = camera_get_view_width(view_camera[0]);
original_height = camera_get_view_height(view_camera[0]);


// Initialize panning variables
is_dragging = false;    // To check if right mouse button is pressed
drag_start_x = 0;       // Initial X position for drag
drag_start_y = 0;       // Initial Y position for drag
drag_speed = 2;

