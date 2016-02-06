///check_command(substr, command);
///Checks for a command in message

var result = false;
var msg = string_upper(argument0);
var cmd = string_upper(argument1);

if ((string_copy(msg, 1, string_length(cmd)) == cmd) && ((string_char_at(msg, string_length(cmd) + 1) = ' ') || (string_length(msg) == string_length(cmd)))){
   result = true;
}

return result;
