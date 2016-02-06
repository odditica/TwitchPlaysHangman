///load_stats()
///Loads stats...

var day = current_day;

ini_open("dailystats/" + string(day) + "-" + string(current_month) + "-" + string(current_year) + "/" + string(current_hour) + "/stats.ini");

for (var i = 0; i < 26; i++){
    stats_letterCount[i] = ini_read_real("letterCountWithChanges", "letter_" + chr(i + UNICODE_LOWERCASE_OFFSET), 0);  
}

for (var i = 0; i < 26; i++){
    stats_letterCountWithChanges[i] = ini_read_real("letterCountTotal", "letter_" + chr(i + UNICODE_LOWERCASE_OFFSET), 0);  
}

stats_wordNum = max(0, ini_read_real("other", "totalWords", 0) - 1);

ini_close();

