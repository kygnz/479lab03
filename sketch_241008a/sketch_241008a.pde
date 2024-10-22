/******************************************************************************
SEQUENCE MATCHING GAME
******************************************************************************/

import processing.serial.*;

Serial myPort; 
int appState = 0;
color initColor = color(12, 101, 131);

boolean userStage = false;
int sequenceLength = 1; // goes up for each level
ArrayList<Circle> elements = new ArrayList<Circle>();
IntList currSequence = new IntList(); // to store the sequence
int userPosition = 0; // user progress in sequence
int sequenceIndex = 0; // Current index of the sequence being displayed
int displayFrameCount = 0; // timing of sequence display



void setup (){     

    println(Serial.list());
    //myPort = new Serial(this, Serial.list()[0], 115200);
    //myPort.bufferUntil('\n');
    size(1200, 700);
   
    // Creates, but does not display, the circles
    c1 = new Circle(537, 310, 55, initColor);
    c2 = new Circle(675, 310, 55, initColor);
    c3 = new Circle(450, 425, 55, initColor);
    c4 = new Circle(600, 450, 55, initColor);
    c5 = new Circle(750, 425, 55, initColor);
    c6 = new Circle(475, 550, 55, initColor);
    c7 = new Circle(600, 605, 55, initColor);
    c8 = new Circle(725, 550, 55, initColor);
    
    // Add the circles to an array
    elements.add(c1);
    elements.add(c2);
    elements.add(c3);
    elements.add(c4);
    elements.add(c5);
    elements.add(c6);
    elements.add(c7);
    elements.add(c8);
    
    currSequence.append(4);
 
}

void draw() {
  
    if (appState == 0){
        drawTitleScreen();
    }
    else if(appState == 1){
        //isRunning = true;
        drawMainScreen();
        if (userStage == false){
            print("displaying sequence: Sequence length: " + currSequence.size());
            displaySequence(currSequence);
            //computerTurn();
        }
        
    
    }
    else if(appState == 2){
        drawLosingScreen();
    }
  
}


void serialEvent (Serial myPort) {
    // get the ASCII string:
    String inString = myPort.readStringUntil('\n');
    println(inString);
    
    if(inString != null){
        inString = trim(inString);
        if(appState == 1 && userStage == true){
          
             if (inString.contains("touched")) {
                String wireString = inString.substring(0, inString.indexOf(" touched"));
                int wireNumber = int(wireString) - 1; // Convert to zero-indexed

                if (wireNumber == currSequence.get(userPosition)) {
                    elements.get(wireNumber).circleColor = color(255, 209, 102);
                    elements.get(wireNumber).display();
                    delay(300); // Brief delay to show feedback
                    elements.get(wireNumber).circleColor = initColor;
                    elements.get(wireNumber).display();
                    userPosition++;

                    if (userPosition >= currSequence.size()) {
                        userStage = false;
                        sequenceLength++; // Increase sequence length for the next round
                        userPosition = 0;
                        addNewElementToSequence();
                    }
                } else {
                    appState = 2; // Wrong input, game over
                }
                
             }   
            
        }  
    }  
}








    

  
 
