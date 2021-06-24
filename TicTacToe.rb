#TicTacToe.rb
#Last thing to do: restrict input so that choice ONLY accepts 1-9.#
class HumanPlayer
  attr_accessor :name, :piece, :move
  
  def initialize
    puts "New player created!"
    end

  def name_setter
    puts "Player, enter your name, please:"
    @name = gets.chomp
  end
  
  def name
    @name
  end

  def move(game)
    puts "#{self.name}, type the number(as a digit) you'd like to make a #{self.piece}."
    choice = gets.chomp.to_i
    
    if (((choice.size < 1) || (choice.size > 1)) && ((choice > 9) && (choice < 1)))
      puts "Please enter a digit 1-9"
      move(game) 
    end
  
       
    case choice
    when 1
      if game.chosen_include(1)
        puts "Try again."
         self.move(game)
      else 
         game.one = self.piece
         game.chosen.push(1)
      end
    when 2
      if game.chosen_include(2)
          puts "Try again."
          self.move(game)
      else 
          game.two = self.piece
          game.chosen.push(2)
      end
    when 3
      if game.chosen_include(3)
        puts "Try again."
         self.move(game)
      else 
        game.three = self.piece
         game.chosen.push(3)
      end
    when 4
      if game.chosen_include(4)
          puts "Try again."
          self.move(game)
      else 
          game.four = self.piece
          game.chosen.push(4)
      end
    when 5
      if game.chosen_include(5)
          puts "Try again."
          self.move(game)
      else 
            game.five = self.piece
             game.chosen.push(5)
      end
    when 6
      if game.chosen_include(6)
          puts "Try again."
          self.move(game)
      else 
          game.six = self.piece
          game.chosen.push(6)
      end
    when 7
      if game.chosen_include(7)
          puts "Try again."
          self.move(game)
      else 
          game.seven = self.piece
          game.chosen.push(7)
      end
    when 8
      if game.chosen_include(8)
          puts "Try again."
          self.move(game)
      else 
          game.eight = self.piece
          game.chosen.push(8)
      end
    when 9
      if game.chosen_include(9)
          puts "Try again."
          self.move(game)
      else 
          game.nine = self.piece
          game.chosen.push(9)
      end
    end
  end

  private
  def piece
     @piece
  end

end 

  
class TicTacToe
  attr_accessor :one, :two, :three, :four, :five, :six, :seven, :eight, :nine
  def initialize
    @count = 0
    @one = 1
    @two = 2
    @three = 3 
    @four = 4 
    @five = 5
    @six = 6
    @seven = 7
    @eight = 8 
    @nine = 9 
    @chosen = Array.new   
    end

    def count
      @count
    end

    def one
      @one
    end

    def two
      @two
    end

    def three
      @three
    end

    def four
      @four
    end

    def five
      @five
    end

    def six
      @six
    end

    def seven
      @seven
    end

    def eight
      @eight
    end

    def nine
      @nine
    end

    


  def display
    puts "#{@seven} | #{@eight} | #{@nine}"
    puts "#{@four} | #{@five} | #{@six}"
    puts "#{@one} | #{@two} | #{@three}"
  end

  def chosen
    @chosen
  end

  def chosen_include(num)
    @chosen.include?(num)
  end

  def assign_pieces
      @player1_piece = rand(2)
      @player1_piece == 1 ? (@player1_piece = 'X') && (@player2_piece = 'O') : (@player1_piece = 'O') && (@player2_piece = 'X')
        puts "#{@player1name}, you are #{@player1_piece} and #{@player2name}, you are #{@player2_piece}."
    end

  def player1name(player1)
    @player1name = player1.name
  end

  def player2name(player2)
    @player2name = player2.name
  end

  def player1_piece
    @player1_piece
  end

  def player2_piece
    @player2_piece
  end
  
  def play(player1, player2)
    starter = rand(2)
    starter == 1 ? player1_starts(player1, player2) : player2_starts(player1, player2)
  end

  private 
  def lines
    lines = [@one, @two, @three], [@four, @five, @six], [@seven, @eight, @nine], 
    [@one, @four, @seven], [@two, @five, @eight], [@three, @six, @nine], 
    [@one, @five, @nine], [@three, @five, @seven]
  end

  def win_checker
    for i in lines
      if i == [player1_piece, player1_piece, player1_piece]
        puts "#{@player1name} is the winner."
        @win_checker = 1
      elsif i == [player2_piece, player2_piece, player2_piece]
        puts "#{@player2name} is the winner."
        @win_checker = 1
      end
    end
  end

  def post_move(player)
    display
    win_checker
    @count += 1
    if @count == 9 
      puts "It's a draw."
    end
    
  end

  def player1_starts(player1, player2)
    puts "#{@player1name} has been randomly chosen to go first."
    display
    

    loop do
      player1.move(self)
      post_move(player1)
      break if @win_checker == 1
      break if @count == 9
      player2.move(self)
      post_move(player2)
      break if @win_checker == 1
      break if @count == 9
    end
  end

  def player2_starts(player1, player2)
    puts "#{@player2name} has been randomly chosen to go first."
    display
    count = 0

    loop do
      player2.move(self)
      post_move(player2)
      break if @win_checker == 1
      break if @count == 9
      player1.move(self)
      post_move(player1)
      break if @win_checker == 1
      break if @count == 9
    end
  end

  end

player1 = HumanPlayer.new
player1.name_setter
player2 = HumanPlayer.new
player2.name_setter
game = TicTacToe.new
game.player1name(player1)
game.player2name(player2)
game.assign_pieces
player1.piece = game.player1_piece
player2.piece = game.player2_piece
game.play(player1, player2)