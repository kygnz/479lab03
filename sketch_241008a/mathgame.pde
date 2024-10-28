
int gameStartTime = 0;
int mathScore = 0;
int mathHighScore = 0;
int num1 = 0;
int num2 = 0;
char operator = '+';
int currentAnswer = 0;
Leaderboard m_leaderboard= new Leaderboard();

void mathsetup(){
drawMathNumberPad();
}


void startMathGame() {
  _gameState = "MATH_GAME";
  mathScore = 0;
  gameStartTime = millis();
  generateMathProblem();
}

void mathdraw(){
  int timeLeft = gameLength - (millis() - gameStartTime);
  
  if (timeLeft <= 0) {
    // Game Over
    textSize(48);
    text("Time's Up!", width/2, height/3);
    text("Score: " + mathScore, width/2, height/2);
    if(mathScore>mathHighScore){
    mathHighScore=mathScore;
    }
    m_leaderboard.addPlayer(playerName, mathScore);
    text("High Score: " + mathHighScore, width/2, height/2 + 60);
    textSize(24);
    text("Touch 10 to return to main menu", width/2, height*3/4);
    m_leaderboard.display(width/2, height*0.8);
    return;
  }
  
  textSize(32);
  text("Player: " + playerName, width/2, 50);
  text("Time: " + ceil(timeLeft/1000.0) + "s", width/2, 90);
  text("Score: " + mathScore, width/2, 130);
  
  textSize(48);
  text(num1 + " " + operator + " " + num2 + " = ?", (width/4)-10, height/2);
displayNumberPad();
}


void mserialEvent(int value){

 if (value >= 1 && value <= 9) {
        if (value == currentAnswer) {
          mathScore++;
          generateMathProblem();
        }
      }
        if (value == 10) {
          _gameState = "MAIN_MENU";
        }
}

void generateMathProblem() {
  num1 = int(random(1, 10));
  num2 = int(random(1, 10));
  
  if (random(1) < 0.5) {
    operator = '+';
    currentAnswer = num1 + num2;
  } else {
    operator = '-';
    if (num2 > num1) {
      int temp = num1;
      num1 = num2;
      num2 = temp;
    }
    currentAnswer = num1 - num2;
  }
  
  if (currentAnswer < 1 || currentAnswer > 9) {
    generateMathProblem();
  }
}
