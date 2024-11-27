type = "B";
if (type == "B" && obj_map.typeB_count > 0) {
    sprite_index = star_B;
}
else {
    instance_destroy(); // Destroy if no valid type is set
}
