require_relative 'tic_tac_toe'

class TicTacToeNode
  def initialize(board, next_move_marker, prev_move_pos = nil)
    @board = board
    @next_move_marker = next_move_marker
    @prev_move_pos = prev_move_pos
  end

  def losing_node?(evaluator)
    if @board.over?
      if @board.winner == :o
        return true
      else
        return false
      end
    end
    if @next_move_marker == 
  end

  def winning_node?(evaluator)
  end

  def next_marker
     @next_move_marker == :x ? :o : :x
  end
  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    moves = []
    3.times do |row|
      3.times do |col|
        if @board[[row, col]].empty?
          new_board = @board.dup[[row, col]] = @next_move_marker
          new_node = TicTacToeNode.new(new_board, next_marker, @prev_move_pos)
          moves << new_node

        end
      end
    end
    moves
  end
end
