/******************************************************************************
SEQUENCE MATCHING GAME
******************************************************************************/

import processing.serial.*;

int s_appState = 0;
color s_initColor = color(88, 20, 142);
//color s_initColor = color(12, 101, 131);
//Circle c1, c2, c3, c4, c5, c6, c7, c8;

boolean s_userStage = false;
int s_sequenceLength = 1; // goes up for each level
//ArrayList<Circle> elements = new ArrayList<Circle>();
IntList s_currSequence = new IntList(); // to store the sequence
int s_userPosition = 0; // user progress in sequence
int s_sequenceIndex = 0; // Current index of the sequence being displayed
int s_displayFrameCount = 0; // timing of sequence display
Leaderboard s_leaderboard= new Leaderboard();


void ssetup (){    
    bg = loadImage("bg3.png");
    bg.resize(1200, 800);
  //drawNumberPad();
   for (int i=1; i <= elements.size(); i++) {
    elements.get(i - 1).cButtonText = "";
    elements.get(i - 1).display();
   }
    s_currSequence.append(4);
 
}



void sdraw() {
  //bg = loadImage("bg3.png");
  //  bg.resize(1200, 800);
  for (int i=1; i <= elements.size(); i++) {
    elements.get(i - 1).cButtonText = "";
    elements.get(i - 1).display();
   }
 
    if (s_appState == 0){
        //drawTitleScreen();
        
    }
    else if(s_appState == 1){
        //isRunning = true;
        drawMainScreen();
        if (s_userStage == false){
            print("displaying sequence: Sequence length: " + s_currSequence.size());
            displaySequence(s_currSequence);
        }
        
       
   
    }
    else if(s_appState == 2){
        drawLosingScreen();
    }
 
}



void sserialEvent (int wireNumber)
{
       wireNumber = wireNumber - 1; // Convert to zero-indexed

      if (wireNumber == s_currSequence.get(s_userPosition)) {
          elements.get(wireNumber).circleColor = color(255, 209, 102);
          elements.get(wireNumber).display();
          delay(300); // Brief delay to show feedback
          elements.get(wireNumber).circleColor = s_initColor;
          elements.get(wireNumber).display();
          s_userPosition++;

          if (s_userPosition >= s_currSequence.size()) {
              s_userStage = false;
              s_sequenceLength++; // Increase sequence length for the next round
              s_userPosition = 0;
              addNewElementToSequence();
          }
      } else {
          s_appState = 2; // Wrong input, game over
      }
    
           
   }  
 









    

  
 
