///user_get_id(name)
///Finds user ID based on name

var findName = argument0;
var idd = -1;

for (var i = 0; i < USERS_NUM; i++){
    if (get_data(i, "name") == findName){
        idd = i;
        break;
    }
}

return idd;
