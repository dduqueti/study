# Given a value V, if we want to make change for V,
# and we have infinite supply of each of the denominations
# in currency, i.e., we have infinite supply of { 1, 2, 5, 10, 20, 50 }
# valued coins/notes.
# What is the minimum number of coins and/or notes needed to make the change?

# Input sample
# 1 2 5 10 20 50
# 93

# Output sample
# [50, 20, 20, 2, 1]

# Greedy approach
# 1. Initialize result as empty.
# 2. Find the largest denomination that is smaller than V.
# 3. Add found denomination to result. Subtract value of found
#    denomination from V.
# 4. If V becomes 0, then print result.
#    Else repeat steps 2 and 3 for new value of V

# If we want to calculate all possibilities we need DP
def min_coins(m, v)
  answer = []

  m.sort!

  (m.size - 1).downto(0).each do |i|
    while(v >= m[i])
      v -= m[i]
      answer << m[i]
    end
  end

  return false if v > 0

  return answer.to_s
end

m = gets.rstrip.split(' ').map(&:to_i)

v = gets.rstrip.to_i

result = min_coins m, v
puts result