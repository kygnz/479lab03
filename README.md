# 479lab03

/* These are just things i thought of but feel free to change anything -kyla */

Order of buttons/wire on the screen:
![IMG_6347](https://github.com/user-attachments/assets/7ed71aac-d750-4834-81ed-57d18db1310b)


  9 will be another functionality button (ideas: difficulty, night/dark mode, "free passes" - if you lose, you can use a pass to repeat the level, saving your score, etc.)
  10 will be the reset button that takes you back to the home screen

### To Do:
- [ ] create a random sequence generator
- [ ] play the sequence on the screen
  - [ ] When the sequence is being played, the user's key presses should not be registered
- [ ] After sequence plays, user repeats it
  - [ ] When the user repeats it, if the user gets one step wrong, it either:
    - [ ] Ends the game
    - [ ] Or if we implement a button that gives three free passes, the user has an option to use their pass
- [ ] When the game ends:
  - [ ] User score will be displayed
  - [ ] Two buttons will display: Play again, or quit
  - [ ] if user selects play again, their score will be saved, to keep track of high score
  - [ ] if they select quit, they will be taken back to their start screen and score data will be reset
