coins = [ 1 , 5 , 10, 25 ]

def lowest_amount_coins(amount, coins)
  #first step would be to pick the highest coin value without
  #going over the amount
  total_coins=[]
  total_sum = 0
  until total_sum == amount
    difference = amount - total_sum
    total_coins << max_coin(coins, difference)
    total_sum = total_coins.reduce(:+)
  end
  total_coins
end
#returns the max coin when provided array of coins and the highest possible value
def max_coin(coins, highest_coin)
  current_max = coins.first
  coins.each do |coin|
    unless coin > highest_coin
      current_max = coin
    end
  end
  current_max
end
p lowest_amount_coins(85, coins)
