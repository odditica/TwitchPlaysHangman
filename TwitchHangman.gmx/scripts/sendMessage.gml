///sendMessage(message, type (optional))
///Send a message to the channel

var message = argument[0];

if (argument_count > 1){
    if (argument[1] == 1){
        message += chr(13) + chr(10);
    }
    if (argument[1] == 2){
        message = "PRIVMSG " + CHANNEL_NAME + " :" + message + chr(13) + chr(10);
    }
    if (argument[1] == 3){
        message = "PRIVMSG " + CHANNEL_NAME + " :/me " + message + chr(13) + chr(10);
    }
}

var tempBuffer = buffer_create(string_length(message), buffer_grow, 1);
buffer_seek(tempBuffer, buffer_seek_start, 0);
buffer_write(tempBuffer, buffer_string, message);
network_send_raw(client, tempBuffer, buffer_get_size(tempBuffer));
buffer_delete(tempBuffer);
