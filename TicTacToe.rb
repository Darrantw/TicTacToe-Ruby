#TicTacToe.rb

=begin
module MOVES
  end
=end
class HumanPlayer
  attr_writer :accessor
  
  def initialize
      puts "What's your name?"
      @name = gets
      puts @name
    end

  def name
    self.name = @name
  end
  
  end

  class ComputerPlayer

      def initialize
       
      end
    
    end

  
class TicTacToe
# This line doesn't work yet  attr-writer @one
  def initialize
    @one = 1
    @two = 2
    @three = 3
    @four = 4
    @five = 5
    @six = 6 
    @seven = 7
    @eight = 8
    @nine = 9
    @winner = false
    @turns = 0
    @draw = false
    @p1_choice = 0
    @humans = 1
    @computer
    
    @player1_piece
    
    @player2_piece
    @computer_piece
  end

  def how_many_humans
    puts "1 or 2 human players?"
    @humans = gets.chomp
    if @humans == '1'
      player1 = HumanPlayer.new

      @computer = ComputerPlayer.new
      puts "You will play the computer"
    elsif @humans == '2'
      player1 = HumanPlayer.new
      player2 = HumanPlayer.new
    else
      puts "Sorry, choose 1 or 2 only."
      TicTacToe.how_many_humans
    end
  end


  def assign_pieces
    if @humans == '1'
      @player1_piece = rand(2)
      if @player1_piece ? (@player1_piece = 'X' && @computer_piece = 'O') : (@player1_piece = 'O' && @computer_piece = 'X')
                puts "#{@player1}, you are #{@player1_piece} and the computer is #{@computer_piece}."
      end
    elsif @humans === '2'
      @player1_piece = rand(2)
      if @player1_piece ? ((@player1_piece = 'X') && (@player2_piece = 'O')) : ((@player1_piece = 'O') && (@player2_piece = 'X'))
        puts "#{@player1}, you are #{@player1_piece} and #{@player2}, you are #{@player2_piece}."
      end
    end
  end

  def squares
    {@one => 1, 
    @two => 2,
    @three => 3, 
    @four =>4, 
    @five =>5, 
    @six =>6, 
    @seven => 7, 
    @eight => 8, 
    @nine => 9 }
  end

  def occupancy_check
    if (@p1_choice === 1) && (@one === 'X' || @one === 'O')
     return true
    end
    if (@p1_choice === 2) && (@two === 'X' || @two === 'O')
      return true
     end
     if (@p1_choice === 3) && (@three === 'X' || @three === 'O')
      return true
     end
     if (@p1_choice === 4) && (@four === 'X' || @four === 'O')
      return true
     end
     if (@p1_choice === 5) && (@five === 'X' || @five === 'O')
      return true
     end
     if (@p1_choice === 6) && (@six === 'X' || @six === 'O')
      return true
     end
     if (@p1_choice === 7) && (@seven === 'X' || @seven === 'O')
      return true
     end
     if (@p1_choice === 8) && (@eight === 'X' || @eight === 'O')
      return true
     end
     if (@p1_choice === 9) && (@nine === 'X' || @nine === 'O')
      return true
     end
    end

    def xoccupied
      puts "This square is already taken, please choose an available square instead."
      xmove
      
    end
    
    def ooccupied
      puts "This square is already taken, please choose an available square instead."
      omove
      
    end
  

  def result
    winner = false
    if (@one == 'X'  && @two == 'X'  && @three == 'X' ) || (@four == 'X' && @five == 'X' && @six === 'X') || (@seven === 'X' && @eight === 'X' && @nine === 'X') || (@seven === 'X' && @four === 'X' && @one === 'X') || (@eight === 'X' && @five === 'X' && @two === 'X') || (@nine === 'X' && @six === 'X' && @three === 'X') || (@seven === 'X' && @five === 'X' && @three === 'X') || (@one === 'X' && @five === 'X' && @nine === 'X')
      puts "X is the winner!"
    @winner = true
  elsif (@one == 'O' && @two == 'O' && @three == 'O' ) || (@four == 'O' && @five == 'O' && @six === 'O') || (@seven == 'O' && @eight == 'O' && @nine === 'O') || (@seven == 'O' && @four == 'O' && @one === 'O') || (@eight == 'O' && @five == 'O' && @two === 'O') || (@nine == 'O' && @six == 'O' && @three === 'O') || (@seven == 'O' && @five == 'O' && @three === 'O') || (@one == 'O' && @five == 'O' && @nine === 'O')
      puts "O is the winner!"
      @winner = true
  elsif (@turns == 9 && @winner == false)
      @draw = true
      puts "Draw!"
  end
  end

  def display
    puts "#{@seven} | #{@eight} | #{@nine}"
    puts "#{@four} | #{@five} | #{@six}"
    puts "#{@one} | #{@two} | #{@three}"
  end
# below are not working properly. Typing anything results in first conditional being met.

  def xmove
    puts "Type the number(as a digit) you'd like to make a cross"
    @p1_choice = gets.to_i
    if (@p1_choice < 1 || @p1_choice > 9)
      puts "Please enter a digit 1-9"
      xmove
    end
      if @p1_choice === 1
        occupancy_check ?  xoccupied : @one = 'X' 
      elsif @p1_choice === 2
        occupancy_check ? xoccupied : @two = 'X'
      elsif @p1_choice === 3
        occupancy_check ? xoccupied : @three = 'X'
      elsif @p1_choice == 4
        occupancy_check ? xoccupied : @four = 'X'
      elsif @p1_choice === 5
        occupancy_check ? xoccupied : @five= 'X'
      elsif @p1_choice === 6
        occupancy_check ? xoccupied : @six = 'X'
      elsif @p1_choice == 7
        occupancy_check ? xoccupied : @seven = 'X'
      elsif @p1_choice === 8
        occupancy_check ? xoccupied : @eight = 'X'
      elsif @p1_choice === 9
        occupancy_check ? xoccupied : @nine = 'X'
      end
  end

  def omove
    puts "Type the number you'd like to make a naught"
    @p1_choice = gets.to_i
    if (@p1_choice < 1 || @p1_choice > 9)
      puts "Please enter a digit 1-9"
      omove
    end

    if @p1_choice === 1
      occupancy_check ? ooccupied : @one = 'O'
    elsif @p1_choice === 2
      occupancy_check ? ooccupied : @two = 'O'
    elsif @p1_choice === 3
      occupancy_check ? ooccupied : @three = 'O'   
    elsif @p1_choice == 4
      occupancy_check ? ooccupied : @four = 'O'
    elsif @p1_choice === 5
      occupancy_check ? ooccupied : @five= 'O'
    elsif @p1_choice === 6
      occupancy_check ? ooccupied : @six = 'O'
    elsif @p1_choice == 7
      occupancy_check ? ooccupied : @seven = 'O'
    elsif @p1_choice === 8
      occupancy_check ? ooccupied : @eight = 'O'
    elsif @p1_choice === 9
      occupancy_check ? ooccupied : @nine = 'O'
    end
  end

=begin
 def run
#    player1 = HumanPlayer.new
 
    end
  end
=end

end


 




game = TicTacToe.new
game.how_many_humans
game.assign_pieces


#game.play
#game.run
