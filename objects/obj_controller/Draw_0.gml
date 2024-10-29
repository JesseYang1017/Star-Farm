// Draw Event in the controller object

// Draw all stored lines
for (var i = 0; i < array_length(global.lines); i++) {
    var line = global.lines[i];
    draw_line(line[0], line[1], line[2], line[3]);
}
/// @description Insert description here
// You can write your code in this editor
