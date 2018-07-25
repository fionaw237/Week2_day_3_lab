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

  def test_guess_letter__not_in_word()
    @game.guess_letter(@word, "m")
    assert_equal(1, @game.guessed_letters_count())
    assert_equal(5, @player.lives())
  end

  def test_guess_letter__in_word()
    @game.guess_letter(@word, "s")
    assert_equal(1, @game.guessed_letters_count())
    assert_equal(6, @player.lives())
  end

  def test_game_lost__true()
    letters_to_guess = ["a", "b", "c", "e", "f", "g"]
    letters_to_guess.each do |letter|
      @game.guess_letter(@word, letter)
    end
    result = @game.is_lost?()
    assert_equal(true, result)
  end

  def test_game_lost__false()
    letters_to_guess = ["a", "b", "c", "d", "f", "g"]
    letters_to_guess.each do |letter|
      @game.guess_letter(@word, letter)
    end
    result = @game.is_lost?()
    assert_equal(false, result)
  end

  def test_game_won__true()
    letters_to_guess = ["d", "u", "s", "k", "y"]
    letters_to_guess.each do |letter|
      @game.guess_letter(@word, letter)
    end
    result = @game.is_won?()
    assert_equal(true, result)
  end

  def test_game_won__false()
    letters_to_guess = ["d", "u", "s", "k", "z"]
    letters_to_guess.each do |letter|
      @game.guess_letter(@word, letter)
    end
    result = @game.is_won?()
    assert_equal(false, result)
  end

end
