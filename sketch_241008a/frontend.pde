 Button startButton;
Button playAgain;
Circle c1, c2, c3, c4, c5, c6, c7, c8, c9, c10;

void drawTitleScreen(){
    fill(255);
    background(color(7, 59, 76));
   
    // title
    textAlign(CENTER, CENTER);
    textSize(55);
    text("SEQUENCE", width / 2, height / 3);
   
    // description
    textSize(25);
    text("Memorize the pattern, and repeat it back", width / 2, height * 0.41);
    startButton = new Button("START", width / 2 - 60, height / 2 - 25, 100, 50, color(238, 240, 242));
    startButton.display();

}
void drawMainScreen(){
    background(color(7, 59, 76));
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(55);
    text("Level: " + sequenceLength, width / 2, height * 0.1);

    if(userStage){
      text("Turn: User", width / 2, height * 0.925);
    }
    else{
       text("Turn: Computer", width / 2, height * 0.925);
    }

    //c1 = new Circle(537, 310, 55, color(255, 209, 102));
    //c2 = new Circle(675, 310, 55, color(6, 214, 160));
    //c3 = new Circle(450, 425, 55, color(17, 138, 178));
    //c4 = new Circle(600, 450, 55, color(40, 194, 255));
    //c5 = new Circle(750, 425, 55, color(239, 71, 111));
    //c6 = new Circle(475, 550, 55, color(6, 214, 160));
    //c7 = new Circle(600, 605, 55, color(239, 71, 111));
    //c8 = new Circle(725, 550, 55, color(17, 138, 178));
   
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
   
    //text("reset", 600, 650);
}


void drawLosingScreen(){
    background(color(7, 59, 76));
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(55);
    text("You Lost!" + sequenceLength, width / 2, height * 0.2);
   
    //playAgain = new Button("Play Again", width / 2 - 60, height / 2 - 25, 100, 50, color(238, 240, 242));
    //playAgain.display();
}



void  mousePressed() {

    if(startButton != null && startButton.isMouseOver()){
        appState = 1;
        computerTurn();
    }
   
    //if(playAgain != null && playAgain.isMouseOver()){
    //    appState = 0;
    //}
   
}
