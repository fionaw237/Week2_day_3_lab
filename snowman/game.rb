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

end
