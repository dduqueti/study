#!/bin/ruby

# Complete the repeatedString function below.
def repeatedString(s, n)
  multiplier = (n / s.length)
  remainder = (n % s.length)
  counter = s.count('a') * multiplier
  counter += s[0..remainder - 1].count('a') if remainder > 0

  counter
end

s = gets.to_s.rstrip

n = gets.to_i

result = repeatedString s, n
puts result

