///send_highscore_table()
///Sends leaderboard to chat

var str = "";
var space = "  ";

//14 chars name + 8 space

//create grid and sort 
highscoreGrid = ds_grid_create(2, USERS_NUM);

for (var i = 0; i < USERS_NUM; i++) {
    highscoreGrid[#0, i] = get_data(i, USER_AT_TAGNAME);
    highscoreGrid[#1, i] = get_data(i, USER_AT_SCORE);
}

ds_grid_sort(highscoreGrid, 1, 0);

if (ds_grid_height(highscoreGrid) > 9) {
    ds_grid_resize(highscoreGrid, 2, 9);
}

//
var num = 9;
if (USERS_NUM < 9) {
    num = USERS_NUM;
}

var name = "Ａｂｃｄｅｆｇｈｉｊｋｌｍｎ";
str += "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬";
for (var i = 0; i < num; i++) {
    var name = string_get_bold(highscoreGrid[#0, i]);


    if (string_length(name) > 13) {
        name = string_get_bold(string_copy(name, 1, 13));
    }

    if (string_length(name) < 13) {
        var remain = 13 - string_length(name);

        repeat(remain) {
            name += "．";
        }
    }

    show_debug_message(name);

    var scoreStringSub = string(highscoreGrid[#1, i]);
    var scoreString = "";

    if (string_length(scoreStringSub) <= 8) {
        var remain = 8 - string_length(scoreStringSub);
        repeat(remain) {
            scoreString += "0";
        }
        scoreString += scoreStringSub;

        scoreString = get_wide_numbers(scoreString);

    } else {
        scoreString = get_wide_numbers("99999999");
    }
    str += get_wide_numbers(string(i + 1)) + "．" + name + "．" + scoreString;
}

str += "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬";
sendMessage(str, 3);

ds_grid_destroy(highscoreGrid);
