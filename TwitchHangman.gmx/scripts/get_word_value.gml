///get_word_value(word)
///Gets word value...

var word = argument0;
var character;

var letSum = 0;
for (var i = 1; i <= string_length(word); i++){
    character = string_char_at(word, i);
    letSum += get_letter_value(character) + ceil((ord(character) - UNICODE_UPPERCASE_OFFSET) / (3.276));
}

var revSum = 0;
for (var i = 1; i <= string_length(revealedLetters); i++){
    character = string_char_at(objControl.revealedLetters, i);
    revSum += get_letter_value(character) + ceil((ord(character) - UNICODE_UPPERCASE_OFFSET) / (3.276));
}


return (ceil(letSum * 1.1) - ceil(revSum * 1.05) + wordValExtra);

