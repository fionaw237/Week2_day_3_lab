require("minitest/autorun")
require("minitest/rg")
require_relative("../player")

class PlayerTest < MiniTest::Test

  def setup()

    @player = Player.new("Merlin")

  end

  def test_has_name()
    assert_equal("Merlin", @player.name())
  end

  def test_starts_with_six_lives()
    assert_equal(6, @player.lives())
  end

  def test_lose_a_life()
    @player.lose_a_life()
    assert_equal(5, @player.lives())
  end

end
