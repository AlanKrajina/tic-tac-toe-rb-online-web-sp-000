WIN_COMBINATIONS = [
  [0,1,2], 
  [3,4,5], 
  [6,7,8], 
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

<<<<<<< HEAD
=======
def move(board, index, current_player = "X")
  board[index] = current_player
end

>>>>>>> 3dde8df603fa4cfe02632c3f6dab377a72ece243
def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

<<<<<<< HEAD

def move(board, index, player )
  board[index] = player
end

=======
>>>>>>> 3dde8df603fa4cfe02632c3f6dab377a72ece243
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
<<<<<<< HEAD
  if valid_move?(board, index) 
    move(board, index, current_player(board)) 
=======
  if valid_move?(board, index)
    move(board, index)
>>>>>>> 3dde8df603fa4cfe02632c3f6dab377a72ece243
    display_board(board)
  else
    turn(board)
  end
end

<<<<<<< HEAD
def current_player(board)
  if turn_count(board) % 2 == 0
    return "X"
  else
    return "O"
  end
end

=======
>>>>>>> 3dde8df603fa4cfe02632c3f6dab377a72ece243
def turn_count(board)
  counter = 0
  board.each do |turn|
   if turn == "X" || turn == "O"
    counter += 1
    end
  end
  return counter
end

<<<<<<< HEAD
=======
def current_player(board)
  if turn_count(board) % 2 == 0
    return "X"
  else
    return "O"
  end
end

>>>>>>> 3dde8df603fa4cfe02632c3f6dab377a72ece243
def won?(board)
  WIN_COMBINATIONS.detect do |combination|
    win1=combination[0]
    win2=combination[1]
    win3=combination[2]
    # looping and saving first 3 numbers in each array to variables using [indexes]
    board[win1] == board[win2] && board[win2] == board[win3] && board[win1] != " "
    # using variables with board array numbers (winning numb) to check if they match
  end  
end

def full?(board)
  board.none? {|i| i==" " }
end

def draw?(board)
<<<<<<< HEAD
  !won?(board) && full?(board) 
=======
  if !won?(board) && full?(board)
    return true
    elsif !won?(board) && !full?(board)
    return false
    elsif won?(board)
    return false
  end  
>>>>>>> 3dde8df603fa4cfe02632c3f6dab377a72ece243
end

def over?(board)
  if won?(board) 
    return true
    elsif draw?(board)
      return true
      elsif full?(board)
        return true
  end
end

def winner(board)
  win_combination=won?(board)
  if win_combination
    winning_location=win_combination[0]
    board[winning_location]
  else
    nil
  end
end

def play(board)
  until over?(board)
  turn(board)
  end
  
  if won?(board)
<<<<<<< HEAD
    puts "Congratulations #{winner(board)}!"
    elsif draw?(board)
      puts "Cat's Game!"
=======
    puts "congratulations!"
    elsif draw?(board)
      puts "draw!"
>>>>>>> 3dde8df603fa4cfe02632c3f6dab377a72ece243
    end
end

