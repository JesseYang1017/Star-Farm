/// @description Insert description here
// You can write your code in this editor
// obj_map - Create Event
nodes = ds_list_create(); // List of nodes

// Approximate offsets for the map
var screen_width = 1300;
var screen_height =780;
var map_width = 800; // Approximate Pisces layout width
var map_height = 500; // Approximate Pisces layout height
var map_offset_x = (screen_width - map_width) / 2;
var map_offset_y = (screen_height - map_height) / 2;


// Define Pisces constellation nodes with some having 3 connections
ds_list_add(nodes, {x: 100+map_offset_x + 250, y: map_offset_y + 50, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [1, 2]}); // Node 0 - now has 3 connections
ds_list_add(nodes, {x: 100+map_offset_x + 100, y: map_offset_y + 150+50, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [0, 2]}); // Node 1 - now has 3 connections
ds_list_add(nodes, {x: 100+map_offset_x + 360, y: map_offset_y + 130+50, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [0, 1, 5]});       // Node 2
ds_list_add(nodes, {x: 100+map_offset_x + 100, y: map_offset_y + 250+100, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [1, 4]});    // Node 3
ds_list_add(nodes, {x: 100+map_offset_x + 50, y: map_offset_y + 300+100, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [3]}); // Node 4 - now has 3 connections
ds_list_add(nodes, {x: 100+map_offset_x + 310, y: map_offset_y + 200+100, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [2, 6]}); // Node 5 - now has 3 connections
ds_list_add(nodes, {x: 100+map_offset_x + 355, y: map_offset_y + 300+100, occupied: false, star_type: noone, violation: "", violation_timer: 0, connections: [5]});    // Node 6



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

typeA_count = 4;
typeB_count = 3;

