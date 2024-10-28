/******************************************************************************
SEQUENCE MATCHING GAME
******************************************************************************/

import processing.serial.*;

Serial myPort; 
boolean[] sensorTouched = new boolean[12];
int gameLength = 30000;
String _gameState = "MAIN_MENU";  // MAIN_MENU, NAME_ENTRY, MATH_GAME, MEMORY_GAME
String playerName = "";
String selectedGame = "";




void setup (){     

    println(Serial.list());
    myPort = new Serial(this, Serial.list()[0], 115200);
    myPort.bufferUntil('\n');
    size(1200, 800);
    
    // Creates, but does not display, the circles
    c1 = new Circle(450, 200, 55, s_initColor, "");
    c2 = new Circle(600, 200, 55, s_initColor, "");
    c3 = new Circle(750, 200, 55, s_initColor, "");
    c4 = new Circle(450, 350, 55, s_initColor, "");
    c5 = new Circle(600, 350, 55, s_initColor, "");
    c6 = new Circle(750, 350, 55, s_initColor, "");
    c7 = new Circle(450, 500, 55, s_initColor, "");
    c8 = new Circle(600, 500, 55, s_initColor, "");
    c9 = new Circle(750, 500, 55, s_initColor, "");
    c10 = new Circle(600, 650, 55, s_initColor, "RESET");
    
       
    // Add the circles to an array
    elements.add(c1);
    elements.add(c2);
    elements.add(c3);
    elements.add(c4);
    elements.add(c5);
    elements.add(c6);
    elements.add(c7);
    elements.add(c8);
    elements.add(c9);
    elements.add(c10);
    
    mathsetup();
    ssetup();
 
}

void draw() {

    fill(255);
    background(color(7, 59, 76));
    switch(_gameState) {
      case "MAIN_MENU":
          drawMainMenu();
          break;
      case "NAME_ENTRY":
          drawNameEntry();
          break;
      case "MATH_GAME":
          mathsetup();
          mathdraw();
          
          break;
      case "MEMORY_GAME":
    
         sdraw();
         
         break;
         
       case "MATH_LEADERBOARD":
          drawMathLeaderboard();  // Display only the leaderboard
          break;
     }
     
    
     
} 

void drawMainMenu() {
 
    textSize(48);
    text("Brain Training Games", width/2, height/4);
    
    textSize(32);
    text("Press 1: Math Sprint", width/2, height/2);
    text("Press 2: Memory Game", width/2, height/2 + 60);
    
    if (playerName.length() > 0) {
        textSize(24);
        text("Current Player: " + playerName, width/2, height*3/4);
    }
}
void drawNameEntry() {
    println("enter name");
    textSize(48);
    text("Enter Your Name", width/2, height/4);
    
    textSize(32);
    text("Selected Game: " + selectedGame, width/2, height/4 + 60);
    
    // Display current name being entered
    textSize(36);
    text(playerName + "_", width/2, height/2);
    
    textSize(24);
    text("Type your name and press ENTER", width/2, height*3/4);
    text("(Press BACKSPACE to correct)", width/2, height*3/4 + 30);
}



void keyPressed() {
 
  if (_gameState.equals("NAME_ENTRY")) {
      if (key == '\n' || key == '\r') {
          // Enter pressed - start game if name isn't empty
          if (playerName.length() > 0) {
             println(selectedGame);
            if (selectedGame.equals("Math Sprint")) {
                startMathGame();
    
            }
            else {
               println("enter memo");
               startMemoryGame();
            }
        }
    } else if (key == BACKSPACE) {
      // Remove last character
      if (playerName.length() > 0) {
        playerName = playerName.substring(0, playerName.length() - 1);
      }
    } else if (key >= 'A' && key <= 'Z' || key >= 'a' && key <= 'z') {
      // Add letter if name isn't too long
      if (playerName.length() < 10) {
        playerName += key;
      }
    }
  }
}


void serialEvent(Serial myPort) {
  String inString = myPort.readStringUntil('\n');
   println(inString);
  if (inString != null) {
      inString = trim(inString);
      String[] parts = split(inString, ' ');
      
      if (parts.length == 2) {
          int sensorNum = int(parts[0]);
          boolean isTouched = parts[1].equals("touched:");
          
          if (sensorNum >= 0 && sensorNum < 12) {
              sensorTouched[sensorNum] = isTouched;
              
              if (isTouched) {
                  
                  //elements.get(sensorNum).display();
                  handleSensorTouch(sensorNum);
                  //elements.get(sensorNum).circleColor = color(255, 255, 255);
                  //for (Circle c : elements) {
                  //  c.display();
                  //}
              } 
          }
      }
  }
}

void handleSensorTouch(int sensor) {
  println(sensor);
  switch(_gameState) {
    case "MAIN_MENU":
      if (sensor == 1) {
        selectedGame = "Math Sprint";
        _gameState = "NAME_ENTRY";
      } else if (sensor == 2) {
        selectedGame = "Memory Game";
        _gameState = "NAME_ENTRY";
      }
      break;
      
    case "MATH_GAME":
        if (gameLength - (millis() - gameStartTime) <= 0) {
          _gameState = "MATH_LEADERBOARD";
          //if (sensor == 10) {
          //  _gameState = "MAIN_MENU";
          //}
        return;
      } else {mserialEvent(sensor);}
      break;

      
    case "MEMORY_GAME":
        if (sensor >= 1 && sensor <= 9) {
          sserialEvent(sensor);
      }
      
      if(s_appState==0 && sensor==10){
                  s_appState = 1;
        computerTurn();
                }else if(sensor==10){
                
                  
          _gameState = "MAIN_MENU";
        }
      break;
      
      case "MATH_LEADERBOARD":
        if (sensor == 10) {
            _gameState = "MAIN_MENU";  // Return to the main menu
        }
        break;
  }
}

void startMemoryGame() {
    _gameState = "MEMORY_GAME";
    s_appState = 1;
    computerTurn();
}





    

  
 
