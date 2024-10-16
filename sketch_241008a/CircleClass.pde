class Circle{
  
    float x, y;   //position of circle
    float r;   // radius
    color circleColor;
    
    Circle(float x, float y, float r, color circleColor){
        this.x = x;
        this.y = y;
        this.r = r;
        this.circleColor = circleColor; 
    }
    
    void display(){
        fill(circleColor);
        noStroke();
        ellipse(x, y, r * 2, r * 2);   
    }
  
}
