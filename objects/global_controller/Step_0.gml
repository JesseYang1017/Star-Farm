/// @description Insert description here
// You can write your code in this editor
// obj_room_switcher - Step Event

if (keyboard_check_pressed(vk_right)) {
    global.current_room += 1;
    if (global.current_room > 2) { // Wrap to first room after the last
        global.current_room = 0;
    }

    // Go to the corresponding room
    if (global.current_room == 0) room_goto(default_room);
    else if (global.current_room == 1) room_goto(other_room);
}

if (keyboard_check_pressed(vk_left)) {
    global.current_room -= 1;
    if (global.current_room < 0) { // Wrap to last room when going backward
        global.current_room = 2;
    }

    // Go to the corresponding room
    if (global.current_room == 0) room_goto(default_room);
    else if (global.current_room == 1) room_goto(other_room);
}
