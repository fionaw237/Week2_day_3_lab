require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")
require_relative("../customer")
require_relative("../pub")

class TestPub < MiniTest::Test

  def setup
    @drink1 = Drink.new("Irn Bru", 0.9)
    @drink2 = Drink.new("Coke", 1.2)
    @drink3 = Drink.new("Rubicon Mango", 1.2)
    @drinks = [@drink1, @drink2, @drink3]
    @customer = Customer.new("Fiona", 10.0)
    @pub = Pub.new("Weatherspoons", 50.0, @drinks)
  end

  def test_has_name()
    assert_equal("Weatherspoons", @pub.name())
  end

  def test_has_money_in_till()
    assert_equal(50.0, @pub.till())
  end

  def test_has_drinks()
    assert_equal(3, @pub.drinks_count())
  end

  def test_sell_drink_increase_till
    @pub.sell_drink(@drink1, @customer)
    assert_equal(2, @pub.drinks_count())
    assert_equal(50.9, @pub.till)
    assert_equal(9.1, @customer.wallet)
  end




end
