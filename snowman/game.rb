class Game

  attr_reader :player, :word, :is_won, :is_lost

  def initialize(player, word)
    @player = player
    @word = word
    @guessed_letters = []
    @is_won = false
    @is_lost = false
  end

  def guessed_letters()
    copy = []
    copy.replace(@guessed_letters)
    return copy
  end

  def guessed_letters_count()
    return @guessed_letters.count()
  end

  def guess_letter(word, letter)
    if @guessed_letters.include?(letter)
      puts
      puts "You've already guessed that!"
      puts
      return
    elsif letter.length() == 0 || letter.length() > 1
      puts "Please enter one letter"
    end
    @guessed_letters << letter
    if word.letter_in_word(letter) == false
      @player.lose_a_life()
      unless @player.lives() == 0
        puts
        puts "Not in word - you've lost a life!"
        puts "You have #{@player.lives()} lives left"
        puts
      end
    end
  end

  def is_lost?()
    if @player.lives() == 0
      @is_lost = true
      #puts "islost", @is_lost
    end
    #return @is_lost
  end

  def is_won?()
    if @word.display_guessed_letters(@guessed_letters) == @word.word()
      @is_won = true
    end
    #return @is_won
  end

#print_hidden_word function

end
