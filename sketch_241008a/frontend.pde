Button startButton;
Button playAgain;
Circle c1, c2, c3, c4, c5, c6, c7, c8, c9, c10;
ArrayList<Circle> elements = new ArrayList<Circle>();

//void drawTitleScreen(){
//    fill(255);
//    background(color(7, 59, 76));
    
//    // title
//    textAlign(CENTER, CENTER);
//    textSize(55);
//    text("SEQUENCE", width / 2, height / 3);
    
//    // description
//    textSize(25);
//    text("Memorize the pattern, and repeat it back", width / 2, height * 0.41);
//     text("TO START PRESS 10", width / 2, height * 0.51);
//    //startButton = new Button("TO START PRESS 10", width / 2 - 60, height / 2 - 25, 100, 50, color(238, 240, 242)); 
//    //startButton.display();

//}


void drawMainScreen(){
    background(color(7, 59, 76));
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(55);
    text("Level: " + s_sequenceLength, width / 2, height * 0.1);
    if(s_userStage){
      text("Turn: User", width / 2, height * 0.93);
    }
    else{
       text("Turn: Computer", width / 2, height * 0.93);
    }

    //c1 = new Circle(537, 310, 55, color(255, 209, 102));
    //c2 = new Circle(675, 310, 55, color(6, 214, 160));
    //c3 = new Circle(450, 425, 55, color(17, 138, 178));
    //c4 = new Circle(600, 450, 55, color(40, 194, 255));
    //c5 = new Circle(750, 425, 55, color(239, 71, 111));
    //c6 = new Circle(475, 550, 55, color(6, 214, 160));
    //c7 = new Circle(600, 605, 55, color(239, 71, 111));
    //c8 = new Circle(725, 550, 55, color(17, 138, 178));
    //c10 = new Circle(600, 650, 55, s_initColor, "RESET");
displayNumberPad();
}

void displayNumberPad(){

 c1.display();
    c2.display();
    c3.display();
    c4.display();
    c5.display();
    c6.display();
    c7.display();
    c8.display();
     c9.display();
      c10.display();
}


void drawLosingScreen(){
    background(color(7, 59, 76));
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(55);
    text("You Lost! Level " + s_sequenceLength, width / 2, height * 0.2);
        text("Touch 10 to return to main menu", width/2, height*0.3);

    
    //playAgain = new Button("Play Again", width / 2 - 60, height / 2 - 25, 100, 50, color(238, 240, 242));
    //playAgain.display();
}
void drawNumberPad(){
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

}

void drawMathNumberPad(){
 // Creates, but does not display, the circles
    c1 = new Circle(450, 200, 55, s_initColor, "1");
    c2 = new Circle(600, 200, 55, s_initColor, "2");
    c3 = new Circle(750, 200, 55, s_initColor, "3");
    c4 = new Circle(450, 350, 55, s_initColor, "4");
    c5 = new Circle(600, 350, 55, s_initColor, "5");
    c6 = new Circle(750, 350, 55, s_initColor, "6");
    c7 = new Circle(450, 500, 55, s_initColor, "7");
    c8 = new Circle(600, 500, 55, s_initColor, "8");
    c9 = new Circle(750, 500, 55, s_initColor, "9");
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

}


//void  mousePressed() {
//println("mouse");
//    if(startButton != null && startButton.isMouseOver()){
//        s_appState = 1;
//        computerTurn();
//    }
    
//    //if(playAgain != null && playAgain.isMouseOver()){
//    //    s_appState = 0;
//    //}
    
//}
