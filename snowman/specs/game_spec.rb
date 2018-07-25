require("minitest/autorun")
require("minitest/rg")
require_relative("../game")
require_relative("../player")
require_relative("../hidden_word")

class GameTest < MiniTest::Test

  def setup()
    @player = Player.new("Merlin")
    @word = HiddenWord.new("dusky")
    @game = Game.new(@player, @word)
  end

  def test_has_player()
    assert_equal(Player, @game.player().class())
  end

  def test_has_hidden_word()
    assert_equal(HiddenWord, @game.word().class())
  end

  def test_initially_no_guessed_letters()
    assert_equal(0, @game.guessed_letters_count())
  end

end
