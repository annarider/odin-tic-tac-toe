# odin-tic-tac-toe
The Odin Project's Tic Tac Toe in Ruby

Planning the game 

Let's keep planning. That way the code will have fewer logical errors. I come from a writing background and I couldn't write without outlining first or else the writing would be messy. How does this structure look: 

Game class
- instance variables:
-- who's turn?
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
--- (board positions)
--- Lefttop, Centertop, Righttop
--- LeftCenter, Centercenter, Rightcenter,
--- Leftbottom, Centerbottom, Rightbottom
--- Or should we number these 0 to 8 for each box in the grid?
--- what other board states do we need to track?
- instance methods:
-- initialize variables
-- check board state (full, empty, winner)
-- set a board position with a game piece (X or O)
-- checks if player's choice is a valid move?
-- gets the board's state to help Game class display board

Player class
- instance variables:
-- player name
-- player piece (X or O) 
- instance methods: 
-- initialize variables
-- pick a position to place a piece

 