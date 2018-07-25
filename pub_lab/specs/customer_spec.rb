require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")
require_relative("../customer")

class TestCustomer < MiniTest::Test

  def setup()

  @drink1 = Drink.new("Irn Bru", 0.9)
  @drink2 = Drink.new("Coke", 1.2)
  @drink3 = Drink.new("Rubicon Mango", 1.2)
  @drinks = [@drink1, @drink2, @drink3]
  @customer = Customer.new("Fiona", 10.0)

  end

  def test_has_name()
    assert_equal("Fiona", @customer.name())
  end

  def test_has_price()
    assert_equal(10.0, @customer.wallet())

  end

  def test_remove_money_from_wallet
    @customer.remove_money_from_wallet(@drink1)
    assert_equal(9.1, @customer.wallet)
  end

  

end
