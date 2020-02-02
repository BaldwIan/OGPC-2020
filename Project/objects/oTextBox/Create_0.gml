// Sprite names
box = sTextBox;
frame = sPortraitFrame;
portrait = sPortraits;
nameBox = sNameBox;

// Dimensions of sprites
boxW = sprite_get_width(box);
boxH = sprite_get_height(box);
portW = sprite_get_width(portrait);
portH = sprite_get_height(portrait);
nameBoxW = sprite_get_width(nameBox);
nameBoxH = sprite_get_height(nameBox);

// gui dimensions (set in oManager)
guiW = display_get_gui_width();
guiH = display_get_gui_height();

// Positions to draw
portX = (guiW - boxW - portW) / 2;
portY = (guiH * 0.98 - portH);

boxX = portX + portW;
boxY = portY;

nameBoxX = portX;
nameBoxY = portY - nameBoxH;

// Portrait to draw depending on who is talking
portraitIndex = 0;
