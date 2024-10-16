/******************************************************************************
SEQUENCE MATCHING GAME
******************************************************************************/

import processing.serial.*;

Serial myPort; 
int appState = 0;
color initColor = color(12, 101, 131);
//int sequenceLength = 3; // sequence starts at 3 and goes up for each level
//IntList sequence = new IntList(); // to store the sequence
//int userPosition = 0;
//boolean gameOver = false;
//boolean gameWon = false;



void setup (){     

    println(Serial.list());
    myPort = new Serial(this, Serial.list()[0], 115200);
    myPort.bufferUntil('\n');
    size(1200, 900);
   
    
    c1 = new Circle(537, 310, 55, initColor);
    c2 = new Circle(675, 310, 55, initColor);
    c3 = new Circle(450, 425, 55, initColor);
    c4 = new Circle(600, 450, 55, initColor);
    c5 = new Circle(750, 425, 55, initColor);
    c6 = new Circle(475, 550, 55, initColor);
    c7 = new Circle(600, 605, 55, initColor);
    c8 = new Circle(725, 550, 55, initColor);
 
}

void draw() {
    if (appState == 0){
        drawTitleScreen();
    }
    else if(appState == 1){
        
        drawMainScreen();
    
    }
    else if(appState == 2){
        drawLosingScreen();
    }
  
}


void serialEvent (Serial myPort) 
{
    if(appState == 1){
        // get the ASCII string:
        String inString = myPort.readStringUntil('\n');
        println(inString);
      
        if (inString != null) {
          
            if (inString.contains(" touched")){
                String wireNumber = inString.substring(0, inString.indexOf(" touched"));
                println("Wire number: " + wireNumber);
                if (wireNumber.equals("1")){
                    c1.circleColor = color(255, 209, 102);
                    c1.display();
                }
                if (wireNumber.equals("2")){
                    c2.circleColor = color(6, 214, 160);
                    c2.display();
                }
                if (wireNumber.equals("3")){
                    c3.circleColor = color(17, 138, 178);
                    c3.display();
                }
                if (wireNumber.equals("4")){
                    c4.circleColor = color(40, 194, 255);
                    c4.display();
                }
                if (wireNumber.equals("5")){
                    c5.circleColor = color(239, 71, 111);
                    c5.display();
                }
                if (wireNumber.equals("6")){
                    c6.circleColor = color(6, 214, 160);
                    c6.display();
                }
                if (wireNumber.equals("7")){
                    c7.circleColor = color(239, 71, 111);
                    c7.display();
                }
                if (wireNumber.equals("8")){
                    c8.circleColor = color(17, 138, 178);
                    c8.display();
                }
                
            }
          
            if (inString.contains("released")){
                String wireNumber = inString.substring(0, inString.indexOf(" released"));
                println("Wire number: " + wireNumber);
                if (wireNumber.equals("1")){
                    c1.circleColor = color(initColor);
                    c1.display();
                }
                if (wireNumber.equals("2")){
                    c2.circleColor = color(initColor);
                    c2.display();
                }
                if (wireNumber.equals("3")){
                    c3.circleColor = color(initColor);
                    c3.display();
                }
                if (wireNumber.equals("4")){
                    c4.circleColor = color(initColor);
                    c4.display();
                }
                if (wireNumber.equals("5")){
                    c5.circleColor = color(initColor);
                    c5.display();
                }
                if (wireNumber.equals("6")){
                    c6.circleColor = color(initColor);
                    c6.display();
                }
                if (wireNumber.equals("7")){
                    c7.circleColor = color(initColor);
                    c7.display();
                }
                if (wireNumber.equals("8")){
                    c8.circleColor = color(initColor);
                    c8.display();
                }
                
            }
            
        }
    }
    
}



    

  
 
