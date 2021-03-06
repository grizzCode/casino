class Account
  attr_accessor :name
  def initialize
    @bankroll = []
    @name = name
  end
  
  def get_name
    puts "Please enter your username: "
    @name = gets.strip
  end

  def get_cash
    cash = gets.to_f
    @bankroll.push(cash)
    puts "Your starting balance is $#{sprintf("%.2f",@bankroll[0])}."
  end

  def add_money
    # Prompts user to increase their account balance.
    puts "How much would you like to add to your account?"
    amount = gets.to_f
    @bankroll.push(amount)
    
  end

  def sum_bankroll
    # This prints a sum of all items in the array.
    @sum = @bankroll.inject(0) {|result, element|result + element}
    return @sum
  end

  def update_bankroll(dollar_amt)
    @bankroll.push(dollar_amt)
  end

end









