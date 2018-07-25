class Pub

  attr_reader :name
  attr_accessor :till

  def initialize (name, till, drinks)

    @name = name
    @till = till
    @drinks = drinks
  end

  def drinks_count
    return @drinks.count()
  end

  def sell_drink(drink, customer)
    @drinks.delete(drink)
    add_to_till(drink)
    customer.remove_money_from_wallet(drink)

  end

  def add_to_till(drink)
    @till += drink.price
  end



end
