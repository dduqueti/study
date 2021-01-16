# You are given 𝑞 queries in the following form:

# Given three integers 𝑙𝑖, 𝑟𝑖 and 𝑑𝑖, find minimum
# positive integer 𝑥𝑖 such that it is divisible by 𝑑𝑖 and
# it does not belong to the segment [𝑙𝑖,𝑟𝑖].

# Can you answer all the queries?

# Recall that a number 𝑥 belongs to segment [𝑙,𝑟] if 𝑙≤𝑥≤𝑟.

# Input
# The first line contains one integer 𝑞 (1≤𝑞≤500) — the number of queries.

# Then 𝑞 lines follow, each containing a query given in
# the format 𝑙𝑖 𝑟𝑖 𝑑𝑖 (1≤𝑙𝑖≤𝑟𝑖≤109, 1≤𝑑𝑖≤109). 𝑙𝑖, 𝑟𝑖 and 𝑑𝑖 are integers.

# Output
# For each query print one integer: the answer to this query.

# Example
# Input
# 5
# 2 4 2
# 5 10 4
# 3 10 1
# 1 2 3
# 4 6 5

# Output
# 6
# 4
# 1
# 3
# 10

def minimum_integer(queries)
  queries.each do |query|
    query = query.split(' ')

    return 0 unless query.length == 3

    low  = query.first.to_i
    high = query[1].to_i
    div  = query.last.to_i

    puts div < low ? div : high + (div - (high % div))
  end

  return nil
end

# Codeforces required setup
number_of_queries = gets.rstrip.to_i

queries = []

number_of_queries.times do |query|
  queries << gets.rstrip
end

result = minimum_integer queries
puts result
