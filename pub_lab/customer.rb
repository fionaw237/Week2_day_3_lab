class Customer

  attr_reader :name, :age
  attr_accessor :wallet, :drunkenness

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = 0.0
  end

  def remove_money_from_wallet(drink)
    @wallet -= drink.price
  end

  def increase_drunkenness(drink)
    @drunkenness += drink.alcohol_level()
  end

  def decrease_drunkenness(food)
    @drunkenness -= food.rejuv
  end


end
