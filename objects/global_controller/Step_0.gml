/// @description Insert description here
// You can write your code in this editor
// obj_room_switcher - Step Event

if (keyboard_check_pressed(vk_right)) {
    global.current_room += 1;
    if (global.current_room > 3) { // Wrap to first room after the last
        global.current_room = 0;
    }

    // Go to the corresponding room
    if (global.current_room == 0) room_goto(default_room);
    else if (global.current_room == 1) room_goto(other_room);
    else if (global.current_room == 2) room_goto(virgo_room);
    else if (global.current_room == 3) room_goto(aries_room);
}

if (keyboard_check_pressed(vk_left)) {
    global.current_room -= 1;
    if (global.current_room < 0) { // Wrap to last room when going backward
        global.current_room = 3;
    }

    // Go to the corresponding room
    if (global.current_room == 0) room_goto(default_room);
    else if (global.current_room == 1) room_goto(other_room);
    else if (global.current_room == 2) room_goto(virgo_room);
    else if (global.current_room == 3) room_goto(aries_room);
}
var new_bgm = noone; // Variable to store the next music to play
var completed_count = count_completed_constellations();



// Determine the new background music
if (completed_count == 0) {
    new_bgm = snd_bgm0;
} else if (completed_count == 1) {
    new_bgm = snd_bgm1;
} else if (completed_count == 2) {
    new_bgm = snd_bgm2;
} else if (completed_count >= 3) {
    new_bgm = snd_bgm3;
}

// Change the music only if it's different from the currently playing one
if (global.current_bgm_name != new_bgm) {
    var timestamp = 0;

    // Get the current playback position of the old music
    if (global.current_bgm_name != noone && audio_is_playing(global.current_bgm_name)) {
        timestamp = audio_sound_get_track_position(global.current_bgm);
        show_debug_message("Old music timestamp: " + string(timestamp));
        audio_stop_sound(global.current_bgm_name); // Stop the currently playing music
   } else {
        show_debug_message("Old music is not playing or no sound is set.");
    }

    // Play the new music
    
    audio_sound_set_track_position(new_bgm, timestamp); // Set the playback position
	global.current_bgm = audio_play_sound(new_bgm, 5, true); // Play the new track
    show_debug_message("Setting new music to start at timestamp: " + string(timestamp));

    // Update the currently playing music
    global.current_bgm_name = new_bgm;
}