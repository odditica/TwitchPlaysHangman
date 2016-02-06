///loadWords(file, list)
///Loads words to game's dictionary...

var file = argument0;
var list = argument1;
var txt = file_text_open_read(file);
var str;

while (!file_text_eof(txt)){
      str = string_upper(file_text_read_string(txt));
      if (string_length(str) < 17  && string_length(str) > 2 && !string_count("-", str)){
          ds_list_add(list, str);    
      }
      file_text_readln(txt);
}
file_text_close(txt);

show_debug_message(ds_list_size(list));
