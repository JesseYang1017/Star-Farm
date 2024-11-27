// obj_star_follow_mouse - Create Event
type = "A";
if (type == "A" && obj_map.typeA_count > 0) {
    sprite_index = star;
}
else {
    instance_destroy(); // Destroy if no valid type is set
}
