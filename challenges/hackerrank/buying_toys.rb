#!/bin/ruby

# Mark and Jane are very happy after having their first child.
# Their son loves toys, so Mark wants to buy some. There are a
# number of different toys lying in front of him, tagged with
# their prices. Mark has only a certain amount to spend, and he
# wants to maximize the number of toys he buys with this money.

# Given a list of prices and an amount to spend, what is the
# maximum number of toys Mark can buy? For example, if  prices [1,2,3,4]
# and Mark has k=7 to spend, he can buy items [1,2,3] for 6, or [3,4] for 7
# units of currency. He would choose the first group of  items.

# Sample input
# k = 7
# [1, 2, 3, 4]

# Sample output
# 3

# Alternative #1: Less operations and memory
# 1. Sort the list
# 2. Start counting items and substract price, return once we
#    cannot buy the next.

# Complete the maximumToys function below.
def maximumToys(prices, k)
  sorted_prices = sort(prices)

  # purchased_amt = 0
  number_of_products = 0

  sorted_prices.each do |price|
    if k >= price
      number_of_products += 1
      k -= price
    end
  end

  number_of_products
end

def sort(list)
  return list if list.size < 2

  pivot = list.last
  pivot_index = list.size - 1

  list.delete_at(pivot_index)

  left = []
  right = []

  list.each do |item|
    if item < pivot
       left << item
    else
       right << item
    end
  end

  sort(left) + [pivot] + sort(right)
end

# Alternative #2
# 1. Go through the list and start adding up the prices
# 2. Count the product if we are able to buy it
# 3. Stop once we don't have enough money to buy the next one

# Complete the maximumToys function below.
# def maximumToys(prices, k)
#   sorted_prices = sort(prices)

#   purchased_amt = 0
#   number_of_products = 0

#   sorted_prices.each do |price|
#     if k >=(purchased_amt + price)
#       number_of_products += 1
#       purchased_amt += price
#     end
#   end

#   number_of_products
# end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

prices = gets.rstrip.split(' ').map(&:to_i)

result = maximumToys prices, k
puts result

