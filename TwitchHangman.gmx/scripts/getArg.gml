///getArg(message, startpos, index, type);
var argBegin = 0;
var argEnd = 0;
var argStart = 0;    
var argIndex = 0;       
var finalArg = "";
var input = argument0 + "  ";
var lgth = string_length(input);
var type = argument3;

for (var i = argument1 + 1; i < lgth; i++){

    if (string_char_at(input, i) != " " && !argStart){
        argStart = 1; 
        argBegin = i;   
    } 
    if (string_char_at(input, i) = " " && argStart){   
        argEnd = i;
        if (argIndex == argument2){
            finalArg = string_copy(input, argBegin, argEnd - argBegin);
            show_debug_message("FIN: " + finalArg);
            if (type == 0){               
                if (string_digits(finalArg) != "" && string_letters(finalArg) = ""){
                    return real(finalArg);
                }else{
                    return -1;
                } 
            }
            if (type == 1){
                return finalArg;               
            }
        }else{
            argIndex += 1;
            argStart = 0;
        }
    }         
}
