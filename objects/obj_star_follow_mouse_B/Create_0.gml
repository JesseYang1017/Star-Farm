// obj_star_follow_mouse - Create Event
type = "B";
if (type == "A") {
    sprite_index = star;
} else if (type == "B") {
    sprite_index = star_B;
} else {
    instance_destroy(); // Destroy if no valid type is set
}
