///@description string wrap
///@param string
///@param max_width

var str = argument0;
var maxW = argument1;

var strLen = string_length(str);
var lastSpace = 1;

var subStr;

for (var i = 1; i < strLen; i++)
{
	subStr = string_copy(str, 1, i);
	
	if (string_char_at(str, i) == " ") { lastSpace = i; }	// Get position of last sapce
	
	if (string_width(subStr) > maxW)
	{
		str = string_delete(str, lastSpace, 1);	// This will make the loop automatically skip over the newline
		str = string_insert("\n", str, lastSpace);
	}
}

return str;
