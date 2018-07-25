require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word")

class HiddenWordTest < Minitest::Test

  def setup()
    @word = HiddenWord.new("dusky")
  end

  def test_has_hidden_word()
    assert_equal("dusky", @word.word())
  end


end
