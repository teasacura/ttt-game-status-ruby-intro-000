# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8],
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
  board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]] && position_taken?(board, win_combo[0])
  end
end

def full?(board)
  board.none? do |cell|
    cell == "" || cell == " "
  end
end

def draw?(board)
  if won?(board)
    false
  elsif full?(board) == false
    false
  else
    true
  end
end

def over?(board)
  if won?(board)
    true
  elsif full?(board)
    true
  elsif draw?(board)
    true
  else
    false
    end
end

def winner(board)
  if won?(board)
    if position_taken?(board, index) == "X"
      "X"
    else
      "O"
    end
  end
end
