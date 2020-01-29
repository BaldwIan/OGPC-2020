if (!planting) { exit; }

// Grid info
var cs = cellSize;
var xx = (mouse_x div cs);
var yy = (mouse_y div cs);

xx *= cs;
yy *= cs;

// Draw the crop that is selected at mouse position in grid
draw_sprite(sCropsPicked, selectCrop, xx + (cs / 2), yy + (cs / 2));
