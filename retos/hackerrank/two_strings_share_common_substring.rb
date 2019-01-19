#!/bin/ruby

# Given two strings, determine if they share a common substring.
# A substring may be as small as one character.
# For example, the words "a", "and", "art" share the common substring a.
# The words "be" and "cat" do not share a substring.

# Sample input
# 2
# hello
# world
# hi
# world

# Sample output
# YES
# NO

# Complete the two_strings function below.
def two_strings(s1, s2)
  dict = {}
  answer = "NO"

  s1.split('').each do |char|
    dict[char] = 1
  end

  s2.split('').each do |char|
    if dict[char]
      answer = "YES"
      break
    end
  end

  return answer
end

q = gets.to_i

q.times do |q_itr|
    s1 = gets.to_s.rstrip

    s2 = gets.to_s.rstrip

    result = two_strings s1, s2
    puts result
end
