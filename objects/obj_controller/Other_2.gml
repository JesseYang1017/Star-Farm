// Initialize global variables
global.selected_star_type = noone; // No star type selected
global.placing_star = false;      // Placement mode is off initially
global.graph_completed = false;   // False until all nodes are occupied
global.star_icon = noone;         // No star icon is following the mouse

audio_play_sound(Level_2___NO_PERCUSSION, 0, 0, 1.0, undefined, 1.0);

audio_set_master_gain(0, 1);