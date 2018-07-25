class Game

  attr_reader :player, :word

  def initialize(player, word)
    @player = player
    @word = word
    @guessed_letters = []
  end

  def guessed_letters_count()
    return @guessed_letters.count()
  end

  def guess_letter(word, letter)
    @guessed_letters << letter
    if word.letter_in_word(letter) == false
      @player.lose_a_life()
    end
  end

  def is_lost?()
    if @player.lives() == 0
      return true
    else
      return false
    end
  end

  def is_won?()
    if @word.display_guessed_letters(@guessed_letters) == @word.word()
      return true
    else
      return false
    end
  end


end
