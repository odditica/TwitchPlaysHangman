///save_data(day, hour)
///Saves game data + stats

var day = current_day;
var hour = current_hour;
if (argument_count > 0)
day = argument[0];
if (argument_count > 1)
hour = argument[1];
userList = ds_list_create();

for (var i = 0; i < array_length_1d(global.users); i++){

    if (!string_count(get_data(i, USER_AT_NAME), ";") && string_length(get_data(i, USER_AT_NAME)) > 2 && string_length(get_data(i, USER_AT_TAGNAME)) > 2){
       ds_list_add(userList, ds_map_write(global.users[i]));   
    } 
}

ini_open("data.ini");
ini_write_string("data", "userdata", ds_list_write(userList));
ini_write_real("save", "best", global.wordBest);
ini_write_real("save", "num", global.wordNum);
ini_close();

////STATS
ini_open("dailystats/" + string(day) + "-" + string(current_month) + "-" + string(current_year) + "/" + string(hour) + "/stats.ini");

for (var i = 0; i < 26; i++){
    ini_write_real("letterCountWithChanges", "letter_" + chr(i + UNICODE_LOWERCASE_OFFSET), stats_letterCount[i]);  
}

for (var i = 0; i < 26; i++){
    ini_write_real("letterCountTotal", "letter_" + chr(i + UNICODE_LOWERCASE_OFFSET), stats_letterCountWithChanges[i]);  
}
ini_write_real("other", "totalWords", stats_wordNum + 1);  
ini_write_real("other", "activePlayers", active_player_count());  

ini_close();

