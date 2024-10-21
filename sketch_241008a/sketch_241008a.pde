/******************************************************************************
SEQUENCE MATCHING GAME
******************************************************************************/

import processing.serial.*;

Serial myPort; 
int appState = 0;
color initColor = color(12, 101, 131);

//boolean isRunning = false; // game state
boolean userStage = false;
int sequenceLength = 1; // sequence starts at 3 and goes up for each level
ArrayList<Circle> elements = new ArrayList<Circle>();
//IntList sequence = new IntList(); // to store the sequence
//int userPosition = 0;
//boolean gameOver = false;
//boolean gameWon = false;



void setup (){     

    println(Serial.list());
    myPort = new Serial(this, Serial.list()[0], 115200);
    myPort.bufferUntil('\n');
    size(1200, 900);
   
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
 
}

void draw() {
  
    if (appState == 0){
        drawTitleScreen();
    }
    else if(appState == 1){
        
        //isRunning = true;
        drawMainScreen();
        //computerTurn();
          
        
    
    }
    else if(appState == 2){
        drawLosingScreen();
    }
  
}


void serialEvent (Serial myPort) 
{
    // get the ASCII string:
    String inString = myPort.readStringUntil('\n');
    println(inString);
    
    if(inString != null){
        if(appState == 1){
        
        }
        if (inString.contains(" touched")){
            String wireString = inString.substring(0, inString.indexOf(" touched"));
            int wireNumber = int(wireString);
            Circle circle = elements.get(wireNumber - 1);
            circle.circleColor = color(255, 209, 102);
            circle.display();
        }
        else if (inString.contains("released")){
            String wireString = inString.substring(0, inString.indexOf(" released"));
            int wireNumber = int(wireString);
            Circle circle = elements.get(wireNumber - 1);
            circle.circleColor = color(initColor);
            circle.display();
        }
      
    }
    
}



    

  
 
