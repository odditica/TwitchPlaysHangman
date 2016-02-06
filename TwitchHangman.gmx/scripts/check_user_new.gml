///check_user_new(name)
///Checks if a user is new...

var userNew = 1;
for (var i = 0; i < USERS_NUM; i++){
    if (get_data(i, "name") == argument0){
       userNew = 0;
    }
}
if (userNew){ 
   global.users[USERS_NUM] = ds_map_create();
   set_data(USERS_NUM - 1, USER_AT_NAME, argument0);     
   set_data(USERS_NUM - 1, USER_AT_ACTIVETIMER, 0);     
   set_data(USERS_NUM - 1, USER_AT_COMMANDTIMER,0); 
   set_data(USERS_NUM - 1, USER_AT_SCORE, 500);     
   set_data(USERS_NUM - 1, USER_AT_TAGNAME, argument0);  
}

return userNew;
