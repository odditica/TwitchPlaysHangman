///save_word_stats()
///Saves word stats

ini_open("dailystats/" + string(current_day) + "-" + string(current_month) + "-" + string(current_year) + "/" + string(current_hour) + "/stats.ini");
ini_write_string("word_" + string(stats_wordNum), "str", global.word);  
ini_write_real("word_" + string(stats_wordNum), "value", get_word_value(global.word));  
ini_write_real("word_" + string(stats_wordNum), "time", stats_wordTimer / room_speed);  
ini_write_string("word_" + string(stats_wordNum), "finalStatus", global.finalWordStatus);  
ini_write_real("word_" + string(stats_wordNum), "hangmanPhase", hangmanPhase);  
ini_write_string("word_" + string(stats_wordNum), "firstLetter", firstLetter);  
ini_write_real("word_" + string(stats_wordNum), "wordDifficulty", wordDifficulty); //0 - normal | 1 - hard 
ini_close();
global.wordTimer = 0;


