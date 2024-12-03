// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information




function count_completed_constellations() {
    var count = 0;
    for (var i = 0; i < ds_list_size(global.constellations); i++) {
        var constellation_name = ds_list_find_value(global.constellations, i);
        var variable_name = constellation_name + "_completed"; // Full variable name
		
		if (!variable_global_exists(variable_name)) {
            show_debug_message(variable_name + " does not exist.");
        }

        // Check if the global variable exists and is true
        if (variable_global_exists(variable_name) && variable_global_get(variable_name)) {
            count++;
        }
    }
    return count;
}