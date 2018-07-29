class HiddenWord

  attr_reader :word

  def initialize(word)
    @word = word
  end

  def letter_in_word(letter)
    return @word.include?(letter)
  end

  def display_guessed_letters(guessed)
    word_to_show = ""
      for idx in 0...@word.length()
        if guessed.include?(@word[idx])
          word_to_show += @word[idx]
        elsif @word[idx] == " "
          word_to_show += " "
        else
          word_to_show += "*"
        end
      end
    return word_to_show
  end

end
