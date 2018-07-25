class Customer

  attr_reader :name
  attr_accessor :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def remove_money_from_wallet(drink)
    @wallet -= drink.price
  end


end
