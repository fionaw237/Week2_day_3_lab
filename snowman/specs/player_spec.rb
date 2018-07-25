require("minitest/autorun")
require("minitest/rg")
require_relative("../player")

class PlayerTest < MiniTest::Test

  def setup()

    @player = Player.new("Fiona")

  end

  def test_has_name()
    assert_equal("Fiona", @player.name())
  end

  def test_starts_with_six_lives()
    assert_equal(6, @player.lives())
  end

end
