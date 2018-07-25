require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")

class TestDrink < MiniTest::Test

  def setup

  @drink = Drink.new("Irn Bru", 0.9)

  end

  def test_has_name()
    assert_equal("Irn Bru", @drink.name())
  end

  def test_has_price()
    assert_equal(0.9, @drink.price())
  end

end
