///win_state()
///Shows leaderboard and sets some alarms

if ((global.wordNum + 1) % 2 == 0){
    if (highscoreFadeState == 0){
       send_highscore_table();
       nextWord = 1;
       if (ds_exists(global.leaderboard, ds_type_grid)){
          ds_grid_destroy(global.leaderboard);
       }
       
       global.leaderboard = ds_grid_create(2, USERS_NUM);
    
       for (var i = 0; i < USERS_NUM; i++){
           global.leaderboard[# 0, i] = get_data(i, USER_AT_TAGNAME); 
           global.leaderboard[# 1, i] = get_data(i, USER_AT_SCORE);
       }    
        
       ds_grid_sort(global.leaderboard, 1, 0);
       
       if (ds_grid_height(global.leaderboard) > 15){
          ds_grid_resize(global.leaderboard, 2, 15);
       } 
    
       highscoreFadeState = 1;
       alarm[5] = sec(10);
    }else{
       highscoreFadeState = 0;  
       alarm[6] = sec(1); 
    }
}else{
     send_highscore_table(); 
     new_word(1); 
}
