Tic tac toe is a 2 player game played on a 3x3 board. Each player takes turn and markes a square on the board. First player to reach 3 squares in a row, including diagonals, wins. If all 9 squares are marked and no player has 3 squares in a row, then the game is a tie.

1. Display the inital empty 3x3 board
   will it be ASCII code? Asterisks?
2. Ask the user to mark a square, start loop
   row 1: square 1, 2, or 3
     so maybe a1, b1, c1
   row 2: same
3. Computer marks a square
   Using Rand
   Computer needs intelligence to win, not loose
4. Display the updated board state.
  if user/computer pics b2, c3 etc, show a character representing user or computer in that spot
3. Computer marks a square
4. Display the updated board state
5. If winner, display winner
   Cross through?
   Data matrix of winning combinations, array - if a1, b1, c1 then win, if a3, b2, c1 then win, etc
6. If board is full, display tie
   else-if none of the above, and all squares are full, then puts tie
7. If neither winner nor baord is full, go to 2
8. Play again - 'y' or 'n'?
9. If yes, loop to 1
10. If 'n' - Good bye!

Edge cases:
• What I don't know - how will board be displayed?
• How will user select square?
• limit characters to 'x' and 'o'
• display table with prior choices and new choice
• build an array?
