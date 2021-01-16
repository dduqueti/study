# Say you have an array for which the ith element is the
# price of a given stock on day i. If you were only permitted to complete
# at most one transaction (i.e., buy one and sell one share of the stock),
# design an algorithm to find the maximum profit.
# Note that you cannot sell a stock before you buy one.

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    min = nil
    profit = 0

    prices.each do |price|
      min = price unless min
      if price < min
        min = price
      elsif price - min > profit
        profit = price - min
      end
    end

    return profit
end

puts max_profit([7,1,5,3,6,4])
puts max_profit([7,6,4,3,1])
puts max_profit([2,4,1])
