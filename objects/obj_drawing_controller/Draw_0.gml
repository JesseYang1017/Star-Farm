// Draw all line segments stored in the global.lines array
for (var i = 0; i < array_length(global.lines); i++) {
    var line = global.lines[i];
    draw_line(line[0], line[1], line[2], line[3]);
}
