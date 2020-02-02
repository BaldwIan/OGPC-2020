// Draw text box
draw_sprite(box, 0, boxX, boxY);

// Draw Portrait Back
draw_sprite(frame, 0, portX, portY);

// Draw Portrait
draw_sprite(portrait, portraitIndex, portX, portY);

// Draw portrait frame
draw_sprite(frame, 1, portX, portY);

// Draw Name box
draw_sprite(nameBox, 0, nameBoxX, nameBoxY);

// TEXT
draw_set_font(font);

// Draw Name
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(nameTextX, nameTextY, name, nameTextCol, nameTextCol, nameTextCol, nameTextCol, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw Text
counter = min(counter + 1, string_length(text[page]));
var substring = string_copy(text[page], 1, counter);

draw_text_ext_color(textX, textY, substring, textH, textMaxW, textCol, textCol, textCol, textCol, 1);
