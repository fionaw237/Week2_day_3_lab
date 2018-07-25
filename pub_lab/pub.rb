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

    age_check = check_customer_over_18(customer)
    drunk_check = check_drunkenness(customer)

   if  age_check == true && drunk_check == false
      @drinks.delete(drink)
      add_to_till(drink)
      customer.remove_money_from_wallet(drink)
      customer.increase_drunknenness(drink)
    end

  end

  def add_to_till(drink)
    @till += drink.price
  end

  def check_customer_over_18(customer)
    if customer.age >= 18
      return true
    else
      return false
    end
  end

  def check_drunkenness(customer)
    if customer.drunkenness > 4.0
      return true
    else
      return false
    end


  end

end
