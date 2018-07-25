require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word")

class HiddenWordTest < Minitest::Test

  def setup()
    @word = HiddenWord.new("dusky")
    @guessed = ["d", "k"]
  end

  def test_has_hidden_word()
    assert_equal("dusky", @word.word())
  end

  def test_letter_appears_in_word__true()
    result = @word.letter_in_word("u")
    assert_equal(true, result)
  end

  def test_letter_appears_in_word__false()
    result = @word.letter_in_word("a")
    assert_equal(false, result)
  end


end
