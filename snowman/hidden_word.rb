class HiddenWord

  attr_reader :word

  def initialize(word)
    @word = word
  end

  def letter_in_word(letter)
    return @word.include?(letter)
  end

end
