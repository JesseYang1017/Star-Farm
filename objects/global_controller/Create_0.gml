/// @description Insert description here
// You can write your code in this editor


// obj_room_switcher - Create Event
persistent = true;
global.current_room = 0; // Start with room 0 (Pisces)

// obj_room_transition - Create Event
// obj_global_controller - Create Event

global.current_room = 0; // Track the current room
transitioning = false;   // Whether a slide is in progress
direction = 0;           // 1 = right, -1 = left
start_x = 0;             // Starting camera position
end_x = 0;               // Target camera position
current_x = 0;           // Current camera position
slide_speed = 100;       // Speed of the slide (adjust for faster/slower)
target_room = noone;     // Room to switch to after sliding


global.taurus_completed = false;
