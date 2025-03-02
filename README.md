# odin-tic-tac-toe
The Odin Project's Tic Tac Toe in Ruby

Planning the game 

Let's keep planning. That way the code will have fewer logical errors. I come from a writing background and I couldn't write without outlining first or else the writing would be messy. How does this structure look: 

Game class
- instance variables:
-- current_player
-- game over?
-- winner? 
- instance methods: 
-- initialize variables
-- game loop
-- check the GameBoard class for winner
-- prompt for Player class to choose a position 
-- call the GameBoard class to update the board's state
-- call the GameBoard's class to ask for the GameBoard's instance state to display board
-- randomly decide which player goes first
-- deny the move if GameBoard says it's invalid
-- update who's turn it is
-- declare a winner when GameBoard says there's a winner
-- declare game over without a winner when GameBoard says the board is full and no winner
-- ask to play another round 

GameBoard class (tracks board state)
- instance variables: 

-- board state 
--- board positions: 0-8 
--- board positions filled and by what symbol
- instance methods:
-- initialize variables
-- check board state (gameover? if full, empty, winner)
-- set a board position with a game piece (X or O)
-- checks if player's choice is a valid move?
-- gets the board's state to help Game class display board
-- display game board

Player class
- instance variables:
-- player name
-- player piece (X or O) 
- instance methods: 
-- initialize variables
-- get player input
--- verify input is valid, including error handling for invalid input
--- coordinate with GameBoard class to record a position to place a symbol

 main.rb
- instantiate new Game object
- instantiate new GameBoard object
- instantiate 2 new Player objects (variables, player1 and player2)
- create a while loop checking the gameboard's state for gameover?
-- if not game over and Gameboard is empty, request Game object to determine who will go first
-- Game asks Player object for input
-- GameBoard updates state based on Player's input
-- Game checks if winner 
-- GameBoard displays state of the game board positions
-- repeat until a winner
- when there's a winner
-- display which player won
-- display the gameboard   
