class Circle{
  
    float x, y;   //position of circle
    float r;   // radius
    color circleColor;
    String cButtonText;
    
    Circle(float x, float y, float r, color circleColor, String cButtonText){
        this.x = x;
        this.y = y;
        this.r = r;
        this.circleColor = circleColor; 
        this.cButtonText = cButtonText;
    }
    
    void display(){
        fill(circleColor);
        noStroke();
        ellipse(x, y, r * 2, r * 2);   
        textAlign(CENTER, CENTER);
        textSize(r/2);
        fill(255, 255, 255);
        //text(cButtonText, width / 2, height * 0.8 + 10);
        text(cButtonText, x, y);
    }
  
}
