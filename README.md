# odin-tic-tac-toe
The Odin Project's Tic Tac Toe in Ruby

Planning the game 

Let's keep planning. That way the code will have fewer logical errors. I come from a writing background and I couldn't write without outlining first or else the writing would be messy. How does this structure look: 

Game class
- instance variables:
-- current_player
-- game_over?
-- winner? 
- instance methods: 
-- initialize variables
-- game loop
1. create objects
--- instantiate new GameBoard object
--- instantiate 2 new Player objects (variables, player1 and player2)
--- randomly decide which player goes first
2. run game logic
--- prompt for Player class to choose a position 
--- call the GameBoard class to update the board's state
--- deny the move if GameBoard says it's invalid
--- update who's turn it is
3. check for game over conditions
--- while loop checking the gameboard's state for gameover?
--- declare game over without a winner when GameBoard says the board is full and no winner
--- call the GameBoard's class to ask for the GameBoard's instance state to display board
--- displays state of the game board
4. replay
--- repeat loop until a winner
- when there's a winner
-- display which player won
-- display the gameboard   
-- ask to play another round 

GameBoard class (tracks board state)
- instance variables: 
-- board state 
--- board positions: 0-8 
--- board positions filled and by what symbol
- instance methods:
-- initialize variables
-- gets the board's state to help Game class display board
-- set a board position with a game piece (X or O)
-- check board state for gameover? (if empty, winner, full)
-- checks for empty, then winner, then full states 
-- checks if player's choice is a valid move? (position is available?)

Player class
- instance variables:
-- name
-- symbol (X or O) 
- instance methods: 
-- initialize variables
-- get player input
--- verify input is valid, including error handling for invalid input
---- check valid number (position on gameboard)
--- report to Game class the position to place a symbol

 main.rb
- instantiate new Game object



0 | 1 | 2
----------
3 | 4 | 5
----------
6 | 7 | 8
