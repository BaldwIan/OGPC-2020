// Sprite names
box = sTextBox;
frame = sPortraitFrame;
portrait - sPortraits;
nameBox = sNameBox;

// Dimensions of sprites
boxW = sprite_get_width(box);
boxH = sprite_get_height(box);
portW = sprite_get_width(portrait);
portH = sprite_get_height(portrait);
nameBoxW = sprite_get_width(nameBox);
nameBoxH = sprite_get_height(nameBox);

// gui dimensions (set in oManager)
winW = window_get_width();
winH = window_get_height();

// Positions to draw
portX = (winW - boxW - portH);
portY = (winH * 0.98 - portH);

boxX = portX + portW;
boxY = portY;

nameX = portX;
nameY = portY - nameBoxH;
