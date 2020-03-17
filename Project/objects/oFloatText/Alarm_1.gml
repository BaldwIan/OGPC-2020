/// @description color cycle
curCol++;	// cycle color forawrd
if (curCol > array_length_1d(col) - 1) { curCol = 0; }	// loop back through colors

alarm[1] = colCycle;