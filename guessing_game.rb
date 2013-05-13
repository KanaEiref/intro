class GuessingGame

  def initialize max_num = 10, round_count = 3
    @actual_number = rand(max_num) + 1
    @round_count = round_count
    @won = false
  end

  def play
    print_header
    play_rounds
    print_results
  end

  private

  attr_reader :actual_number, :round_count

  def print_header
    puts "Welcome to the guessing game."
  end

  def print_results
    if won?
      puts "You win!"
    else
      puts "You lost. The actual number is #{actual_number}."
    end
  end

  def won?
    @won
  end

  def get_guess
    print "What is your guess: "
    gets.to_i
  end

  def correct_guess? guess
    guess == actual_number
  end

  def play_rounds
    @won = round_count.times.detect { play_round }
  end

  def play_round
    if correct_guess? get_guess
      true
    else
      puts "Wrong!"
    end
  end
end

guessing_game = GuessingGame.new
guessing_game.play
