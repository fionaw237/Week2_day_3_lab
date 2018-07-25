require("minitest/autorun")
require("minitest/rg")
require_relative("../food")

class TestFood < MiniTest::Test

  def setup

    @food = Food.new("Donner Kebab", 2.5, 4)

  end

  def test_has_name()
    assert_equal("Donner Kebab", @food.name())
  end

  def test_has_price()
    assert_equal(2.5, @food.price())
  end

  def test_has_rejuv_level()
    assert_equal(4, @food.rejuv())
  end

  # def test_rejuventation_properties_of_food
  #   assert_equal(1)
  # end
  #

end
