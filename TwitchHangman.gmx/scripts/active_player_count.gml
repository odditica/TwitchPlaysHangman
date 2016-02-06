///active_player_count()
///Returns the number of active players

var value = 0;
for (var i = 0; i < USERS_NUM; i++){
    if (get_data(i, "activeTimer") > 0){
        value ++;
    }
}
return value;
