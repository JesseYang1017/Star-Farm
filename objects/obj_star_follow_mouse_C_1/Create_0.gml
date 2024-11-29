/// @description Insert description here
// You can write your code in this editor
type = "C";
if (type == "C" && obj_map_4.typeC_count > 0) {
    sprite_index = fireball;
}
else {
    instance_destroy(); // Destroy if no valid type is set
}