///replace_chars(string, oldChars, newChars)
var oldChars = argument1;
var newChars = argument2;
var str = argument0;
var lng = string_length(oldChars);

for (var i = 0; i < lng; i++){
    str = string_replace_all(str, string_char_at(oldChars, i), string_char_at(newChars, i));
}

return str;
