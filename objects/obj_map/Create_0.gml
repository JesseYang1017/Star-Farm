// obj_map - Create Event
nodes = ds_list_create(); // List of nodes

// Approximate offsets for the map
var screen_width = 5500;
var screen_height = 3200;
var map_width = 1200; // Approximate Pisces layout width
var map_height = 800; // Approximate Pisces layout height
var map_offset_x = (screen_width - map_width) / 2;
var map_offset_y = (screen_height - map_height) / 2;

// Define Pisces constellation nodes
ds_list_add(nodes, {x: map_offset_x + 100, y: map_offset_y + 300, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [1, 2]}); // Node 0
ds_list_add(nodes, {x: map_offset_x + 200, y: map_offset_y + 250, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [0, 3]}); // Node 1
ds_list_add(nodes, {x: map_offset_x + 150, y: map_offset_y + 350, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [0]});    // Node 2
ds_list_add(nodes, {x: map_offset_x + 300, y: map_offset_y + 200, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [1, 4]}); // Node 3
ds_list_add(nodes, {x: map_offset_x + 400, y: map_offset_y + 250, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [3, 5]}); // Node 4
ds_list_add(nodes, {x: map_offset_x + 500, y: map_offset_y + 300, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [4, 6]}); // Node 5
ds_list_add(nodes, {x: map_offset_x + 600, y: map_offset_y + 250, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [5, 7]}); // Node 6
ds_list_add(nodes, {x: map_offset_x + 700, y: map_offset_y + 300, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [6, 8, 9]}); // Node 7
ds_list_add(nodes, {x: map_offset_x + 750, y: map_offset_y + 250, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [7]});       // Node 8
ds_list_add(nodes, {x: map_offset_x + 800, y: map_offset_y + 350, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [7]});       // Node 9

global.graph_completed = false; // Start with graph incomplete

// obj_map - Create Event

function clear_map() {
    // Reset all nodes
    for (var i = 0; i < ds_list_size(nodes); i++) {
        var node = nodes[| i];
        node.occupied = false;
        node.star_type = noone;
        node.violation = "";
    }

    // Destroy all star instances
    with (obj_star) {
        instance_destroy();
    }
    global.graph_completed = false;
    // Optional: Add feedback
    show_debug_message("Map cleared manually.");
}
