require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")
require_relative("../customer")
require_relative("../food")

class TestCustomer < MiniTest::Test

  def setup()

  @drink1 = Drink.new("Irn Bru", 0.9, 0.1)
  @drink2 = Drink.new("Coke", 1.2, 2.0)
  @drink3 = Drink.new("Rubicon Mango", 1.2, 5)
  @drinks = [@drink1, @drink2, @drink3]
  @customer = Customer.new("Fiona", 10.0, 32)
  @food = Food.new("Donner Kebab", 2.5, 4)

  end

  def test_has_name()
    assert_equal("Fiona", @customer.name())
  end

  def test_has_price()
    assert_equal(10.0, @customer.wallet())
  end

  def test_has_age()
    assert_equal(32, @customer.age())
  end

  def test_drunkenness_starts_at_zero()
    assert_equal(0.0, @customer.drunkenness())
  end

  def test_remove_money_from_wallet
    @customer.remove_money_from_wallet(@drink1)
    assert_equal(9.1, @customer.wallet)
  end

  def test_drunkenness_goes_up()
    @customer.increase_drunkenness(@drink1)
    assert_equal(0.1, @customer.drunkenness())
  end

  def test_drunkeness_goes_down_after_food
    @customer.increase_drunkenness(@drink3)
    @customer.decrease_drunkenness(@food)
    assert_equal(1.0, @customer.drunkenness)

  end

end
