
int gameStartTime = 0;
int mathScore = 0;
int mathHighScore = 0;
int num1 = 0;
int num2 = 0;
char operator = '+';
int currentAnswer = 0;
Leaderboard m_leaderboard= new Leaderboard();

void mathsetup(){
//drawMathNumberPad();
for (int i=1; i <= elements.size(); i++) {
    elements.get(i - 1).cButtonText = str(i);
    elements.get(i - 1).display();
}
//for(int i=1; i < elements.size(); i++){
//  elements.get(i - 1).cButtonText = str(i);
//  elements.get(i - 1).display();
//}
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
    _gameState = "MATH_LEADERBOARD";
    return;
  }
  
  textSize(32);
  text("Player: " + playerName, width/2, 50);
  text("Time: " + ceil(timeLeft/1000.0) + "s", width/2, 90);
  text("Score: " + mathScore, width/2, 130);
  
  textSize(48);
  text(num1 + " " + operator + " " + num2 + " = ?", (width/4)-10, height/2);
//displayNumberPad();
    for (int i=1; i <= elements.size(); i++) {
        elements.get(i - 1).display();
    }
}


void mserialEvent(int value){

 if (value >= 1 && value <= 9) {
        if (value == currentAnswer) {
          elements.get(value - 1).circleColor = color(6, 214, 160);  // Green for correct answer
            elements.get(value - 1).display();
            delay(300);
            
            // Reset the circle's color
            elements.get(value - 1).circleColor = s_initColor;
            elements.get(value - 1).display();
          mathScore++;
          generateMathProblem();
        }
        else{
        elements.get(value - 1).circleColor = color(239, 71, 111);  // Red for incorrect answer
            elements.get(value - 1).display();
            delay(300);
            
             // Reset the circle's color
            elements.get(value - 1).circleColor = s_initColor;
            elements.get(value - 1).display();
        
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
