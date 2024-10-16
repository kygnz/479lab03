class Button {
  
    float x, y;
    int buttonWidth, buttonHeight;
    String buttonText;
    
    
    //this.background(color(237, 234, 208)); 
    //color textColor = ;
    int cornerRadius;
    boolean isPressed = false;
    color buttonColor;
    
    // Class constructor
    Button(String buttonText, float x, float y, int buttonWidth, int buttonHeight, color buttonColor){
      
        this.buttonText = buttonText;
        this.x = x;
        this.y = y;
        this.buttonWidth = buttonWidth;
        this.buttonHeight = buttonHeight;
        this.buttonColor = buttonColor;
      
    }
    
    // 81, 111, 163
    void display(){
        fill(buttonColor); 
        noStroke();
        rect(x, y, buttonWidth, buttonHeight, 15);
         
        fill(7, 59, 76);
        textAlign(CENTER, CENTER);
        textSize(20);
        text(buttonText, x + buttonWidth / 2, y + buttonHeight / 2);
 
    }
    
    
    boolean isMouseOver() {
        return mouseX > x && mouseX < x + buttonWidth && mouseY > y && mouseY < y + buttonHeight;
    }
    
    void setColor(color buttonColor){
      this.buttonColor = buttonColor;
    }
    
}
