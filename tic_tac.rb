

class GAME
  @@symbols = ["X", "O"]
  def initialize
    @symbol = "X"
    @space = "3"
    @grid = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    @scores = [0, 0]
  end
  def play
    p "Space? 1-9"
    @space = gets.chomp
    p "Symbol? X or O"
    @symbol = gets.chomp
    if @grid.include?( @space ) == true && @@symbols.include?( @symbol ) && @@symbols.include?( @space ) == false 
      @grid[ @space.to_i - 1 ] = @symbol
    end
    p @grid[0..2]
    p @grid[3..5]
    p @grid[6..8]
    self.win
    return
  end
  def win_message
    @scores[ @@symbols.index( @symbol ) ] += 1
    p "#{@symbol} wins"
    p "Scores   X: #{@scores[0]}   O: #{@scores[1]}"
    return
  end
  def win 
    if @grid[0] == @grid[1] && @grid[1] == @grid[2]
      win_message
    elsif @grid[3] == @grid[4] && @grid[3] == @grid[5]
      win_message
    elsif @grid[6] == @grid[7] && @grid[6] == @grid[8]
      win_message
    elsif @grid[0] == @grid[3] && @grid[0] == @grid[6]
      win_message
    elsif @grid[1] == @grid[4] && @grid[1] == @grid[7]
      win_message
    elsif @grid[2] == @grid[5] && @grid[2] == @grid[8]
      win_message
    elsif @grid[0] == @grid[0] && @grid[4] == @grid[8]
      win_message
    elsif @grid[0] == @grid[2] && @grid[4] == @grid[6]
      win_message
    end
    return
  end 
end

game = GAME.new
game.play
game.play
game.play
