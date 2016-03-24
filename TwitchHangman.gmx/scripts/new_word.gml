///new_word(next (optional))
///Chooses a new word

if (argument_count == 1){
   if (argument[0] == 1){
      global.wordNum ++;
      uiWordNumIntensity = 1;
       
      if (global.wordNum > global.wordBest){
         global.wordBest = global.wordNum; 
         uiBestIntensity = 1;
      }
      uiHangmanIntensity = 1;
      global.gameState = GAME_STATE_VOTING;
      
      save_word_stats();
      save_data();
      stats_wordNum ++;  
      nextWord = 0;
   }
}

if ((global.wordNum + 1) % (10 - min(8, floor(global.wordNum / 20))) != 0 || global.wordNum == 0){
   global.word = global.wordList[| irandom(ds_list_size(global.wordList) - 1)];
   wordDifficulty = WORD_DIFFICULTY_NORMAL;
}else{
   global.word = global.wordListHard[| irandom(ds_list_size(global.wordListHard) - 1)];  
   wordDifficulty = WORD_DIFFICULTY_HARD;
}

global.hangmanStage = 0;
hangManFieldFade = 0;
hangManFieldFadeState = 0;

wordMeltFade = 0;
wordMeltFadeState = 0;

hangmanPhase = 10;
hangmanSub = 0;

wordValExtra = 0;

firstLetter = "none";

gameoverDropFadeState = 0;
for (var i = 0; i < 9; i++){
    gameoverDropY[i] = -50 - i * 50;
    gameoverDropVspeed[i] = 0;
}

mainFadeState = 0;
mainFade = 1;

highscoreFadeState = 0;
highscoreFade = 0;

gameoverFadeState = 0;
gameoverFade = 0;

guessUserName = "";

revealedLetters = "";

with (objLetter) 
instance_destroy();

for (var i = 1; i <= string_length(global.word); i++){
    var a = instance_create(0, 0, objLetter);
    a.character = string_char_at(global.word, i);
    a.pos = i;
    if (a.character = " "){
       a.revealed = 1;
    }
}

for (var i = 0; i <= 26; i++){
    letter[i] = ds_list_create();
    letterPos[i] = i;
    letterIntensity[i] = 0;
} 
usedLetters = "";
global.wordVal = get_word_value(global.word);
global.gameState = GAME_STATE_VOTING;
voteTimerActive = 0;
stats_wordTimer = 0;

guessDots = 0;
guessSignSub = 0;
guessSignSpr = -1;

guessUserNameFadeState = 0;
guessUserNameFade = 0;

bottomMessage("VOTING IS OPEN!");
sendMessage("VOTING IS OPEN!", 3);

show_debug_message(global.word);
