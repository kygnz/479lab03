//import java.util.Scanner;

int level = 1;

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
