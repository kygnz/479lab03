//import java.util.Scanner;
import java.util.Random;

//int level = 1;

IntList generateSequence(int sequenceLength){
  
    IntList sequence = new IntList(); // to store the sequence
    Random random = new Random();
    int min = 1, max = 8;
    
    // Adds random numbers to the sequence
    for (int i=0; i < sequenceLength; i++){
      int randNumber = random.nextInt(max - min + 1) + min;
      sequence.append(randNumber);  
    }
  
    return sequence;
  
}



void displaySequence(IntList sequence) {
    if (sequenceIndex < sequence.size()) {
        if (frameCount - displayFrameCount > 30) {  // 0.5 seconds per element
            int element = sequence.get(sequenceIndex);
            elements.get(element).circleColor = color(6, 214, 160);
            elements.get(element).display();

            // Reset the circle's color after a short delay
            if (frameCount - displayFrameCount > 60) {  // 1 second total
                elements.get(element).circleColor = initColor;
                elements.get(element).display();

                sequenceIndex++;  // Move to the next element
                displayFrameCount = frameCount;  // Reset frame counter
            }
        }
    } else {
         println("user stage is now true");
        userStage = true;  // Switch to user's turn after sequence is displayed
        sequenceIndex = 0;
    }
}



void computerTurn(){
  
    sequenceIndex = 0; // Reset the index for sequence display
    displayFrameCount = frameCount; // Reset the frame counter
    userStage = false; // Bloc
    //IntList currSequence = generateSequence(sequenceLength);
    
  
}


void addNewElementToSequence() {
    int newElement = int(random(1, elements.size() + 1));  // Random element (0 to 7)
    currSequence.append(newElement - 1);  // Add the new element to the existing sequence
    computerTurn();  // Start the next computer turn
}



///*public class MultiLevelGame {
//    private Scanner scanner;

//    public MultiLevelGame() {
//        scanner = new Scanner(System.in);
//    }
//    public void start() {
//        System.out.println("Welcome to the Multi-Level Game!");
//        for (int level = 1; level <= 10; level++) {
//            playLevel(level);
//        }
//        System.out.println("Congratulations! You've completed all levels!");
//    }
//*/
//    private void playLevel(int level) {
//        switch (level) {
//            case 1:
//                Easy();
//                break;
                
//            case 2:
//                Hard();
//                break;
//            case 3:
//                Impossible();
//                break;

//            default:
//                System.out.println("No more levels available.");//Probably don't need the print statements
//                break;
//        }
//    }

//    private void Easy() {
        
//        System.out.println("Level 1: What is 2 + 2?");
//        int answer = scanner.nextInt();
//        if (answer == 0 /*Use a function called correct which checks to see if you put the correct input */){
//            System.out.println("Correct!");//Probably don't need the print statements
//        } else {
//            System.out.println("Wrong answer. Game over.");//Probably don't need the print statements
//            System.exit(0);
//        }
//    }

//        private void Hard() {
       
//        System.out.println("Level 1: What is 2 + 2?");
//        scanner.nextLine(); // Consume the newline
//        int answer = scanner.nextInt();
//        if (answer == 0 /*Use a function called correct which checks to see if you put the correct input */){
//            System.out.println("Correct!");//Probably don't need the print statements
//        } else {
//            System.out.println("Wrong answer. Game over.");//Probably don't need the print statements
//            System.exit(0);
//        }
//    }
    
//    private void Impossible() {
        
//        System.out.println("Level 1: What is 2 + 2?");
//        scanner.nextLine(); // Consume the newline
//        int answer = scanner.nextInt();
//        if (answer == 0 /*Use a function called correct which checks to see if you put the correct input */){
//            System.out.println("Correct!");//Probably don't need the print statements
//        } else {
//            System.out.println("Wrong answer. Game over.");//Probably don't need the print statements
//            System.exit(0);
//        }
//    }
//   /* 
//   int currentLevel = 1;
//   boolean gameRunning = true;
//   int correctAnswers = 0; // Counter for correct answers
//   int requiredCorrectAnswers = 3; // Number of correct answers needed to proceed

   
//   void checkAnswer(char input) { //Not a char will be int ( random generator
//    if (input == answers[currentLevel - 1].charAt(0)) {
//        correctAnswers++; // Increment correct answer counter
//        if (correctAnswers >= requiredCorrectAnswers) {
//            if (currentLevel < questions.length) {
//                currentLevel++;
//                correctAnswers = 0; // Reset counter for next level
//            } else {
//                gameRunning = false; // End game after last level
//            }
//        }
//    } else {
//        gameRunning = false; // End game on wrong answer
//    }
//}

//void resetGame() {
//    currentLevel = 1; // Reset to the first level
//    correctAnswers = 0; // Reset correct answers counter
//    gameRunning = true; // Set game state to running
//}


//*/
//    public static void main(String[] args) {
//        MultiLevelGame game = new MultiLevelGame();
//        game.start();
//    }
//}
