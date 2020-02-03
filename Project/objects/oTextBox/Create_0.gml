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

textXOffset = 12;
textYOffset = 8;

textX = boxX + textXOffset;
textY = boxY + textYOffset;
nameTextX = nameBoxX + (nameBoxW / 2);
nameTextY = nameBoxY + (nameBoxH / 2);

// Portrait to draw depending on who is talking
portraitIndex = 0;

// Counter for typewriter effect
counter = 0;

// Sound to play while typing characters
voice = sndVoice1;

// Text data
text[0] = "stuff that is displayed here stuff that is displayed here stuff that is displayed here stuff that is displayed here stuff that is displayed here stuff that is displayed here ";
text[1] = "SECOND 2 2 2 2 2 text SECOND 2 2 2 2 2 text SECOND 2 2 2 2 2 text SECOND 2 2 2 2 2 text SECOND 2 2 2 2 2 text SECOND 2 2 2 2 2 text ";
page = 0;	// Index of text array
name = "Name";

textCol = c_black;
nameTextCol = c_black;

font = fntGui_12;

// Vars for defining max width till text wraps
textMaxW = boxW - (2 * textXOffset);
draw_set_font(font);
textH = string_height("I");
