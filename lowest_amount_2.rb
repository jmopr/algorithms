coins = [ [1, 2], [5, 5], [10, 0], [25, 4] ]

def lowest_amount_coins2(amount, coins)
  #first step would be to pick the highest coin value without
  #going over the amount
  total_coins=[]
  total_sum = 0

  until total_sum == amount
    difference = amount - total_sum
    # p difference
    max, index = max_coin(coins, difference)
    if max
      total_coins << max
      coins[index][1] -= 1
    else
      return "No more coins."
    end
    total_sum = total_coins.reduce(:+)
  end
  total_coins
end

# returns the max coin when provided array of coins and the highest possible value
def max_coin(coins, highest_coin)
  current_max = coins.first[1] > 0 ? coins.first.first : nil
  index_max = 0
  coins.each_with_index do |coin, i|
    if coin[0] <= highest_coin && coin[1] > 0
      index_max = i
      current_max = coin[0]
    end
  end
  [current_max, index_max]
end

p lowest_amount_coins2(85, coins)
